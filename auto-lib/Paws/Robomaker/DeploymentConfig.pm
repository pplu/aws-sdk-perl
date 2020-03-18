package Paws::Robomaker::DeploymentConfig;
  use Moose;
  has ConcurrentDeploymentPercentage => (is => 'ro', isa => 'Int', request_name => 'concurrentDeploymentPercentage', traits => ['NameInRequest']);
  has DownloadConditionFile => (is => 'ro', isa => 'Paws::Robomaker::S3Object', request_name => 'downloadConditionFile', traits => ['NameInRequest']);
  has FailureThresholdPercentage => (is => 'ro', isa => 'Int', request_name => 'failureThresholdPercentage', traits => ['NameInRequest']);
  has RobotDeploymentTimeoutInSeconds => (is => 'ro', isa => 'Int', request_name => 'robotDeploymentTimeoutInSeconds', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DeploymentConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::DeploymentConfig object:

  $service_obj->Method(Att1 => { ConcurrentDeploymentPercentage => $value, ..., RobotDeploymentTimeoutInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::DeploymentConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ConcurrentDeploymentPercentage

=head1 DESCRIPTION

Information about a deployment configuration.

=head1 ATTRIBUTES


=head2 ConcurrentDeploymentPercentage => Int

  The percentage of robots receiving the deployment at the same time.


=head2 DownloadConditionFile => L<Paws::Robomaker::S3Object>

  The download condition file.


=head2 FailureThresholdPercentage => Int

  The percentage of deployments that need to fail before stopping
deployment.


=head2 RobotDeploymentTimeoutInSeconds => Int

  The amount of time, in seconds, to wait for deployment to a single
robot to complete. Choose a time between 1 minute and 7 days. The
default is 5 hours.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

