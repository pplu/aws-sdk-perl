package Paws::Robomaker::RobotDeployment;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has DeploymentFinishTime => (is => 'ro', isa => 'Str', request_name => 'deploymentFinishTime', traits => ['NameInRequest']);
  has DeploymentStartTime => (is => 'ro', isa => 'Str', request_name => 'deploymentStartTime', traits => ['NameInRequest']);
  has FailureCode => (is => 'ro', isa => 'Str', request_name => 'failureCode', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Str', request_name => 'failureReason', traits => ['NameInRequest']);
  has ProgressDetail => (is => 'ro', isa => 'Paws::Robomaker::ProgressDetail', request_name => 'progressDetail', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::RobotDeployment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::RobotDeployment object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::RobotDeployment object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a robot deployment.

=head1 ATTRIBUTES


=head2 Arn => Str

  The robot deployment Amazon Resource Name (ARN).


=head2 DeploymentFinishTime => Str

  The time, in milliseconds since the epoch, when the deployment
finished.


=head2 DeploymentStartTime => Str

  The time, in milliseconds since the epoch, when the deployment was
started.


=head2 FailureCode => Str

  The robot deployment failure code.


=head2 FailureReason => Str

  A short description of the reason why the robot deployment failed.


=head2 ProgressDetail => L<Paws::Robomaker::ProgressDetail>

  Information about how the deployment is progressing.


=head2 Status => Str

  The status of the robot deployment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

