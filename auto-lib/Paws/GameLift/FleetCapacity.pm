# Generated by default/object.tt
package Paws::GameLift::FleetCapacity;
  use Moose;
  has FleetArn => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has InstanceCounts => (is => 'ro', isa => 'Paws::GameLift::EC2InstanceCounts');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::FleetCapacity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::FleetCapacity object:

  $service_obj->Method(Att1 => { FleetArn => $value, ..., Location => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::FleetCapacity object:

  $result = $service_obj->Method(...);
  $result->Att1->FleetArn

=head1 DESCRIPTION

Current resource capacity settings in a specified fleet or location.
The location value might refer to a fleet's remote location or its home
Region.

B<Related actions>

DescribeFleetCapacity | DescribeFleetLocationCapacity |
UpdateFleetCapacity

=head1 ATTRIBUTES


=head2 FleetArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to a GameLift fleet resource and uniquely identifies
it. ARNs are unique across all Regions. Format is
C<arn:aws:gamelift:E<lt>regionE<gt>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912>.


=head2 FleetId => Str

A unique identifier for the fleet associated with the location.


=head2 InstanceCounts => L<Paws::GameLift::EC2InstanceCounts>

The current instance count and capacity settings for the fleet
location.


=head2 InstanceType => Str

The EC2 instance type that is used for all instances in a fleet. The
instance type determines the computing resources in use, including CPU,
memory, storage, and networking capacity. See Amazon EC2 Instance Types
(http://aws.amazon.com/ec2/instance-types/) for detailed descriptions.


=head2 Location => Str

The fleet location for the instance count information, expressed as an
AWS Region code, such as C<us-west-2>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

