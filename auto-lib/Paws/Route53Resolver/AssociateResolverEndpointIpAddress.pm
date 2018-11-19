
package Paws::Route53Resolver::AssociateResolverEndpointIpAddress;
  use Moose;
  has IpAddress => (is => 'ro', isa => 'Paws::Route53Resolver::IpAddressUpdate', required => 1);
  has ResolverEndpointId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateResolverEndpointIpAddress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::AssociateResolverEndpointIpAddressResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::AssociateResolverEndpointIpAddress - Arguments for method AssociateResolverEndpointIpAddress on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateResolverEndpointIpAddress on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method AssociateResolverEndpointIpAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateResolverEndpointIpAddress.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $AssociateResolverEndpointIpAddressResponse =
      $route53resolver->AssociateResolverEndpointIpAddress(
      IpAddress => {
        Ip       => 'MyIp',            # min: 7, max: 36; OPTIONAL
        IpId     => 'MyResourceId',    # min: 1, max: 64; OPTIONAL
        SubnetId => 'MySubnetId',      # min: 1, max: 32; OPTIONAL
      },
      ResolverEndpointId => 'MyResourceId',

      );

    # Results:
    my $ResolverEndpoint =
      $AssociateResolverEndpointIpAddressResponse->ResolverEndpoint;

# Returns a L<Paws::Route53Resolver::AssociateResolverEndpointIpAddressResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/AssociateResolverEndpointIpAddress>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IpAddress => L<Paws::Route53Resolver::IpAddressUpdate>

Either the IPv4 address that you want to add to a resolver endpoint or
a subnet ID. If you specify a subnet ID, Resolver chooses an IP address
for you from the available IPs in the specified subnet.



=head2 B<REQUIRED> ResolverEndpointId => Str

The ID of the resolver endpoint that you want to associate IP addresses
with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateResolverEndpointIpAddress in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

