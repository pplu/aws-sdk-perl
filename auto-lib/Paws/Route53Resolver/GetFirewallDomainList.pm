
package Paws::Route53Resolver::GetFirewallDomainList;
  use Moose;
  has FirewallDomainListId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFirewallDomainList');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::GetFirewallDomainListResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::GetFirewallDomainList - Arguments for method GetFirewallDomainList on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFirewallDomainList on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method GetFirewallDomainList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFirewallDomainList.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $GetFirewallDomainListResponse = $route53resolver->GetFirewallDomainList(
      FirewallDomainListId => 'MyResourceId',

    );

    # Results:
    my $FirewallDomainList = $GetFirewallDomainListResponse->FirewallDomainList;

    # Returns a L<Paws::Route53Resolver::GetFirewallDomainListResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/GetFirewallDomainList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FirewallDomainListId => Str

The ID of the domain list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFirewallDomainList in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

