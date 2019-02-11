
package Paws::Route53Resolver::CreateResolverEndpoint;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str', required => 1);
  has Direction => (is => 'ro', isa => 'Str', required => 1);
  has IpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::IpAddressRequest]', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResolverEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::CreateResolverEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::CreateResolverEndpoint - Arguments for method CreateResolverEndpoint on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResolverEndpoint on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method CreateResolverEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResolverEndpoint.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $CreateResolverEndpointResponse =
      $route53resolver->CreateResolverEndpoint(
      CreatorRequestId => 'MyCreatorRequestId',
      Direction        => 'INBOUND',
      IpAddresses      => [
        {
          SubnetId => 'MySubnetId',    # min: 1, max: 32
          Ip       => 'MyIp',          # min: 7, max: 36; OPTIONAL
        },
        ...
      ],
      SecurityGroupIds => [
        'MyResourceId',
        ...                            # min: 1, max: 64
      ],
      Name => 'MyName',                # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',         # OPTIONAL
          Value => 'MyTagValue',       # OPTIONAL
        },
        ...
      ],                               # OPTIONAL
      );

    # Results:
    my $ResolverEndpoint = $CreateResolverEndpointResponse->ResolverEndpoint;

    # Returns a L<Paws::Route53Resolver::CreateResolverEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/CreateResolverEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatorRequestId => Str

A unique string that identifies the request and that allows failed
requests to be retried without the risk of executing the operation
twice. C<CreatorRequestId> can be any unique string, for example, a
date/time stamp.



=head2 B<REQUIRED> Direction => Str

Specify the applicable value:

=over

=item *

C<INBOUND>: Resolver forwards DNS queries to the DNS service for a VPC
from your network or another VPC

=item *

C<OUTBOUND>: Resolver forwards DNS queries from the DNS service for a
VPC to your network or another VPC

=back


Valid values are: C<"INBOUND">, C<"OUTBOUND">

=head2 B<REQUIRED> IpAddresses => ArrayRef[L<Paws::Route53Resolver::IpAddressRequest>]

The subnets and IP addresses in your VPC that you want DNS queries to
pass through on the way from your VPCs to your network (for outbound
endpoints) or on the way from your network to your VPCs (for inbound
resolver endpoints).



=head2 Name => Str

A friendly name that lets you easily find a configuration in the
Resolver dashboard in the Route 53 console.



=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str|Undef]

The ID of one or more security groups that you want to use to control
access to this VPC. The security group that you specify must include
one or more inbound rules (for inbound resolver endpoints) or outbound
rules (for outbound resolver endpoints).



=head2 Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]

A list of the tag keys and values that you want to associate with the
endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResolverEndpoint in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

