package Paws::CodeDeploy::DeploymentGroupInfo;
  use Moose;
  has AlarmConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AlarmConfiguration', xmlname => 'alarmConfiguration', request_name => 'alarmConfiguration', traits => ['Unwrapped','NameInRequest']);
  has ApplicationName => (is => 'ro', isa => 'Str', xmlname => 'applicationName', request_name => 'applicationName', traits => ['Unwrapped','NameInRequest']);
  has AutoRollbackConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AutoRollbackConfiguration', xmlname => 'autoRollbackConfiguration', request_name => 'autoRollbackConfiguration', traits => ['Unwrapped','NameInRequest']);
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::AutoScalingGroup]', xmlname => 'autoScalingGroups', request_name => 'autoScalingGroups', traits => ['Unwrapped','NameInRequest']);
  has BlueGreenDeploymentConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::BlueGreenDeploymentConfiguration', xmlname => 'blueGreenDeploymentConfiguration', request_name => 'blueGreenDeploymentConfiguration', traits => ['Unwrapped','NameInRequest']);
  has DeploymentConfigName => (is => 'ro', isa => 'Str', xmlname => 'deploymentConfigName', request_name => 'deploymentConfigName', traits => ['Unwrapped','NameInRequest']);
  has DeploymentGroupId => (is => 'ro', isa => 'Str', xmlname => 'deploymentGroupId', request_name => 'deploymentGroupId', traits => ['Unwrapped','NameInRequest']);
  has DeploymentGroupName => (is => 'ro', isa => 'Str', xmlname => 'deploymentGroupName', request_name => 'deploymentGroupName', traits => ['Unwrapped','NameInRequest']);
  has DeploymentStyle => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentStyle', xmlname => 'deploymentStyle', request_name => 'deploymentStyle', traits => ['Unwrapped','NameInRequest']);
  has Ec2TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::EC2TagFilter]', xmlname => 'ec2TagFilters', request_name => 'ec2TagFilters', traits => ['Unwrapped','NameInRequest']);
  has LoadBalancerInfo => (is => 'ro', isa => 'Paws::CodeDeploy::LoadBalancerInfo', xmlname => 'loadBalancerInfo', request_name => 'loadBalancerInfo', traits => ['Unwrapped','NameInRequest']);
  has OnPremisesInstanceTagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TagFilter]', xmlname => 'onPremisesInstanceTagFilters', request_name => 'onPremisesInstanceTagFilters', traits => ['Unwrapped','NameInRequest']);
  has ServiceRoleArn => (is => 'ro', isa => 'Str', xmlname => 'serviceRoleArn', request_name => 'serviceRoleArn', traits => ['Unwrapped','NameInRequest']);
  has TargetRevision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation', xmlname => 'targetRevision', request_name => 'targetRevision', traits => ['Unwrapped','NameInRequest']);
  has TriggerConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TriggerConfig]', xmlname => 'triggerConfigurations', request_name => 'triggerConfigurations', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeploymentGroupInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::DeploymentGroupInfo object:

  $service_obj->Method(Att1 => { AlarmConfiguration => $value, ..., TriggerConfigurations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::DeploymentGroupInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AlarmConfiguration

=head1 DESCRIPTION

Information about a deployment group.

=head1 ATTRIBUTES


=head2 AlarmConfiguration => L<Paws::CodeDeploy::AlarmConfiguration>

  A list of alarms associated with the deployment group.


=head2 ApplicationName => Str

  The application name.


=head2 AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>

  Information about the automatic rollback configuration associated with
the deployment group.


=head2 AutoScalingGroups => ArrayRef[L<Paws::CodeDeploy::AutoScalingGroup>]

  A list of associated Auto Scaling groups.


=head2 BlueGreenDeploymentConfiguration => L<Paws::CodeDeploy::BlueGreenDeploymentConfiguration>

  Information about blue/green deployment options for a deployment group.


=head2 DeploymentConfigName => Str

  The deployment configuration name.


=head2 DeploymentGroupId => Str

  The deployment group ID.


=head2 DeploymentGroupName => Str

  The deployment group name.


=head2 DeploymentStyle => L<Paws::CodeDeploy::DeploymentStyle>

  Information about the type of deployment, either standard or
blue/green, you want to run and whether to route deployment traffic
behind a load balancer.


=head2 Ec2TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>]

  The Amazon EC2 tags on which to filter.


=head2 LoadBalancerInfo => L<Paws::CodeDeploy::LoadBalancerInfo>

  Information about the load balancer to use in a blue/green deployment.


=head2 OnPremisesInstanceTagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]

  The on-premises instance tags on which to filter.


=head2 ServiceRoleArn => Str

  A service role ARN.


=head2 TargetRevision => L<Paws::CodeDeploy::RevisionLocation>

  Information about the deployment group's target revision, including
type and location.


=head2 TriggerConfigurations => ArrayRef[L<Paws::CodeDeploy::TriggerConfig>]

  Information about triggers associated with the deployment group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

