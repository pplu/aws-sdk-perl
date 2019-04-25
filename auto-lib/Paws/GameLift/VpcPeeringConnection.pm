package Paws::GameLift::VpcPeeringConnection;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str');
  has GameLiftVpcId => (is => 'ro', isa => 'Str');
  has IpV4CidrBlock => (is => 'ro', isa => 'Str');
  has PeerVpcId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::GameLift::VpcPeeringConnectionStatus');
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::VpcPeeringConnection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::VpcPeeringConnection object:

  $service_obj->Method(Att1 => { FleetId => $value, ..., VpcPeeringConnectionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::VpcPeeringConnection object:

  $result = $service_obj->Method(...);
  $result->Att1->FleetId

=head1 DESCRIPTION

Represents a peering connection between a VPC on one of your AWS
accounts and the VPC for your Amazon GameLift fleets. This record may
be for an active peering connection or a pending connection that has
not yet been established.

=over

=item *

CreateVpcPeeringAuthorization

=item *

DescribeVpcPeeringAuthorizations

=item *

DeleteVpcPeeringAuthorization

=item *

CreateVpcPeeringConnection

=item *

DescribeVpcPeeringConnections

=item *

DeleteVpcPeeringConnection

=back


=head1 ATTRIBUTES


=head2 FleetId => Str

  Unique identifier for a fleet. This ID determines the ID of the Amazon
GameLift VPC for your fleet.


=head2 GameLiftVpcId => Str

  Unique identifier for the VPC that contains the Amazon GameLift fleet
for this connection. This VPC is managed by Amazon GameLift and does
not appear in your AWS account.


=head2 IpV4CidrBlock => Str

  CIDR block of IPv4 addresses assigned to the VPC peering connection for
the GameLift VPC. The peered VPC also has an IPv4 CIDR block associated
with it; these blocks cannot overlap or the peering connection cannot
be created.


=head2 PeerVpcId => Str

  Unique identifier for a VPC with resources to be accessed by your
Amazon GameLift fleet. The VPC must be in the same region where your
fleet is deployed. Look up a VPC ID using the VPC Dashboard
(https://console.aws.amazon.com/vpc/) in the AWS Management Console.
Learn more about VPC peering in VPC Peering with Amazon GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).


=head2 Status => L<Paws::GameLift::VpcPeeringConnectionStatus>

  Object that contains status information about the connection. Status
indicates if a connection is pending, successful, or failed.


=head2 VpcPeeringConnectionId => Str

  Unique identifier that is automatically assigned to the connection
record. This ID is referenced in VPC peering connection events, and is
used when deleting a connection with DeleteVpcPeeringConnection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

