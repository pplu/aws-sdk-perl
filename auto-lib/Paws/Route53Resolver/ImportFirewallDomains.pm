
package Paws::Route53Resolver::ImportFirewallDomains;
  use Moose;
  has DomainFileUrl => (is => 'ro', isa => 'Str', required => 1);
  has FirewallDomainListId => (is => 'ro', isa => 'Str', required => 1);
  has Operation => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportFirewallDomains');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::ImportFirewallDomainsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ImportFirewallDomains - Arguments for method ImportFirewallDomains on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportFirewallDomains on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method ImportFirewallDomains.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportFirewallDomains.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $ImportFirewallDomainsResponse = $route53resolver->ImportFirewallDomains(
      DomainFileUrl        => 'MyDomainListFileUrl',
      FirewallDomainListId => 'MyResourceId',
      Operation            => 'REPLACE',

    );

    # Results:
    my $Id            = $ImportFirewallDomainsResponse->Id;
    my $Name          = $ImportFirewallDomainsResponse->Name;
    my $Status        = $ImportFirewallDomainsResponse->Status;
    my $StatusMessage = $ImportFirewallDomainsResponse->StatusMessage;

    # Returns a L<Paws::Route53Resolver::ImportFirewallDomainsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/ImportFirewallDomains>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainFileUrl => Str

The fully qualified URL or URI of the file stored in Amazon Simple
Storage Service (S3) that contains the list of domains to import.

The file must be in an S3 bucket that's in the same Region as your DNS
Firewall. The file must be a text file and must contain a single domain
per line.



=head2 B<REQUIRED> FirewallDomainListId => Str

The ID of the domain list that you want to modify with the import
operation.



=head2 B<REQUIRED> Operation => Str

What you want DNS Firewall to do with the domains that are listed in
the file. This must be set to C<REPLACE>, which updates the domain list
to exactly match the list in the file.

Valid values are: C<"REPLACE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportFirewallDomains in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

