package Paws::EC2::AnalysisRouteTableRoute;
  use Moose;
  has DestinationCidr => (is => 'ro', isa => 'Str', request_name => 'destinationCidr', traits => ['NameInRequest']);
  has DestinationPrefixListId => (is => 'ro', isa => 'Str', request_name => 'destinationPrefixListId', traits => ['NameInRequest']);
  has EgressOnlyInternetGatewayId => (is => 'ro', isa => 'Str', request_name => 'egressOnlyInternetGatewayId', traits => ['NameInRequest']);
  has GatewayId => (is => 'ro', isa => 'Str', request_name => 'gatewayId', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
  has NatGatewayId => (is => 'ro', isa => 'Str', request_name => 'natGatewayId', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has Origin => (is => 'ro', isa => 'Str', request_name => 'origin', traits => ['NameInRequest']);
  has TransitGatewayId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayId', traits => ['NameInRequest']);
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', request_name => 'vpcPeeringConnectionId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AnalysisRouteTableRoute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AnalysisRouteTableRoute object:

  $service_obj->Method(Att1 => { DestinationCidr => $value, ..., VpcPeeringConnectionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AnalysisRouteTableRoute object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationCidr

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DestinationCidr => Str

The destination IPv4 address, in CIDR notation.


=head2 DestinationPrefixListId => Str

The prefix of the AWS service.


=head2 EgressOnlyInternetGatewayId => Str

The ID of an egress-only internet gateway.


=head2 GatewayId => Str

The ID of the gateway, such as an internet gateway or virtual private
gateway.


=head2 InstanceId => Str

The ID of the instance, such as a NAT instance.


=head2 NatGatewayId => Str

The ID of a NAT gateway.


=head2 NetworkInterfaceId => Str

The ID of a network interface.


=head2 Origin => Str

Describes how the route was created. The following are possible values:

=over

=item *

C<CreateRouteTable> - The route was automatically created when the
route table was created.

=item *

C<CreateRoute> - The route was manually added to the route table.

=item *

C<EnableVgwRoutePropagation> - The route was propagated by route
propagation.

=back



=head2 TransitGatewayId => Str

The ID of a transit gateway.


=head2 VpcPeeringConnectionId => Str

The ID of a VPC peering connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
