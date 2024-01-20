package Paws::Credential::InstanceProfileV2;
  use JSON::MaybeXS;
  use Moose;
  use DateTime::Format::ISO8601;
  with 'Paws::Credential';

  has metadata_url => (
    is => 'ro',
    isa => 'Str',
    default => 'http://169.254.169.254/latest/meta-data/iam/security-credentials/'
  );

  has token_url => (
    is => 'ro',
    isa => 'Str',
    default => 'http://169.254.169.254/latest/api/token'
  );

  has timeout => (is => 'ro', isa => 'Int', default => 1);

  has ua => (
    is => 'ro',
    lazy => 1,
    default => sub {
      my $self = shift;
      use HTTP::Tiny;
      HTTP::Tiny->new(
        verify_SSL => 1,
        agent => 'AWS Perl SDK',
        timeout => $self->timeout,
      );
    }
  );

  has expiration => (
    is => 'rw',
    isa => 'Int',
    default => sub { 0 }
  );

  has actual_creds => (is => 'rw', default => sub { {} });

  sub access_key {
    my $self = shift;
    $self->_refresh;
    $self->actual_creds->{AccessKeyId};
  }

  sub secret_key {
    my $self = shift;
    $self->_refresh;
    $self->actual_creds->{SecretAccessKey};
  }

  sub session_token {
    my $self = shift;
    $self->_refresh;
    $self->actual_creds->{Token};
  }

  #TODO: Raise exceptions if HTTP get didn't return success
  sub _refresh {
    my $self = shift;

    return if $self->expiration - 240 >= time;

    my $ua = $self->ua;
    my $r = $ua->put( $self->token_url, { headers => { 'X-aws-ec2-metadata-token-ttl-seconds' => '21600' } } );
    return unless $r->{success};
    return unless $r->{content};

    my $token = $r->{content};
    my $options = { headers => { 'X-aws-ec2-metadata-token' => $token } };

    $r = $ua->get( $self->metadata_url, $options );
    return unless $r->{success};
    return unless $r->{content};

    $r = $ua->get( $self->metadata_url . $r->{content}, $options );
    return unless $r->{success};

    my $json = eval { decode_json($r->{content}) };
    if ($@) { die "Error in JSON from metadata URL" }

    $self->actual_creds($json);
    $self->expiration(DateTime::Format::ISO8601->parse_datetime($json->{Expiration})->epoch);
  }

  no Moose;
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::InstanceProfileV2

=head1 SYNOPSIS

  use Paws::Credential::InstanceProfileV2;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::InstanceProfile->new(
      metadata_url => 'http://localhost:8000/security-credentials',
      timeout => 5,
    )
  });

=head1 DESCRIPTION

The InstanceProfileV2 credential provider is used to call retrieve AWS credentials from instances running on AWS

When running on an instance in AWS, if said instance has a Role attached to it (also named InstanceProfile), Paws
can retrieve short-term credentials (and refresh them when needed) from the AWS provided "metadata service"
using IMDSv2 approach.

=head2 metadata_url: Str

The section in the ini file where credentials will be looked up:

=head2 metadata_url: Str

URL for client to fetch token from

=head2 timetout: Int

Number of seconds to wait before timinig out a connection to the metadata service. It defaults to 1 second, as
the metadata service is almost local, and very fast responding. Note that if set too high, and the metadata
service is not present (not running on an AWS instance), the connection has to time out

=head2 ua

A user agent that has a C<get> method. Defaults to HTTP::Tiny

=cut
