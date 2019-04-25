package Paws::Robomaker::Robot;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', request_name => 'architecture', traits => ['NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has FleetArn => (is => 'ro', isa => 'Str', request_name => 'fleetArn', traits => ['NameInRequest']);
  has GreenGrassGroupId => (is => 'ro', isa => 'Str', request_name => 'greenGrassGroupId', traits => ['NameInRequest']);
  has LastDeploymentJob => (is => 'ro', isa => 'Str', request_name => 'lastDeploymentJob', traits => ['NameInRequest']);
  has LastDeploymentTime => (is => 'ro', isa => 'Str', request_name => 'lastDeploymentTime', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::Robot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::Robot object:

  $service_obj->Method(Att1 => { Architecture => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::Robot object:

  $result = $service_obj->Method(...);
  $result->Att1->Architecture

=head1 DESCRIPTION

Information about a robot.

=head1 ATTRIBUTES


=head2 Architecture => Str

  The architecture of the robot.


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the robot.


=head2 CreatedAt => Str

  The time, in milliseconds since the epoch, when the robot was created.


=head2 FleetArn => Str

  The Amazon Resource Name (ARN) of the fleet.


=head2 GreenGrassGroupId => Str

  The Greengrass group associated with the robot.


=head2 LastDeploymentJob => Str

  The Amazon Resource Name (ARN) of the last deployment job.


=head2 LastDeploymentTime => Str

  The time of the last deployment.


=head2 Name => Str

  The name of the robot.


=head2 Status => Str

  The status of the robot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

