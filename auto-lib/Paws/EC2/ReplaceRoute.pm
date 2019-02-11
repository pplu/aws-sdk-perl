
package Paws::EC2::ReplaceRoute;
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCidrBlock' );
  has DestinationIpv6CidrBlock => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationIpv6CidrBlock' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EgressOnlyInternetGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'egressOnlyInternetGatewayId' );
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayId' );
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' );
  has NatGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'natGatewayId' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkInterfaceId' );
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeTableId' , required => 1);
  has TransitGatewayId => (is => 'ro', isa => 'Str');
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcPeeringConnectionId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceRoute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceRoute - Arguments for method ReplaceRoute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplaceRoute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ReplaceRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplaceRoute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
   # To replace a route
   # This example replaces the specified route in the specified table table. The
   # new route matches the specified CIDR and sends the traffic to the specified
   # virtual private gateway.
    $ec2->ReplaceRoute(
      {
        'DestinationCidrBlock' => '10.0.0.0/16',
        'GatewayId'            => 'vgw-9a4cacf3',
        'RouteTableId'         => 'rtb-22574640'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ReplaceRoute>

=head1 ATTRIBUTES


=head2 DestinationCidrBlock => Str

The IPv4 CIDR address block used for the destination match. The value
that you provide must match the CIDR of an existing route in the table.



=head2 DestinationIpv6CidrBlock => Str

The IPv6 CIDR address block used for the destination match. The value
that you provide must match the CIDR of an existing route in the table.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EgressOnlyInternetGatewayId => Str

[IPv6 traffic only] The ID of an egress-only internet gateway.



=head2 GatewayId => Str

The ID of an internet gateway or virtual private gateway.



=head2 InstanceId => Str

The ID of a NAT instance in your VPC.



=head2 NatGatewayId => Str

[IPv4 traffic only] The ID of a NAT gateway.



=head2 NetworkInterfaceId => Str

The ID of a network interface.



=head2 B<REQUIRED> RouteTableId => Str

The ID of the route table.



=head2 TransitGatewayId => Str

The ID of a transit gateway.



=head2 VpcPeeringConnectionId => Str

The ID of a VPC peering connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplaceRoute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

