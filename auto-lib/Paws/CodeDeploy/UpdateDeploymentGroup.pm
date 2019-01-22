
package Paws::CodeDeploy::UpdateDeploymentGroup;
  use Moose;
  has AlarmConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AlarmConfiguration', traits => ['NameInRequest'], request_name => 'alarmConfiguration' );
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has AutoRollbackConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AutoRollbackConfiguration', traits => ['NameInRequest'], request_name => 'autoRollbackConfiguration' );
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'autoScalingGroups' );
  has BlueGreenDeploymentConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::BlueGreenDeploymentConfiguration', traits => ['NameInRequest'], request_name => 'blueGreenDeploymentConfiguration' );
  has CurrentDeploymentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentDeploymentGroupName' , required => 1);
  has DeploymentConfigName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentConfigName' );
  has DeploymentStyle => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentStyle', traits => ['NameInRequest'], request_name => 'deploymentStyle' );
  has Ec2TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::EC2TagFilter]', traits => ['NameInRequest'], request_name => 'ec2TagFilters' );
  has Ec2TagSet => (is => 'ro', isa => 'Paws::CodeDeploy::EC2TagSet', traits => ['NameInRequest'], request_name => 'ec2TagSet' );
  has EcsServices => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::ECSService]', traits => ['NameInRequest'], request_name => 'ecsServices' );
  has LoadBalancerInfo => (is => 'ro', isa => 'Paws::CodeDeploy::LoadBalancerInfo', traits => ['NameInRequest'], request_name => 'loadBalancerInfo' );
  has NewDeploymentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'newDeploymentGroupName' );
  has OnPremisesInstanceTagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TagFilter]', traits => ['NameInRequest'], request_name => 'onPremisesInstanceTagFilters' );
  has OnPremisesTagSet => (is => 'ro', isa => 'Paws::CodeDeploy::OnPremisesTagSet', traits => ['NameInRequest'], request_name => 'onPremisesTagSet' );
  has ServiceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRoleArn' );
  has TriggerConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TriggerConfig]', traits => ['NameInRequest'], request_name => 'triggerConfigurations' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDeploymentGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::UpdateDeploymentGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::UpdateDeploymentGroup - Arguments for method UpdateDeploymentGroup on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDeploymentGroup on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method UpdateDeploymentGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDeploymentGroup.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $UpdateDeploymentGroupOutput = $codedeploy->UpdateDeploymentGroup(
      ApplicationName            => 'MyApplicationName',
      CurrentDeploymentGroupName => 'MyDeploymentGroupName',
      AlarmConfiguration         => {
        Alarms => [
          {
            Name => 'MyAlarmName',    # OPTIONAL
          },
          ...
        ],                            # OPTIONAL
        Enabled                => 1,  # OPTIONAL
        IgnorePollAlarmFailure => 1,  # OPTIONAL
      },    # OPTIONAL
      AutoRollbackConfiguration => {
        Enabled => 1,    # OPTIONAL
        Events  => [
          'DEPLOYMENT_FAILURE',
          ... # values: DEPLOYMENT_FAILURE, DEPLOYMENT_STOP_ON_ALARM, DEPLOYMENT_STOP_ON_REQUEST
        ],    # OPTIONAL
      },    # OPTIONAL
      AutoScalingGroups => [ 'MyAutoScalingGroupName', ... ],    # OPTIONAL
      BlueGreenDeploymentConfiguration => {
        DeploymentReadyOption => {
          ActionOnTimeout => 'CONTINUE_DEPLOYMENT'
          ,    # values: CONTINUE_DEPLOYMENT, STOP_DEPLOYMENT; OPTIONAL
          WaitTimeInMinutes => 1,    # OPTIONAL
        },    # OPTIONAL
        GreenFleetProvisioningOption => {
          Action => 'DISCOVER_EXISTING'
          ,    # values: DISCOVER_EXISTING, COPY_AUTO_SCALING_GROUP; OPTIONAL
        },    # OPTIONAL
        TerminateBlueInstancesOnDeploymentSuccess => {
          Action => 'TERMINATE',    # values: TERMINATE, KEEP_ALIVE; OPTIONAL
          TerminationWaitTimeInMinutes => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      DeploymentConfigName => 'MyDeploymentConfigName',    # OPTIONAL
      DeploymentStyle      => {
        DeploymentOption => 'WITH_TRAFFIC_CONTROL'
        ,    # values: WITH_TRAFFIC_CONTROL, WITHOUT_TRAFFIC_CONTROL; OPTIONAL
        DeploymentType => 'IN_PLACE',   # values: IN_PLACE, BLUE_GREEN; OPTIONAL
      },    # OPTIONAL
      Ec2TagFilters => [
        {
          Key => 'MyKey',    # OPTIONAL
          Type =>
            'KEY_ONLY',  # values: KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE; OPTIONAL
          Value => 'MyValue',    # OPTIONAL
        },
        ...
      ],                         # OPTIONAL
      Ec2TagSet => {
        Ec2TagSetList => [
          [
            {
              Key  => 'MyKey',     # OPTIONAL
              Type => 'KEY_ONLY'
              ,    # values: KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE; OPTIONAL
              Value => 'MyValue',    # OPTIONAL
            },
            ...
          ],
          ...
        ],                           # OPTIONAL
      },    # OPTIONAL
      EcsServices => [
        {
          ClusterName => 'MyECSClusterName',    # OPTIONAL
          ServiceName => 'MyECSServiceName',    # OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
      LoadBalancerInfo => {
        ElbInfoList => [
          {
            Name => 'MyELBName',                # OPTIONAL
          },
          ...
        ],                                      # OPTIONAL
        TargetGroupInfoList => [
          {
            Name => 'MyTargetGroupName',        # OPTIONAL
          },
          ...
        ],                                      # OPTIONAL
        TargetGroupPairInfoList => [
          {
            ProdTrafficRoute => {
              ListenerArns => [ 'MyListenerArn', ... ],    # OPTIONAL
            },    # OPTIONAL
            TargetGroups => [
              {
                Name => 'MyTargetGroupName',    # OPTIONAL
              },
              ...
            ],                                  # OPTIONAL
            TestTrafficRoute => {
              ListenerArns => [ 'MyListenerArn', ... ],    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],        # OPTIONAL
      },    # OPTIONAL
      NewDeploymentGroupName       => 'MyDeploymentGroupName',    # OPTIONAL
      OnPremisesInstanceTagFilters => [
        {
          Key => 'MyKey',                                         # OPTIONAL
          Type =>
            'KEY_ONLY',  # values: KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE; OPTIONAL
          Value => 'MyValue',    # OPTIONAL
        },
        ...
      ],                         # OPTIONAL
      OnPremisesTagSet => {
        OnPremisesTagSetList => [
          [
            {
              Key  => 'MyKey',     # OPTIONAL
              Type => 'KEY_ONLY'
              ,    # values: KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE; OPTIONAL
              Value => 'MyValue',    # OPTIONAL
            },
            ...
          ],
          ...
        ],                           # OPTIONAL
      },    # OPTIONAL
      ServiceRoleArn        => 'MyRole',    # OPTIONAL
      TriggerConfigurations => [
        {
          TriggerEvents => [
            'DeploymentStart',
            ... # values: DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, DeploymentRollback, DeploymentReady, InstanceStart, InstanceSuccess, InstanceFailure, InstanceReady
          ],    # OPTIONAL
          TriggerName      => 'MyTriggerName',         # OPTIONAL
          TriggerTargetArn => 'MyTriggerTargetArn',    # OPTIONAL
        },
        ...
      ],                                               # OPTIONAL
    );

    # Results:
    my $HooksNotCleanedUp = $UpdateDeploymentGroupOutput->HooksNotCleanedUp;

    # Returns a L<Paws::CodeDeploy::UpdateDeploymentGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/UpdateDeploymentGroup>

=head1 ATTRIBUTES


=head2 AlarmConfiguration => L<Paws::CodeDeploy::AlarmConfiguration>

Information to add or change about Amazon CloudWatch alarms when the
deployment group is updated.



=head2 B<REQUIRED> ApplicationName => Str

The application name that corresponds to the deployment group to
update.



=head2 AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>

Information for an automatic rollback configuration that is added or
changed when a deployment group is updated.



=head2 AutoScalingGroups => ArrayRef[Str|Undef]

The replacement list of Auto Scaling groups to be included in the
deployment group, if you want to change them. To keep the Auto Scaling
groups, enter their names. To remove Auto Scaling groups, do not enter
any Auto Scaling group names.



=head2 BlueGreenDeploymentConfiguration => L<Paws::CodeDeploy::BlueGreenDeploymentConfiguration>

Information about blue/green deployment options for a deployment group.



=head2 B<REQUIRED> CurrentDeploymentGroupName => Str

The current name of the deployment group.



=head2 DeploymentConfigName => Str

The replacement deployment configuration name to use, if you want to
change it.



=head2 DeploymentStyle => L<Paws::CodeDeploy::DeploymentStyle>

Information about the type of deployment, either in-place or
blue/green, you want to run and whether to route deployment traffic
behind a load balancer.



=head2 Ec2TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>]

The replacement set of Amazon EC2 tags on which to filter, if you want
to change them. To keep the existing tags, enter their names. To remove
tags, do not enter any tag names.



=head2 Ec2TagSet => L<Paws::CodeDeploy::EC2TagSet>

Information about groups of tags applied to on-premises instances. The
deployment group includes only EC2 instances identified by all the tag
groups.



=head2 EcsServices => ArrayRef[L<Paws::CodeDeploy::ECSService>]

The target Amazon ECS services in the deployment group. This applies
only to deployment groups that use the Amazon ECS compute platform. A
target Amazon ECS service is specified as an Amazon ECS cluster and
service name pair using the format
C<E<lt>clusternameE<gt>:E<lt>servicenameE<gt>>.



=head2 LoadBalancerInfo => L<Paws::CodeDeploy::LoadBalancerInfo>

Information about the load balancer used in a deployment.



=head2 NewDeploymentGroupName => Str

The new name of the deployment group, if you want to change it.



=head2 OnPremisesInstanceTagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]

The replacement set of on-premises instance tags on which to filter, if
you want to change them. To keep the existing tags, enter their names.
To remove tags, do not enter any tag names.



=head2 OnPremisesTagSet => L<Paws::CodeDeploy::OnPremisesTagSet>

Information about an on-premises instance tag set. The deployment group
includes only on-premises instances identified by all the tag groups.



=head2 ServiceRoleArn => Str

A replacement ARN for the service role, if you want to change it.



=head2 TriggerConfigurations => ArrayRef[L<Paws::CodeDeploy::TriggerConfig>]

Information about triggers to change when the deployment group is
updated. For examples, see Modify Triggers in an AWS CodeDeploy
Deployment Group
(http://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html)
in the AWS CodeDeploy User Guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDeploymentGroup in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

