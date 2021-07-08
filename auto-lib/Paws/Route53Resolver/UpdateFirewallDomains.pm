
package Paws::Route53Resolver::UpdateFirewallDomains;
  use Moose;
  has Domains => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has FirewallDomainListId => (is => 'ro', isa => 'Str', required => 1);
  has Operation => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFirewallDomains');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::UpdateFirewallDomainsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateFirewallDomains - Arguments for method UpdateFirewallDomains on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFirewallDomains on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method UpdateFirewallDomains.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFirewallDomains.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $UpdateFirewallDomainsResponse = $route53resolver->UpdateFirewallDomains(
      Domains => [
        'MyFirewallDomainName', ...    # min: 1, max: 255
      ],
      FirewallDomainListId => 'MyResourceId',
      Operation            => 'ADD',

    );

    # Results:
    my $Id            = $UpdateFirewallDomainsResponse->Id;
    my $Name          = $UpdateFirewallDomainsResponse->Name;
    my $Status        = $UpdateFirewallDomainsResponse->Status;
    my $StatusMessage = $UpdateFirewallDomainsResponse->StatusMessage;

    # Returns a L<Paws::Route53Resolver::UpdateFirewallDomainsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/UpdateFirewallDomains>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domains => ArrayRef[Str|Undef]

A list of domains to use in the update operation.

Each domain specification in your domain list must satisfy the
following requirements:

=over

=item *

It can optionally start with C<*> (asterisk).

=item *

With the exception of the optional starting asterisk, it must only
contain the following characters: C<A-Z>, C<a-z>, C<0-9>, C<->
(hyphen).

=item *

It must be from 1-255 characters in length.

=back




=head2 B<REQUIRED> FirewallDomainListId => Str

The ID of the domain list whose domains you want to update.



=head2 B<REQUIRED> Operation => Str

What you want DNS Firewall to do with the domains that you are
providing:

=over

=item *

C<ADD> - Add the domains to the ones that are already in the domain
list.

=item *

C<REMOVE> - Search the domain list for the domains and remove them from
the list.

=item *

C<REPLACE> - Update the domain list to exactly match the list that you
are providing.

=back


Valid values are: C<"ADD">, C<"REMOVE">, C<"REPLACE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFirewallDomains in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

