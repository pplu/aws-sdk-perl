package Paws::CodeDeploy::DeploymentInfo;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', xmlname => 'applicationName', request_name => 'applicationName', traits => ['Unwrapped','NameInRequest']);
  has AutoRollbackConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AutoRollbackConfiguration', xmlname => 'autoRollbackConfiguration', request_name => 'autoRollbackConfiguration', traits => ['Unwrapped','NameInRequest']);
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
  has RollbackInfo => (is => 'ro', isa => 'Paws::CodeDeploy::RollbackInfo', xmlname => 'rollbackInfo', request_name => 'rollbackInfo', traits => ['Unwrapped','NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', xmlname => 'startTime', request_name => 'startTime', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
  has UpdateOutdatedInstancesOnly => (is => 'ro', isa => 'Bool', xmlname => 'updateOutdatedInstancesOnly', request_name => 'updateOutdatedInstancesOnly', traits => ['Unwrapped','NameInRequest']);
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

  $service_obj->Method(Att1 => { ApplicationName => $value, ..., UpdateOutdatedInstancesOnly => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::DeploymentInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationName

=head1 DESCRIPTION

Information about a deployment.

=head1 ATTRIBUTES


=head2 ApplicationName => Str

  The application name.


=head2 AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>

  Information about the automatic rollback configuration associated with
the deployment.


=head2 CompleteTime => Str

  A timestamp indicating when the deployment was complete.


=head2 CreateTime => Str

  A timestamp indicating when the deployment was created.


=head2 Creator => Str

  The means by which the deployment was created:

=over

=item *

user: A user created the deployment.

=item *

autoscaling: Auto Scaling created the deployment.

=item *

codeDeployRollback: A rollback process created the deployment.

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
lifecycle event to an instance to fail, the deployment to that instance
will not be considered to have failed at that point and will continue
on to the BeforeInstall deployment lifecycle event.

If false or not specified, then if the deployment causes the
ApplicationStop deployment lifecycle event to an instance to fail, the
deployment to that instance will stop, and the deployment to that
instance will be considered to have failed.


=head2 Revision => L<Paws::CodeDeploy::RevisionLocation>

  Information about the location of stored application artifacts and the
service from which to retrieve them.


=head2 RollbackInfo => L<Paws::CodeDeploy::RollbackInfo>

  Information about a deployment rollback.


=head2 StartTime => Str

  A timestamp indicating when the deployment was deployed to the
deployment group.

In some cases, the reported value of the start time may be later than
the complete time. This is due to differences in the clock settings of
back-end servers that participate in the deployment process.


=head2 Status => Str

  The current state of the deployment as a whole.


=head2 UpdateOutdatedInstancesOnly => Bool

  Indicates whether only instances that are not running the latest
application revision are to be deployed to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

