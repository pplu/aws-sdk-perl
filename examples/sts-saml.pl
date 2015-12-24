#!/usr/bin/env perl

use v5.16.2;
use warnings;
use Config::INI::Reader;
use Config::INI::Writer;
use IO::Prompter;
use LWP::Authen::Negotiate;
use LWP::UserAgent;
use MIME::Base64;
use Path::Tiny;
use Paws;
use Paws::Credential::AssumeRoleWithSAML;
use Text::Table::Tiny 0.04 'generate_table';
use URI;
use XML::XPath;

use syntax 'try';

my $aws_conf_dir   = path($ENV{HOME}, '.aws');
my $saml_conf_file = $aws_conf_dir->child('saml.ini');
my $aws_creds_file = $aws_conf_dir->child('credentials');

my $conf = Config::INI::Reader->read_file($saml_conf_file);
my $domain = $conf->{_}->{domain} // die "No default domain is set in $saml_conf_file";
my $region = $conf->{_}->{region} // die "No default region is set in $saml_conf_file";

my $idpentryurl = URI->new($conf->{_}->{adfs_uri})
  or die "Unable to get ADFS uri from $saml_conf_file";

my $ua = LWP::UserAgent->new(
    keep_alive => 1,
    agent      => 'Mozilla/5.0',  # needed for ADFS
    cookie_jar => { file => $aws_conf_dir->child('cookies') }, # needed for ADFS
    ssl_opts   => { verify_hostname => 1 },
);

# First try with Negotiate/GSS
my $res = $ua->get($idpentryurl);
die $res->status_line unless $res->is_success;

my $html = XML::XPath->new($res->decoded_content);
# should always be the first element
my $saml_encoded = $html->find('/html/body/form/input[@name="SAMLResponse"]')->shift->getAttribute('value');
my $saml = decode_base64($saml_encoded);

# Parse the returned assertion and extract the authorized roles
my %aws_roles;
my $xp    = XML::XPath->new($saml);
my $nodes = $xp->findnodes(
    '//samlp:Response/Assertion/AttributeStatement/Attribute[@Name="https://aws.amazon.com/SAML/Attributes/Role"]/AttributeValue'
);
foreach my $node ($nodes->get_nodelist) {
    my ($principle, $role)       = split ',', $node->string_value;
    my (undef,      $short_role) = split '/', $role;
    if ($aws_roles{$short_role}) {
        say "There are two roles with the same name - $short_role";
        say $aws_roles{$short_role}->{role};
        say $role;
        die "Bailing out!";
    }
    $aws_roles{$short_role} = {principle => $principle, role => $role};
}

my $num_roles = scalar keys %aws_roles;
my $short_role;

if ($num_roles == 0) {
    die "Could not find any roles\n";
} elsif ($num_roles > 1) {
    my @accounts;
    $short_role = prompt 'Choose role...',
      -menu => [sort (keys %aws_roles)],
      '>';
} else {
    my @roles = keys %aws_roles;
    $short_role = shift @roles;
}

printf "Attempting to assume principle [%s] - role [%s]\n",
  $aws_roles{$short_role}->{principle}, $aws_roles{$short_role}->{role};

my $creds = Paws::Credential::AssumeRoleWithSAML->new(
    PrincipalArn  => $aws_roles{$short_role}->{principle},
    RoleArn       => $aws_roles{$short_role}->{role},
    SAMLAssertion => $saml_encoded,
    sts_region    => $region,
);

my $config = {};
if ($aws_creds_file->is_file) {
    $config = Config::INI::Reader->read_file($aws_creds_file);
}

my $profile = lc $short_role;
try {
    $config->{$profile} = {
        region                => $region,
        aws_access_key_id     => $creds->access_key,
        aws_secret_access_key => $creds->secret_key,
        aws_session_token     => $creds->session_token,
    };
} catch(Paws::Exception $e) {
    die sprintf "FATAL: %s - %s\n", $e->code, $e->message;
} catch($e) {
    die "FATAL: failed to assume role: $e\n";
}

say "Success!";

Config::INI::Writer->write_file($config, $aws_creds_file);

my $rows = [
    [qw/Creds Expiration Region Profile/],
    [$aws_creds_file, $creds->expiration, $region, $profile]];

say generate_table(rows => $rows, header_row => 1);

say 'To use this credential call the Paws CLI with $ENV{AWS_DEFAULT_PROFILE} set';
say "(e.g. AWS_DEFAULT_PROFILE=$profile paws EC2 --region $region DescribeInstances)";

=head1 DESCRIPTION

This example will create session credentials using L<Paws::Credential::AssumeRoleWithSAML>.
It assumes you are using Microsoft ADFS and that you have a valid Kerberos ticket.

=head1 SEE ALSO
Converted from a python script:
https://blogs.aws.amazon.com/security/post/Tx1LDN0UBGJJ26Q/How-to-Implement-Federated-API-and-CLI-Access-Using-SAML-2-0-and-AD-FS
