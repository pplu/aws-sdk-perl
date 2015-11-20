package Paws::CodeDeploy::DeploymentInfo;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', xmlname => 'applicationName', request_name => 'applicationName', traits => ['Unwrapped','NameInRequest']);
  has CompleteTime => (is => 'ro', isa => 'Str', xmlname => 'completeTime', request_name => 'completeTime', traits => ['Unwrapped','NameInRequest']);
  has CreateTime => (is => 'ro', isa => 'Str', xmlname => 'createTime', request_name => 'createTime', traits => ['Unwrapped','NameInRequest']);
  has Creator => (is => 'ro', isa => 'Str', xmlname => 'creator', request_name => 'creator', traits => ['Unwrapped','NameInRequest']);
  has DeploymentConfigName => (is => 'ro', isa => 'Str', xmlname => 'deploymentConfigName', request_name => 'deploymentConfigName', traits => ['Unwrapped','NameInRequest']);
  has DeploymentGroupName => (is => 'ro', isa => 'Str', xmlname => 'deploymentGroupName', request_name => 'deploymentGroupName', traits => ['Unwrapped','NameInRequest']);
  has DeploymentId => (is => 'ro', isa => 'Str', xmlname => 'deploymentId', request_name => 'deploymentId', traits => ['Unwrapped','NameInRequest']);
  has DeploymentOverview => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentOverview', xmlname => 'deploymentOverview', request_name => 'deploymentOverview', traits => ['Unwrapped','NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', request_name => 'description', traits => ['Unwrapped','NameInRequest']);
  has ErrorInformation => (is => 'ro', isa => 'Paws::CodeDeploy::ErrorInformation', xmlname => 'errorInformation', request_name => 'errorInformation', traits => ['Unwrapped','NameInRequest']);
  has IgnoreApplicationStopFailures => (is => 'ro', isa => 'Bool', xmlname => 'ignoreApplicationStopFailures', request_name => 'ignoreApplicationStopFailures', traits => ['Unwrapped','NameInRequest']);
  has Revision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation', xmlname => 'revision', request_name => 'revision', traits => ['Unwrapped','NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', xmlname => 'startTime', request_name => 'startTime', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeploymentInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::DeploymentInfo object:

  $service_obj->Method(Att1 => { ApplicationName => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::DeploymentInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationName

=head1 DESCRIPTION

Information about a deployment.

=head1 ATTRIBUTES


=head2 ApplicationName => Str

  The application name.


=head2 CompleteTime => Str

  A timestamp indicating when the deployment was completed.


=head2 CreateTime => Str

  A timestamp indicating when the deployment was created.


=head2 Creator => Str

  How the deployment was created:

=over

=item * user: A user created the deployment.

=item * autoscaling: Auto Scaling created the deployment.

=back



=head2 DeploymentConfigName => Str

  The deployment configuration name.


=head2 DeploymentGroupName => Str

  The deployment group name.


=head2 DeploymentId => Str

  The deployment ID.


=head2 DeploymentOverview => L<Paws::CodeDeploy::DeploymentOverview>

  A summary of the deployment status of the instances in the deployment.


=head2 Description => Str

  A comment about the deployment.


=head2 ErrorInformation => L<Paws::CodeDeploy::ErrorInformation>

  Information about any error associated with this deployment.


=head2 IgnoreApplicationStopFailures => Bool

  If true, then if the deployment causes the ApplicationStop deployment
lifecycle event to fail to a specific instance, the deployment will not
be considered to have failed to that instance at that point and will
continue on to the BeforeInstall deployment lifecycle event.

If false or not specified, then if the deployment causes the
ApplicationStop deployment lifecycle event to fail to a specific
instance, the deployment will stop to that instance, and the deployment
to that instance will be considered to have failed.


=head2 Revision => L<Paws::CodeDeploy::RevisionLocation>

  Information about the location of application artifacts that are stored
and the service to retrieve them from.


=head2 StartTime => Str

  A timestamp indicating when the deployment began deploying to the
deployment group.

Note that in some cases, the reported value of the start time may be
later than the complete time. This is due to differences in the clock
settings of various back-end servers that participate in the overall
deployment process.


=head2 Status => Str

  The current state of the deployment as a whole.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

