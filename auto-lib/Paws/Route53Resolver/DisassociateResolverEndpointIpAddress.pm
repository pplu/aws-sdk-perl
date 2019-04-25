
package Paws::Route53Resolver::DisassociateResolverEndpointIpAddress;
  use Moose;
  has IpAddress => (is => 'ro', isa => 'Paws::Route53Resolver::IpAddressUpdate', required => 1);
  has ResolverEndpointId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateResolverEndpointIpAddress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::DisassociateResolverEndpointIpAddressResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::DisassociateResolverEndpointIpAddress - Arguments for method DisassociateResolverEndpointIpAddress on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateResolverEndpointIpAddress on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method DisassociateResolverEndpointIpAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateResolverEndpointIpAddress.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $DisassociateResolverEndpointIpAddressResponse =
      $route53resolver->DisassociateResolverEndpointIpAddress(
      IpAddress => {
        Ip       => 'MyIp',            # min: 7, max: 36; OPTIONAL
        IpId     => 'MyResourceId',    # min: 1, max: 64; OPTIONAL
        SubnetId => 'MySubnetId',      # min: 1, max: 32; OPTIONAL
      },
      ResolverEndpointId => 'MyResourceId',

      );

    # Results:
    my $ResolverEndpoint =
      $DisassociateResolverEndpointIpAddressResponse->ResolverEndpoint;

# Returns a L<Paws::Route53Resolver::DisassociateResolverEndpointIpAddressResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/DisassociateResolverEndpointIpAddress>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IpAddress => L<Paws::Route53Resolver::IpAddressUpdate>

The IPv4 address that you want to remove from a resolver endpoint.



=head2 B<REQUIRED> ResolverEndpointId => Str

The ID of the resolver endpoint that you want to disassociate an IP
address from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateResolverEndpointIpAddress in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

