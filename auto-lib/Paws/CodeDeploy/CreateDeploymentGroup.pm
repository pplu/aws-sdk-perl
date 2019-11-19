# Generated from json/callargs_class.tt

package Paws::CodeDeploy::CreateDeploymentGroup;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_LoadBalancerInfo CodeDeploy_TagFilter CodeDeploy_AlarmConfiguration CodeDeploy_OnPremisesTagSet CodeDeploy_ECSService CodeDeploy_AutoRollbackConfiguration CodeDeploy_EC2TagSet CodeDeploy_DeploymentStyle CodeDeploy_BlueGreenDeploymentConfiguration CodeDeploy_EC2TagFilter CodeDeploy_Tag CodeDeploy_TriggerConfig/;
  has AlarmConfiguration => (is => 'ro', isa => CodeDeploy_AlarmConfiguration, predicate => 1);
  has ApplicationName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has AutoRollbackConfiguration => (is => 'ro', isa => CodeDeploy_AutoRollbackConfiguration, predicate => 1);
  has AutoScalingGroups => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has BlueGreenDeploymentConfiguration => (is => 'ro', isa => CodeDeploy_BlueGreenDeploymentConfiguration, predicate => 1);
  has DeploymentConfigName => (is => 'ro', isa => Str, predicate => 1);
  has DeploymentGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DeploymentStyle => (is => 'ro', isa => CodeDeploy_DeploymentStyle, predicate => 1);
  has Ec2TagFilters => (is => 'ro', isa => ArrayRef[CodeDeploy_EC2TagFilter], predicate => 1);
  has Ec2TagSet => (is => 'ro', isa => CodeDeploy_EC2TagSet, predicate => 1);
  has EcsServices => (is => 'ro', isa => ArrayRef[CodeDeploy_ECSService], predicate => 1);
  has LoadBalancerInfo => (is => 'ro', isa => CodeDeploy_LoadBalancerInfo, predicate => 1);
  has OnPremisesInstanceTagFilters => (is => 'ro', isa => ArrayRef[CodeDeploy_TagFilter], predicate => 1);
  has OnPremisesTagSet => (is => 'ro', isa => CodeDeploy_OnPremisesTagSet, predicate => 1);
  has ServiceRoleArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[CodeDeploy_Tag], predicate => 1);
  has TriggerConfigurations => (is => 'ro', isa => ArrayRef[CodeDeploy_TriggerConfig], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDeploymentGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeDeploy::CreateDeploymentGroupOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OnPremisesInstanceTagFilters' => {
                                                   'type' => 'ArrayRef[CodeDeploy_TagFilter]',
                                                   'class' => 'Paws::CodeDeploy::TagFilter'
                                                 },
               'AutoScalingGroups' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'OnPremisesTagSet' => {
                                       'type' => 'CodeDeploy_OnPremisesTagSet',
                                       'class' => 'Paws::CodeDeploy::OnPremisesTagSet'
                                     },
               'ServiceRoleArn' => {
                                     'type' => 'Str'
                                   },
               'DeploymentConfigName' => {
                                           'type' => 'Str'
                                         },
               'Ec2TagSet' => {
                                'class' => 'Paws::CodeDeploy::EC2TagSet',
                                'type' => 'CodeDeploy_EC2TagSet'
                              },
               'DeploymentStyle' => {
                                      'class' => 'Paws::CodeDeploy::DeploymentStyle',
                                      'type' => 'CodeDeploy_DeploymentStyle'
                                    },
               'Ec2TagFilters' => {
                                    'class' => 'Paws::CodeDeploy::EC2TagFilter',
                                    'type' => 'ArrayRef[CodeDeploy_EC2TagFilter]'
                                  },
               'AutoRollbackConfiguration' => {
                                                'type' => 'CodeDeploy_AutoRollbackConfiguration',
                                                'class' => 'Paws::CodeDeploy::AutoRollbackConfiguration'
                                              },
               'EcsServices' => {
                                  'class' => 'Paws::CodeDeploy::ECSService',
                                  'type' => 'ArrayRef[CodeDeploy_ECSService]'
                                },
               'ApplicationName' => {
                                      'type' => 'Str'
                                    },
               'BlueGreenDeploymentConfiguration' => {
                                                       'class' => 'Paws::CodeDeploy::BlueGreenDeploymentConfiguration',
                                                       'type' => 'CodeDeploy_BlueGreenDeploymentConfiguration'
                                                     },
               'DeploymentGroupName' => {
                                          'type' => 'Str'
                                        },
               'LoadBalancerInfo' => {
                                       'type' => 'CodeDeploy_LoadBalancerInfo',
                                       'class' => 'Paws::CodeDeploy::LoadBalancerInfo'
                                     },
               'AlarmConfiguration' => {
                                         'type' => 'CodeDeploy_AlarmConfiguration',
                                         'class' => 'Paws::CodeDeploy::AlarmConfiguration'
                                       },
               'Tags' => {
                           'type' => 'ArrayRef[CodeDeploy_Tag]',
                           'class' => 'Paws::CodeDeploy::Tag'
                         },
               'TriggerConfigurations' => {
                                            'class' => 'Paws::CodeDeploy::TriggerConfig',
                                            'type' => 'ArrayRef[CodeDeploy_TriggerConfig]'
                                          }
             },
  'NameInRequest' => {
                       'OnPremisesInstanceTagFilters' => 'onPremisesInstanceTagFilters',
                       'AutoScalingGroups' => 'autoScalingGroups',
                       'OnPremisesTagSet' => 'onPremisesTagSet',
                       'ServiceRoleArn' => 'serviceRoleArn',
                       'DeploymentConfigName' => 'deploymentConfigName',
                       'Ec2TagSet' => 'ec2TagSet',
                       'DeploymentStyle' => 'deploymentStyle',
                       'AutoRollbackConfiguration' => 'autoRollbackConfiguration',
                       'Ec2TagFilters' => 'ec2TagFilters',
                       'EcsServices' => 'ecsServices',
                       'BlueGreenDeploymentConfiguration' => 'blueGreenDeploymentConfiguration',
                       'DeploymentGroupName' => 'deploymentGroupName',
                       'ApplicationName' => 'applicationName',
                       'TriggerConfigurations' => 'triggerConfigurations',
                       'Tags' => 'tags',
                       'AlarmConfiguration' => 'alarmConfiguration',
                       'LoadBalancerInfo' => 'loadBalancerInfo'
                     },
  'IsRequired' => {
                    'DeploymentGroupName' => 1,
                    'ApplicationName' => 1,
                    'ServiceRoleArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentGroup - Arguments for method CreateDeploymentGroup on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeploymentGroup on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method CreateDeploymentGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeploymentGroup.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $CreateDeploymentGroupOutput = $codedeploy->CreateDeploymentGroup(
      ApplicationName     => 'MyApplicationName',
      DeploymentGroupName => 'MyDeploymentGroupName',
      ServiceRoleArn      => 'MyRole',
      AlarmConfiguration  => {
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
      OnPremisesInstanceTagFilters => [
        {
          Key => 'MyKey',    # OPTIONAL
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
      Tags => [
        {
          Key   => 'MyKey',      # OPTIONAL
          Value => 'MyValue',    # OPTIONAL
        },
        ...
      ],                         # OPTIONAL
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
    my $DeploymentGroupId = $CreateDeploymentGroupOutput->DeploymentGroupId;

    # Returns a L<Paws::CodeDeploy::CreateDeploymentGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/CreateDeploymentGroup>

=head1 ATTRIBUTES


=head2 AlarmConfiguration => CodeDeploy_AlarmConfiguration

Information to add about Amazon CloudWatch alarms when the deployment
group is created.



=head2 B<REQUIRED> ApplicationName => Str

The name of an AWS CodeDeploy application associated with the IAM user
or AWS account.



=head2 AutoRollbackConfiguration => CodeDeploy_AutoRollbackConfiguration

Configuration information for an automatic rollback that is added when
a deployment group is created.



=head2 AutoScalingGroups => ArrayRef[Str|Undef]

A list of associated Amazon EC2 Auto Scaling groups.



=head2 BlueGreenDeploymentConfiguration => CodeDeploy_BlueGreenDeploymentConfiguration

Information about blue/green deployment options for a deployment group.



=head2 DeploymentConfigName => Str

If specified, the deployment configuration name can be either one of
the predefined configurations provided with AWS CodeDeploy or a custom
deployment configuration that you create by calling the create
deployment configuration operation.

CodeDeployDefault.OneAtATime is the default deployment configuration.
It is used if a configuration isn't specified for the deployment or
deployment group.

For more information about the predefined deployment configurations in
AWS CodeDeploy, see Working with Deployment Groups in AWS CodeDeploy
(https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html)
in the AWS CodeDeploy User Guide.



=head2 B<REQUIRED> DeploymentGroupName => Str

The name of a new deployment group for the specified application.



=head2 DeploymentStyle => CodeDeploy_DeploymentStyle

Information about the type of deployment, in-place or blue/green, that
you want to run and whether to route deployment traffic behind a load
balancer.



=head2 Ec2TagFilters => ArrayRef[CodeDeploy_EC2TagFilter]

The Amazon EC2 tags on which to filter. The deployment group includes
EC2 instances with any of the specified tags. Cannot be used in the
same call as ec2TagSet.



=head2 Ec2TagSet => CodeDeploy_EC2TagSet

Information about groups of tags applied to EC2 instances. The
deployment group includes only EC2 instances identified by all the tag
groups. Cannot be used in the same call as ec2TagFilters.



=head2 EcsServices => ArrayRef[CodeDeploy_ECSService]

The target Amazon ECS services in the deployment group. This applies
only to deployment groups that use the Amazon ECS compute platform. A
target Amazon ECS service is specified as an Amazon ECS cluster and
service name pair using the format
C<E<lt>clusternameE<gt>:E<lt>servicenameE<gt>>.



=head2 LoadBalancerInfo => CodeDeploy_LoadBalancerInfo

Information about the load balancer used in a deployment.



=head2 OnPremisesInstanceTagFilters => ArrayRef[CodeDeploy_TagFilter]

The on-premises instance tags on which to filter. The deployment group
includes on-premises instances with any of the specified tags. Cannot
be used in the same call as OnPremisesTagSet.



=head2 OnPremisesTagSet => CodeDeploy_OnPremisesTagSet

Information about groups of tags applied to on-premises instances. The
deployment group includes only on-premises instances identified by all
of the tag groups. Cannot be used in the same call as
onPremisesInstanceTagFilters.



=head2 B<REQUIRED> ServiceRoleArn => Str

A service role ARN that allows AWS CodeDeploy to act on the user's
behalf when interacting with AWS services.



=head2 Tags => ArrayRef[CodeDeploy_Tag]

The metadata that you apply to CodeDeploy deployment groups to help you
organize and categorize them. Each tag consists of a key and an
optional value, both of which you define.



=head2 TriggerConfigurations => ArrayRef[CodeDeploy_TriggerConfig]

Information about triggers to create when the deployment group is
created. For examples, see Create a Trigger for an AWS CodeDeploy Event
(https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html)
in the AWS CodeDeploy User Guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeploymentGroup in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

