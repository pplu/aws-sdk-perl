# Generated from default/object.tt
package Paws::CodeDeploy::DeploymentInfo;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_ErrorInformation CodeDeploy_TargetInstances CodeDeploy_BlueGreenDeploymentConfiguration CodeDeploy_RevisionLocation CodeDeploy_RollbackInfo CodeDeploy_DeploymentOverview CodeDeploy_LoadBalancerInfo CodeDeploy_DeploymentStyle CodeDeploy_AutoRollbackConfiguration/;
  has AdditionalDeploymentStatusInfo => (is => 'ro', isa => Str);
  has ApplicationName => (is => 'ro', isa => Str);
  has AutoRollbackConfiguration => (is => 'ro', isa => CodeDeploy_AutoRollbackConfiguration);
  has BlueGreenDeploymentConfiguration => (is => 'ro', isa => CodeDeploy_BlueGreenDeploymentConfiguration);
  has CompleteTime => (is => 'ro', isa => Str);
  has ComputePlatform => (is => 'ro', isa => Str);
  has CreateTime => (is => 'ro', isa => Str);
  has Creator => (is => 'ro', isa => Str);
  has DeploymentConfigName => (is => 'ro', isa => Str);
  has DeploymentGroupName => (is => 'ro', isa => Str);
  has DeploymentId => (is => 'ro', isa => Str);
  has DeploymentOverview => (is => 'ro', isa => CodeDeploy_DeploymentOverview);
  has DeploymentStatusMessages => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has DeploymentStyle => (is => 'ro', isa => CodeDeploy_DeploymentStyle);
  has Description => (is => 'ro', isa => Str);
  has ErrorInformation => (is => 'ro', isa => CodeDeploy_ErrorInformation);
  has FileExistsBehavior => (is => 'ro', isa => Str);
  has IgnoreApplicationStopFailures => (is => 'ro', isa => Bool);
  has InstanceTerminationWaitTimeStarted => (is => 'ro', isa => Bool);
  has LoadBalancerInfo => (is => 'ro', isa => CodeDeploy_LoadBalancerInfo);
  has PreviousRevision => (is => 'ro', isa => CodeDeploy_RevisionLocation);
  has Revision => (is => 'ro', isa => CodeDeploy_RevisionLocation);
  has RollbackInfo => (is => 'ro', isa => CodeDeploy_RollbackInfo);
  has StartTime => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has TargetInstances => (is => 'ro', isa => CodeDeploy_TargetInstances);
  has UpdateOutdatedInstancesOnly => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DeploymentGroupName' => 'deploymentGroupName',
                       'Creator' => 'creator',
                       'DeploymentStatusMessages' => 'deploymentStatusMessages',
                       'UpdateOutdatedInstancesOnly' => 'updateOutdatedInstancesOnly',
                       'RollbackInfo' => 'rollbackInfo',
                       'DeploymentStyle' => 'deploymentStyle',
                       'PreviousRevision' => 'previousRevision',
                       'TargetInstances' => 'targetInstances',
                       'FileExistsBehavior' => 'fileExistsBehavior',
                       'InstanceTerminationWaitTimeStarted' => 'instanceTerminationWaitTimeStarted',
                       'AutoRollbackConfiguration' => 'autoRollbackConfiguration',
                       'DeploymentId' => 'deploymentId',
                       'ComputePlatform' => 'computePlatform',
                       'IgnoreApplicationStopFailures' => 'ignoreApplicationStopFailures',
                       'BlueGreenDeploymentConfiguration' => 'blueGreenDeploymentConfiguration',
                       'ApplicationName' => 'applicationName',
                       'Revision' => 'revision',
                       'CompleteTime' => 'completeTime',
                       'LoadBalancerInfo' => 'loadBalancerInfo',
                       'StartTime' => 'startTime',
                       'CreateTime' => 'createTime',
                       'Description' => 'description',
                       'AdditionalDeploymentStatusInfo' => 'additionalDeploymentStatusInfo',
                       'Status' => 'status',
                       'DeploymentOverview' => 'deploymentOverview',
                       'ErrorInformation' => 'errorInformation',
                       'DeploymentConfigName' => 'deploymentConfigName'
                     },
  'types' => {
               'DeploymentOverview' => {
                                         'type' => 'CodeDeploy_DeploymentOverview',
                                         'class' => 'Paws::CodeDeploy::DeploymentOverview'
                                       },
               'ErrorInformation' => {
                                       'class' => 'Paws::CodeDeploy::ErrorInformation',
                                       'type' => 'CodeDeploy_ErrorInformation'
                                     },
               'DeploymentConfigName' => {
                                           'type' => 'Str'
                                         },
               'AdditionalDeploymentStatusInfo' => {
                                                     'type' => 'Str'
                                                   },
               'Status' => {
                             'type' => 'Str'
                           },
               'CreateTime' => {
                                 'type' => 'Str'
                               },
               'Description' => {
                                  'type' => 'Str'
                                },
               'IgnoreApplicationStopFailures' => {
                                                    'type' => 'Bool'
                                                  },
               'BlueGreenDeploymentConfiguration' => {
                                                       'type' => 'CodeDeploy_BlueGreenDeploymentConfiguration',
                                                       'class' => 'Paws::CodeDeploy::BlueGreenDeploymentConfiguration'
                                                     },
               'ApplicationName' => {
                                      'type' => 'Str'
                                    },
               'Revision' => {
                               'type' => 'CodeDeploy_RevisionLocation',
                               'class' => 'Paws::CodeDeploy::RevisionLocation'
                             },
               'CompleteTime' => {
                                   'type' => 'Str'
                                 },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'LoadBalancerInfo' => {
                                       'type' => 'CodeDeploy_LoadBalancerInfo',
                                       'class' => 'Paws::CodeDeploy::LoadBalancerInfo'
                                     },
               'ComputePlatform' => {
                                      'type' => 'Str'
                                    },
               'DeploymentStyle' => {
                                      'class' => 'Paws::CodeDeploy::DeploymentStyle',
                                      'type' => 'CodeDeploy_DeploymentStyle'
                                    },
               'PreviousRevision' => {
                                       'type' => 'CodeDeploy_RevisionLocation',
                                       'class' => 'Paws::CodeDeploy::RevisionLocation'
                                     },
               'FileExistsBehavior' => {
                                         'type' => 'Str'
                                       },
               'TargetInstances' => {
                                      'class' => 'Paws::CodeDeploy::TargetInstances',
                                      'type' => 'CodeDeploy_TargetInstances'
                                    },
               'InstanceTerminationWaitTimeStarted' => {
                                                         'type' => 'Bool'
                                                       },
               'DeploymentId' => {
                                   'type' => 'Str'
                                 },
               'AutoRollbackConfiguration' => {
                                                'class' => 'Paws::CodeDeploy::AutoRollbackConfiguration',
                                                'type' => 'CodeDeploy_AutoRollbackConfiguration'
                                              },
               'RollbackInfo' => {
                                   'type' => 'CodeDeploy_RollbackInfo',
                                   'class' => 'Paws::CodeDeploy::RollbackInfo'
                                 },
               'DeploymentGroupName' => {
                                          'type' => 'Str'
                                        },
               'Creator' => {
                              'type' => 'Str'
                            },
               'DeploymentStatusMessages' => {
                                               'type' => 'ArrayRef[Str|Undef]'
                                             },
               'UpdateOutdatedInstancesOnly' => {
                                                  'type' => 'Bool'
                                                }
             }
}
;
    return $Params_map;
  }


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


=head2 AutoRollbackConfiguration => CodeDeploy_AutoRollbackConfiguration

  Information about the automatic rollback configuration associated with
the deployment.


=head2 BlueGreenDeploymentConfiguration => CodeDeploy_BlueGreenDeploymentConfiguration

  Information about blue/green deployment options for this deployment.


=head2 CompleteTime => Str

  A timestamp that indicates when the deployment was complete.


=head2 ComputePlatform => Str

  The destination platform type for the deployment (C<Lambda>, C<Server>,
or C<ECS>).


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


=head2 DeploymentOverview => CodeDeploy_DeploymentOverview

  A summary of the deployment status of the instances in the deployment.


=head2 DeploymentStatusMessages => ArrayRef[Str|Undef]

  Messages that contain information about the status of a deployment.


=head2 DeploymentStyle => CodeDeploy_DeploymentStyle

  Information about the type of deployment, either in-place or
blue/green, you want to run and whether to route deployment traffic
behind a load balancer.


=head2 Description => Str

  A comment about the deployment.


=head2 ErrorInformation => CodeDeploy_ErrorInformation

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

  If true, then if an C<ApplicationStop>, C<BeforeBlockTraffic>, or
C<AfterBlockTraffic> deployment lifecycle event to an instance fails,
then the deployment continues to the next deployment lifecycle event.
For example, if C<ApplicationStop> fails, the deployment continues with
DownloadBundle. If C<BeforeBlockTraffic> fails, the deployment
continues with C<BlockTraffic>. If C<AfterBlockTraffic> fails, the
deployment continues with C<ApplicationStop>.

If false or not specified, then if a lifecycle event fails during a
deployment to an instance, that deployment fails. If deployment to that
instance is part of an overall deployment and the number of healthy
hosts is not less than the minimum number of healthy hosts, then a
deployment to the next instance is attempted.

During a deployment, the AWS CodeDeploy agent runs the scripts
specified for C<ApplicationStop>, C<BeforeBlockTraffic>, and
C<AfterBlockTraffic> in the AppSpec file from the previous successful
deployment. (All other scripts are run from the AppSpec file in the
current deployment.) If one of these scripts contains an error and does
not run successfully, the deployment can fail.

If the cause of the failure is a script from the last successful
deployment that will never run successfully, create a new deployment
and use C<ignoreApplicationStopFailures> to specify that the
C<ApplicationStop>, C<BeforeBlockTraffic>, and C<AfterBlockTraffic>
failures should be ignored.


=head2 InstanceTerminationWaitTimeStarted => Bool

  Indicates whether the wait period set for the termination of instances
in the original environment has started. Status is 'false' if the
KEEP_ALIVE option is specified. Otherwise, 'true' as soon as the
termination wait period starts.


=head2 LoadBalancerInfo => CodeDeploy_LoadBalancerInfo

  Information about the load balancer used in the deployment.


=head2 PreviousRevision => CodeDeploy_RevisionLocation

  Information about the application revision that was deployed to the
deployment group before the most recent successful deployment.


=head2 Revision => CodeDeploy_RevisionLocation

  Information about the location of stored application artifacts and the
service from which to retrieve them.


=head2 RollbackInfo => CodeDeploy_RollbackInfo

  Information about a deployment rollback.


=head2 StartTime => Str

  A timestamp that indicates when the deployment was deployed to the
deployment group.

In some cases, the reported value of the start time might be later than
the complete time. This is due to differences in the clock settings of
backend servers that participate in the deployment process.


=head2 Status => Str

  The current state of the deployment as a whole.


=head2 TargetInstances => CodeDeploy_TargetInstances

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

