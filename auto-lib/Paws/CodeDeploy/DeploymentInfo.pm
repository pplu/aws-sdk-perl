package Paws::CodeDeploy::DeploymentInfo;
  use Moose;
  has AdditionalDeploymentStatusInfo => (is => 'ro', isa => 'Str', request_name => 'additionalDeploymentStatusInfo', traits => ['NameInRequest']);
  has ApplicationName => (is => 'ro', isa => 'Str', request_name => 'applicationName', traits => ['NameInRequest']);
  has AutoRollbackConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AutoRollbackConfiguration', request_name => 'autoRollbackConfiguration', traits => ['NameInRequest']);
  has BlueGreenDeploymentConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::BlueGreenDeploymentConfiguration', request_name => 'blueGreenDeploymentConfiguration', traits => ['NameInRequest']);
  has CompleteTime => (is => 'ro', isa => 'Str', request_name => 'completeTime', traits => ['NameInRequest']);
  has ComputePlatform => (is => 'ro', isa => 'Str', request_name => 'computePlatform', traits => ['NameInRequest']);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest']);
  has Creator => (is => 'ro', isa => 'Str', request_name => 'creator', traits => ['NameInRequest']);
  has DeploymentConfigName => (is => 'ro', isa => 'Str', request_name => 'deploymentConfigName', traits => ['NameInRequest']);
  has DeploymentGroupName => (is => 'ro', isa => 'Str', request_name => 'deploymentGroupName', traits => ['NameInRequest']);
  has DeploymentId => (is => 'ro', isa => 'Str', request_name => 'deploymentId', traits => ['NameInRequest']);
  has DeploymentOverview => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentOverview', request_name => 'deploymentOverview', traits => ['NameInRequest']);
  has DeploymentStatusMessages => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'deploymentStatusMessages', traits => ['NameInRequest']);
  has DeploymentStyle => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentStyle', request_name => 'deploymentStyle', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has ErrorInformation => (is => 'ro', isa => 'Paws::CodeDeploy::ErrorInformation', request_name => 'errorInformation', traits => ['NameInRequest']);
  has FileExistsBehavior => (is => 'ro', isa => 'Str', request_name => 'fileExistsBehavior', traits => ['NameInRequest']);
  has IgnoreApplicationStopFailures => (is => 'ro', isa => 'Bool', request_name => 'ignoreApplicationStopFailures', traits => ['NameInRequest']);
  has InstanceTerminationWaitTimeStarted => (is => 'ro', isa => 'Bool', request_name => 'instanceTerminationWaitTimeStarted', traits => ['NameInRequest']);
  has LoadBalancerInfo => (is => 'ro', isa => 'Paws::CodeDeploy::LoadBalancerInfo', request_name => 'loadBalancerInfo', traits => ['NameInRequest']);
  has PreviousRevision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation', request_name => 'previousRevision', traits => ['NameInRequest']);
  has Revision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation', request_name => 'revision', traits => ['NameInRequest']);
  has RollbackInfo => (is => 'ro', isa => 'Paws::CodeDeploy::RollbackInfo', request_name => 'rollbackInfo', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TargetInstances => (is => 'ro', isa => 'Paws::CodeDeploy::TargetInstances', request_name => 'targetInstances', traits => ['NameInRequest']);
  has UpdateOutdatedInstancesOnly => (is => 'ro', isa => 'Bool', request_name => 'updateOutdatedInstancesOnly', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { AdditionalDeploymentStatusInfo => $value, ..., UpdateOutdatedInstancesOnly => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::DeploymentInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalDeploymentStatusInfo

=head1 DESCRIPTION

Information about a deployment.

=head1 ATTRIBUTES


=head2 AdditionalDeploymentStatusInfo => Str

  Provides information about the results of a deployment, such as whether
instances in the original environment in a blue/green deployment were
not terminated.


=head2 ApplicationName => Str

  The application name.


=head2 AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>

  Information about the automatic rollback configuration associated with
the deployment.


=head2 BlueGreenDeploymentConfiguration => L<Paws::CodeDeploy::BlueGreenDeploymentConfiguration>

  Information about blue/green deployment options for this deployment.


=head2 CompleteTime => Str

  A timestamp that indicates when the deployment was complete.


=head2 ComputePlatform => Str

  The destination platform type for the deployment (C<Lambda> or
C<Server>).


=head2 CreateTime => Str

  A timestamp that indicates when the deployment was created.


=head2 Creator => Str

  The means by which the deployment was created:

=over

=item *

user: A user created the deployment.

=item *

autoscaling: Amazon EC2 Auto Scaling created the deployment.

=item *

codeDeployRollback: A rollback process created the deployment.

=back



=head2 DeploymentConfigName => Str

  The deployment configuration name.


=head2 DeploymentGroupName => Str

  The deployment group name.


=head2 DeploymentId => Str

  The unique ID of a deployment.


=head2 DeploymentOverview => L<Paws::CodeDeploy::DeploymentOverview>

  A summary of the deployment status of the instances in the deployment.


=head2 DeploymentStatusMessages => ArrayRef[Str|Undef]

  Messages that contain information about the status of a deployment.


=head2 DeploymentStyle => L<Paws::CodeDeploy::DeploymentStyle>

  Information about the type of deployment, either in-place or
blue/green, you want to run and whether to route deployment traffic
behind a load balancer.


=head2 Description => Str

  A comment about the deployment.


=head2 ErrorInformation => L<Paws::CodeDeploy::ErrorInformation>

  Information about any error associated with this deployment.


=head2 FileExistsBehavior => Str

  Information about how AWS CodeDeploy handles files that already exist
in a deployment target location but weren't part of the previous
successful deployment.

=over

=item *

DISALLOW: The deployment fails. This is also the default behavior if no
option is specified.

=item *

OVERWRITE: The version of the file from the application revision
currently being deployed replaces the version already on the instance.

=item *

RETAIN: The version of the file already on the instance is kept and
used as part of the new deployment.

=back



=head2 IgnoreApplicationStopFailures => Bool

  If true, then if the deployment causes the ApplicationStop deployment
lifecycle event to an instance to fail, the deployment to that instance
is not considered to have failed at that point and continues on to the
BeforeInstall deployment lifecycle event.

If false or not specified, then if the deployment causes the
ApplicationStop deployment lifecycle event to an instance to fail, the
deployment to that instance stops, and the deployment to that instance
is considered to have failed.


=head2 InstanceTerminationWaitTimeStarted => Bool

  Indicates whether the wait period set for the termination of instances
in the original environment has started. Status is 'false' if the
KEEP_ALIVE option is specified. Otherwise, 'true' as soon as the
termination wait period starts.


=head2 LoadBalancerInfo => L<Paws::CodeDeploy::LoadBalancerInfo>

  Information about the load balancer used in the deployment.


=head2 PreviousRevision => L<Paws::CodeDeploy::RevisionLocation>

  Information about the application revision that was deployed to the
deployment group before the most recent successful deployment.


=head2 Revision => L<Paws::CodeDeploy::RevisionLocation>

  Information about the location of stored application artifacts and the
service from which to retrieve them.


=head2 RollbackInfo => L<Paws::CodeDeploy::RollbackInfo>

  Information about a deployment rollback.


=head2 StartTime => Str

  A timestamp that indicates when the deployment was deployed to the
deployment group.

In some cases, the reported value of the start time might be later than
the complete time. This is due to differences in the clock settings of
backend servers that participate in the deployment process.


=head2 Status => Str

  The current state of the deployment as a whole.


=head2 TargetInstances => L<Paws::CodeDeploy::TargetInstances>

  Information about the instances that belong to the replacement
environment in a blue/green deployment.


=head2 UpdateOutdatedInstancesOnly => Bool

  Indicates whether only instances that are not running the latest
application revision are to be deployed to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

