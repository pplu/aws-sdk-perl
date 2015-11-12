package Paws::EC2::Route;
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', xmlname => 'destinationCidrBlock', traits => ['Unwrapped']);
  has DestinationPrefixListId => (is => 'ro', isa => 'Str', xmlname => 'destinationPrefixListId', traits => ['Unwrapped']);
  has GatewayId => (is => 'ro', isa => 'Str', xmlname => 'gatewayId', traits => ['Unwrapped']);
  has InstanceId => (is => 'ro', isa => 'Str', xmlname => 'instanceId', traits => ['Unwrapped']);
  has InstanceOwnerId => (is => 'ro', isa => 'Str', xmlname => 'instanceOwnerId', traits => ['Unwrapped']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', xmlname => 'networkInterfaceId', traits => ['Unwrapped']);
  has Origin => (is => 'ro', isa => 'Str', xmlname => 'origin', traits => ['Unwrapped']);
  has State => (is => 'ro', isa => 'Str', xmlname => 'state', traits => ['Unwrapped']);
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', xmlname => 'vpcPeeringConnectionId', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Route

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Route object:

  $service_obj->Method(Att1 => { DestinationCidrBlock => $value, ..., VpcPeeringConnectionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Route object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationCidrBlock

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DestinationCidrBlock => Str

  The CIDR block used for the destination match.


=head2 DestinationPrefixListId => Str

  The prefix of the AWS service.


=head2 GatewayId => Str

  The ID of a gateway attached to your VPC.


=head2 InstanceId => Str

  The ID of a NAT instance in your VPC.


=head2 InstanceOwnerId => Str

  The AWS account ID of the owner of the instance.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 Origin => Str

  Describes how the route was created.

=over

=item * C<CreateRouteTable> indicates that route was automatically
created when the route table was created.

=item * C<CreateRoute> indicates that the route was manually added to
the route table.

=item * C<EnableVgwRoutePropagation> indicates that the route was
propagated by route propagation.

=back



=head2 State => Str

  The state of the route. The C<blackhole> state indicates that the
route's target isn't available (for example, the specified gateway
isn't attached to the VPC, or the specified NAT instance has been
terminated).


=head2 VpcPeeringConnectionId => Str

  The ID of the VPC peering connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
