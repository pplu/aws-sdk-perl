# Generated from json/callargs_class.tt

package Paws::CodeDeploy::UpdateDeploymentGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_AutoRollbackConfiguration CodeDeploy_ECSService CodeDeploy_TriggerConfig CodeDeploy_EC2TagFilter CodeDeploy_AlarmConfiguration CodeDeploy_EC2TagSet CodeDeploy_LoadBalancerInfo CodeDeploy_OnPremisesTagSet CodeDeploy_BlueGreenDeploymentConfiguration CodeDeploy_DeploymentStyle CodeDeploy_TagFilter/;
  has AlarmConfiguration => (is => 'ro', isa => CodeDeploy_AlarmConfiguration, predicate => 1);
  has ApplicationName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has AutoRollbackConfiguration => (is => 'ro', isa => CodeDeploy_AutoRollbackConfiguration, predicate => 1);
  has AutoScalingGroups => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has BlueGreenDeploymentConfiguration => (is => 'ro', isa => CodeDeploy_BlueGreenDeploymentConfiguration, predicate => 1);
  has CurrentDeploymentGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DeploymentConfigName => (is => 'ro', isa => Str, predicate => 1);
  has DeploymentStyle => (is => 'ro', isa => CodeDeploy_DeploymentStyle, predicate => 1);
  has Ec2TagFilters => (is => 'ro', isa => ArrayRef[CodeDeploy_EC2TagFilter], predicate => 1);
  has Ec2TagSet => (is => 'ro', isa => CodeDeploy_EC2TagSet, predicate => 1);
  has EcsServices => (is => 'ro', isa => ArrayRef[CodeDeploy_ECSService], predicate => 1);
  has LoadBalancerInfo => (is => 'ro', isa => CodeDeploy_LoadBalancerInfo, predicate => 1);
  has NewDeploymentGroupName => (is => 'ro', isa => Str, predicate => 1);
  has OnPremisesInstanceTagFilters => (is => 'ro', isa => ArrayRef[CodeDeploy_TagFilter], predicate => 1);
  has OnPremisesTagSet => (is => 'ro', isa => CodeDeploy_OnPremisesTagSet, predicate => 1);
  has ServiceRoleArn => (is => 'ro', isa => Str, predicate => 1);
  has TriggerConfigurations => (is => 'ro', isa => ArrayRef[CodeDeploy_TriggerConfig], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDeploymentGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeDeploy::UpdateDeploymentGroupOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BlueGreenDeploymentConfiguration' => {
                                                       'class' => 'Paws::CodeDeploy::BlueGreenDeploymentConfiguration',
                                                       'type' => 'CodeDeploy_BlueGreenDeploymentConfiguration'
                                                     },
               'OnPremisesTagSet' => {
                                       'class' => 'Paws::CodeDeploy::OnPremisesTagSet',
                                       'type' => 'CodeDeploy_OnPremisesTagSet'
                                     },
               'AutoScalingGroups' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'DeploymentConfigName' => {
                                           'type' => 'Str'
                                         },
               'DeploymentStyle' => {
                                      'class' => 'Paws::CodeDeploy::DeploymentStyle',
                                      'type' => 'CodeDeploy_DeploymentStyle'
                                    },
               'LoadBalancerInfo' => {
                                       'class' => 'Paws::CodeDeploy::LoadBalancerInfo',
                                       'type' => 'CodeDeploy_LoadBalancerInfo'
                                     },
               'ApplicationName' => {
                                      'type' => 'Str'
                                    },
               'AlarmConfiguration' => {
                                         'class' => 'Paws::CodeDeploy::AlarmConfiguration',
                                         'type' => 'CodeDeploy_AlarmConfiguration'
                                       },
               'EcsServices' => {
                                  'class' => 'Paws::CodeDeploy::ECSService',
                                  'type' => 'ArrayRef[CodeDeploy_ECSService]'
                                },
               'ServiceRoleArn' => {
                                     'type' => 'Str'
                                   },
               'NewDeploymentGroupName' => {
                                             'type' => 'Str'
                                           },
               'OnPremisesInstanceTagFilters' => {
                                                   'class' => 'Paws::CodeDeploy::TagFilter',
                                                   'type' => 'ArrayRef[CodeDeploy_TagFilter]'
                                                 },
               'CurrentDeploymentGroupName' => {
                                                 'type' => 'Str'
                                               },
               'Ec2TagFilters' => {
                                    'class' => 'Paws::CodeDeploy::EC2TagFilter',
                                    'type' => 'ArrayRef[CodeDeploy_EC2TagFilter]'
                                  },
               'AutoRollbackConfiguration' => {
                                                'class' => 'Paws::CodeDeploy::AutoRollbackConfiguration',
                                                'type' => 'CodeDeploy_AutoRollbackConfiguration'
                                              },
               'Ec2TagSet' => {
                                'class' => 'Paws::CodeDeploy::EC2TagSet',
                                'type' => 'CodeDeploy_EC2TagSet'
                              },
               'TriggerConfigurations' => {
                                            'class' => 'Paws::CodeDeploy::TriggerConfig',
                                            'type' => 'ArrayRef[CodeDeploy_TriggerConfig]'
                                          }
             },
  'NameInRequest' => {
                       'BlueGreenDeploymentConfiguration' => 'blueGreenDeploymentConfiguration',
                       'OnPremisesTagSet' => 'onPremisesTagSet',
                       'AutoScalingGroups' => 'autoScalingGroups',
                       'DeploymentConfigName' => 'deploymentConfigName',
                       'DeploymentStyle' => 'deploymentStyle',
                       'LoadBalancerInfo' => 'loadBalancerInfo',
                       'ApplicationName' => 'applicationName',
                       'AlarmConfiguration' => 'alarmConfiguration',
                       'EcsServices' => 'ecsServices',
                       'ServiceRoleArn' => 'serviceRoleArn',
                       'NewDeploymentGroupName' => 'newDeploymentGroupName',
                       'OnPremisesInstanceTagFilters' => 'onPremisesInstanceTagFilters',
                       'CurrentDeploymentGroupName' => 'currentDeploymentGroupName',
                       'Ec2TagFilters' => 'ec2TagFilters',
                       'AutoRollbackConfiguration' => 'autoRollbackConfiguration',
                       'Ec2TagSet' => 'ec2TagSet',
                       'TriggerConfigurations' => 'triggerConfigurations'
                     },
  'IsRequired' => {
                    'CurrentDeploymentGroupName' => 1,
                    'ApplicationName' => 1
                  }
}
;
    return $Params_map;
  }

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


=head2 AlarmConfiguration => CodeDeploy_AlarmConfiguration

Information to add or change about Amazon CloudWatch alarms when the
deployment group is updated.



=head2 B<REQUIRED> ApplicationName => Str

The application name that corresponds to the deployment group to
update.



=head2 AutoRollbackConfiguration => CodeDeploy_AutoRollbackConfiguration

Information for an automatic rollback configuration that is added or
changed when a deployment group is updated.



=head2 AutoScalingGroups => ArrayRef[Str|Undef]

The replacement list of Auto Scaling groups to be included in the
deployment group, if you want to change them. To keep the Auto Scaling
groups, enter their names. To remove Auto Scaling groups, do not enter
any Auto Scaling group names.



=head2 BlueGreenDeploymentConfiguration => CodeDeploy_BlueGreenDeploymentConfiguration

Information about blue/green deployment options for a deployment group.



=head2 B<REQUIRED> CurrentDeploymentGroupName => Str

The current name of the deployment group.



=head2 DeploymentConfigName => Str

The replacement deployment configuration name to use, if you want to
change it.



=head2 DeploymentStyle => CodeDeploy_DeploymentStyle

Information about the type of deployment, either in-place or
blue/green, you want to run and whether to route deployment traffic
behind a load balancer.



=head2 Ec2TagFilters => ArrayRef[CodeDeploy_EC2TagFilter]

The replacement set of Amazon EC2 tags on which to filter, if you want
to change them. To keep the existing tags, enter their names. To remove
tags, do not enter any tag names.



=head2 Ec2TagSet => CodeDeploy_EC2TagSet

Information about groups of tags applied to on-premises instances. The
deployment group includes only EC2 instances identified by all the tag
groups.



=head2 EcsServices => ArrayRef[CodeDeploy_ECSService]

The target Amazon ECS services in the deployment group. This applies
only to deployment groups that use the Amazon ECS compute platform. A
target Amazon ECS service is specified as an Amazon ECS cluster and
service name pair using the format
C<E<lt>clusternameE<gt>:E<lt>servicenameE<gt>>.



=head2 LoadBalancerInfo => CodeDeploy_LoadBalancerInfo

Information about the load balancer used in a deployment.



=head2 NewDeploymentGroupName => Str

The new name of the deployment group, if you want to change it.



=head2 OnPremisesInstanceTagFilters => ArrayRef[CodeDeploy_TagFilter]

The replacement set of on-premises instance tags on which to filter, if
you want to change them. To keep the existing tags, enter their names.
To remove tags, do not enter any tag names.



=head2 OnPremisesTagSet => CodeDeploy_OnPremisesTagSet

Information about an on-premises instance tag set. The deployment group
includes only on-premises instances identified by all the tag groups.



=head2 ServiceRoleArn => Str

A replacement ARN for the service role, if you want to change it.



=head2 TriggerConfigurations => ArrayRef[CodeDeploy_TriggerConfig]

Information about triggers to change when the deployment group is
updated. For examples, see Modify Triggers in an AWS CodeDeploy
Deployment Group
(https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html)
in the AWS CodeDeploy User Guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDeploymentGroup in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

