# Generated from default/object.tt
package Paws::Robomaker::DeploymentConfig;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::Robomaker::Types qw/Robomaker_S3Object/;
  has ConcurrentDeploymentPercentage => (is => 'ro', isa => Int);
  has DownloadConditionFile => (is => 'ro', isa => Robomaker_S3Object);
  has FailureThresholdPercentage => (is => 'ro', isa => Int);
  has RobotDeploymentTimeoutInSeconds => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FailureThresholdPercentage' => {
                                                 'type' => 'Int'
                                               },
               'RobotDeploymentTimeoutInSeconds' => {
                                                      'type' => 'Int'
                                                    },
               'DownloadConditionFile' => {
                                            'type' => 'Robomaker_S3Object',
                                            'class' => 'Paws::Robomaker::S3Object'
                                          },
               'ConcurrentDeploymentPercentage' => {
                                                     'type' => 'Int'
                                                   }
             },
  'NameInRequest' => {
                       'RobotDeploymentTimeoutInSeconds' => 'robotDeploymentTimeoutInSeconds',
                       'FailureThresholdPercentage' => 'failureThresholdPercentage',
                       'DownloadConditionFile' => 'downloadConditionFile',
                       'ConcurrentDeploymentPercentage' => 'concurrentDeploymentPercentage'
                     }
}
;
    return $Params_map;
  }


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


=head2 DownloadConditionFile => Robomaker_S3Object

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

