# Generated from default/object.tt
package Paws::CodeDeploy::DeploymentGroupInfo;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_AutoRollbackConfiguration CodeDeploy_ECSService CodeDeploy_TriggerConfig CodeDeploy_EC2TagFilter CodeDeploy_AlarmConfiguration CodeDeploy_LoadBalancerInfo CodeDeploy_EC2TagSet CodeDeploy_RevisionLocation CodeDeploy_OnPremisesTagSet CodeDeploy_LastDeploymentInfo CodeDeploy_BlueGreenDeploymentConfiguration CodeDeploy_DeploymentStyle CodeDeploy_TagFilter CodeDeploy_AutoScalingGroup/;
  has AlarmConfiguration => (is => 'ro', isa => CodeDeploy_AlarmConfiguration);
  has ApplicationName => (is => 'ro', isa => Str);
  has AutoRollbackConfiguration => (is => 'ro', isa => CodeDeploy_AutoRollbackConfiguration);
  has AutoScalingGroups => (is => 'ro', isa => ArrayRef[CodeDeploy_AutoScalingGroup]);
  has BlueGreenDeploymentConfiguration => (is => 'ro', isa => CodeDeploy_BlueGreenDeploymentConfiguration);
  has ComputePlatform => (is => 'ro', isa => Str);
  has DeploymentConfigName => (is => 'ro', isa => Str);
  has DeploymentGroupId => (is => 'ro', isa => Str);
  has DeploymentGroupName => (is => 'ro', isa => Str);
  has DeploymentStyle => (is => 'ro', isa => CodeDeploy_DeploymentStyle);
  has Ec2TagFilters => (is => 'ro', isa => ArrayRef[CodeDeploy_EC2TagFilter]);
  has Ec2TagSet => (is => 'ro', isa => CodeDeploy_EC2TagSet);
  has EcsServices => (is => 'ro', isa => ArrayRef[CodeDeploy_ECSService]);
  has LastAttemptedDeployment => (is => 'ro', isa => CodeDeploy_LastDeploymentInfo);
  has LastSuccessfulDeployment => (is => 'ro', isa => CodeDeploy_LastDeploymentInfo);
  has LoadBalancerInfo => (is => 'ro', isa => CodeDeploy_LoadBalancerInfo);
  has OnPremisesInstanceTagFilters => (is => 'ro', isa => ArrayRef[CodeDeploy_TagFilter]);
  has OnPremisesTagSet => (is => 'ro', isa => CodeDeploy_OnPremisesTagSet);
  has ServiceRoleArn => (is => 'ro', isa => Str);
  has TargetRevision => (is => 'ro', isa => CodeDeploy_RevisionLocation);
  has TriggerConfigurations => (is => 'ro', isa => ArrayRef[CodeDeploy_TriggerConfig]);

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
               'LastSuccessfulDeployment' => {
                                               'class' => 'Paws::CodeDeploy::LastDeploymentInfo',
                                               'type' => 'CodeDeploy_LastDeploymentInfo'
                                             },
               'DeploymentGroupId' => {
                                        'type' => 'Str'
                                      },
               'AutoScalingGroups' => {
                                        'class' => 'Paws::CodeDeploy::AutoScalingGroup',
                                        'type' => 'ArrayRef[CodeDeploy_AutoScalingGroup]'
                                      },
               'ComputePlatform' => {
                                      'type' => 'Str'
                                    },
               'DeploymentStyle' => {
                                      'class' => 'Paws::CodeDeploy::DeploymentStyle',
                                      'type' => 'CodeDeploy_DeploymentStyle'
                                    },
               'DeploymentConfigName' => {
                                           'type' => 'Str'
                                         },
               'LoadBalancerInfo' => {
                                       'class' => 'Paws::CodeDeploy::LoadBalancerInfo',
                                       'type' => 'CodeDeploy_LoadBalancerInfo'
                                     },
               'ApplicationName' => {
                                      'type' => 'Str'
                                    },
               'TargetRevision' => {
                                     'class' => 'Paws::CodeDeploy::RevisionLocation',
                                     'type' => 'CodeDeploy_RevisionLocation'
                                   },
               'DeploymentGroupName' => {
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
               'OnPremisesInstanceTagFilters' => {
                                                   'class' => 'Paws::CodeDeploy::TagFilter',
                                                   'type' => 'ArrayRef[CodeDeploy_TagFilter]'
                                                 },
               'Ec2TagFilters' => {
                                    'class' => 'Paws::CodeDeploy::EC2TagFilter',
                                    'type' => 'ArrayRef[CodeDeploy_EC2TagFilter]'
                                  },
               'AutoRollbackConfiguration' => {
                                                'class' => 'Paws::CodeDeploy::AutoRollbackConfiguration',
                                                'type' => 'CodeDeploy_AutoRollbackConfiguration'
                                              },
               'LastAttemptedDeployment' => {
                                              'class' => 'Paws::CodeDeploy::LastDeploymentInfo',
                                              'type' => 'CodeDeploy_LastDeploymentInfo'
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
                       'LastSuccessfulDeployment' => 'lastSuccessfulDeployment',
                       'DeploymentGroupId' => 'deploymentGroupId',
                       'AutoScalingGroups' => 'autoScalingGroups',
                       'ComputePlatform' => 'computePlatform',
                       'DeploymentStyle' => 'deploymentStyle',
                       'DeploymentConfigName' => 'deploymentConfigName',
                       'LoadBalancerInfo' => 'loadBalancerInfo',
                       'ApplicationName' => 'applicationName',
                       'TargetRevision' => 'targetRevision',
                       'DeploymentGroupName' => 'deploymentGroupName',
                       'AlarmConfiguration' => 'alarmConfiguration',
                       'EcsServices' => 'ecsServices',
                       'ServiceRoleArn' => 'serviceRoleArn',
                       'OnPremisesInstanceTagFilters' => 'onPremisesInstanceTagFilters',
                       'Ec2TagFilters' => 'ec2TagFilters',
                       'AutoRollbackConfiguration' => 'autoRollbackConfiguration',
                       'LastAttemptedDeployment' => 'lastAttemptedDeployment',
                       'Ec2TagSet' => 'ec2TagSet',
                       'TriggerConfigurations' => 'triggerConfigurations'
                     }
}
;
    return $Params_map;
  }


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


=head2 AlarmConfiguration => CodeDeploy_AlarmConfiguration

  A list of alarms associated with the deployment group.


=head2 ApplicationName => Str

  The application name.


=head2 AutoRollbackConfiguration => CodeDeploy_AutoRollbackConfiguration

  Information about the automatic rollback configuration associated with
the deployment group.


=head2 AutoScalingGroups => ArrayRef[CodeDeploy_AutoScalingGroup]

  A list of associated Auto Scaling groups.


=head2 BlueGreenDeploymentConfiguration => CodeDeploy_BlueGreenDeploymentConfiguration

  Information about blue/green deployment options for a deployment group.


=head2 ComputePlatform => Str

  The destination platform type for the deployment (C<Lambda>, C<Server>,
or C<ECS>).


=head2 DeploymentConfigName => Str

  The deployment configuration name.


=head2 DeploymentGroupId => Str

  The deployment group ID.


=head2 DeploymentGroupName => Str

  The deployment group name.


=head2 DeploymentStyle => CodeDeploy_DeploymentStyle

  Information about the type of deployment, either in-place or
blue/green, you want to run and whether to route deployment traffic
behind a load balancer.


=head2 Ec2TagFilters => ArrayRef[CodeDeploy_EC2TagFilter]

  The Amazon EC2 tags on which to filter. The deployment group includes
EC2 instances with any of the specified tags.


=head2 Ec2TagSet => CodeDeploy_EC2TagSet

  Information about groups of tags applied to an EC2 instance. The
deployment group includes only EC2 instances identified by all of the
tag groups. Cannot be used in the same call as ec2TagFilters.


=head2 EcsServices => ArrayRef[CodeDeploy_ECSService]

  The target Amazon ECS services in the deployment group. This applies
only to deployment groups that use the Amazon ECS compute platform. A
target Amazon ECS service is specified as an Amazon ECS cluster and
service name pair using the format
C<E<lt>clusternameE<gt>:E<lt>servicenameE<gt>>.


=head2 LastAttemptedDeployment => CodeDeploy_LastDeploymentInfo

  Information about the most recent attempted deployment to the
deployment group.


=head2 LastSuccessfulDeployment => CodeDeploy_LastDeploymentInfo

  Information about the most recent successful deployment to the
deployment group.


=head2 LoadBalancerInfo => CodeDeploy_LoadBalancerInfo

  Information about the load balancer to use in a deployment.


=head2 OnPremisesInstanceTagFilters => ArrayRef[CodeDeploy_TagFilter]

  The on-premises instance tags on which to filter. The deployment group
includes on-premises instances with any of the specified tags.


=head2 OnPremisesTagSet => CodeDeploy_OnPremisesTagSet

  Information about groups of tags applied to an on-premises instance.
The deployment group includes only on-premises instances identified by
all the tag groups. Cannot be used in the same call as
onPremisesInstanceTagFilters.


=head2 ServiceRoleArn => Str

  A service role Amazon Resource Name (ARN) that grants CodeDeploy
permission to make calls to AWS services on your behalf. For more
information, see Create a Service Role for AWS CodeDeploy
(https://docs.aws.amazon.com/codedeploy/latest/userguide/getting-started-create-service-role.html)
in the I<AWS CodeDeploy User Guide>.


=head2 TargetRevision => CodeDeploy_RevisionLocation

  Information about the deployment group's target revision, including
type and location.


=head2 TriggerConfigurations => ArrayRef[CodeDeploy_TriggerConfig]

  Information about triggers associated with the deployment group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

