package Paws::GameLift::VpcPeeringAuthorization;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has ExpirationTime => (is => 'ro', isa => 'Str');
  has GameLiftAwsAccountId => (is => 'ro', isa => 'Str');
  has PeerVpcAwsAccountId => (is => 'ro', isa => 'Str');
  has PeerVpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::VpcPeeringAuthorization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::VpcPeeringAuthorization object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., PeerVpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::VpcPeeringAuthorization object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Represents an authorization for a VPC peering connection between the
VPC for an Amazon GameLift fleet and another VPC on an account you have
access to. This authorization must exist and be valid for the peering
connection to be established. Authorizations are valid for 24 hours
after they are issued.

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


=head2 CreationTime => Str

  Time stamp indicating when this authorization was issued. Format is a
number expressed in Unix time as milliseconds (for example
"1469498468.057").


=head2 ExpirationTime => Str

  Time stamp indicating when this authorization expires (24 hours after
issuance). Format is a number expressed in Unix time as milliseconds
(for example "1469498468.057").


=head2 GameLiftAwsAccountId => Str

  Unique identifier for the AWS account that you use to manage your
Amazon GameLift fleet. You can find your Account ID in the AWS
Management Console under account settings.


=head2 PeerVpcAwsAccountId => Str

  


=head2 PeerVpcId => Str

  Unique identifier for a VPC with resources to be accessed by your
Amazon GameLift fleet. The VPC must be in the same region where your
fleet is deployed. Look up a VPC ID using the VPC Dashboard
(https://console.aws.amazon.com/vpc/) in the AWS Management Console.
Learn more about VPC peering in VPC Peering with Amazon GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

