# Generated from default/object.tt
package Paws::ECS::Service;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int Bool/;
  use Paws::ECS::Types qw/ECS_TaskSet ECS_ServiceEvent ECS_LoadBalancer ECS_NetworkConfiguration ECS_PlacementStrategy ECS_Deployment ECS_DeploymentController ECS_ServiceRegistry ECS_Tag ECS_DeploymentConfiguration ECS_PlacementConstraint/;
  has ClusterArn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has CreatedBy => (is => 'ro', isa => Str);
  has DeploymentConfiguration => (is => 'ro', isa => ECS_DeploymentConfiguration);
  has DeploymentController => (is => 'ro', isa => ECS_DeploymentController);
  has Deployments => (is => 'ro', isa => ArrayRef[ECS_Deployment]);
  has DesiredCount => (is => 'ro', isa => Int);
  has EnableECSManagedTags => (is => 'ro', isa => Bool);
  has Events => (is => 'ro', isa => ArrayRef[ECS_ServiceEvent]);
  has HealthCheckGracePeriodSeconds => (is => 'ro', isa => Int);
  has LaunchType => (is => 'ro', isa => Str);
  has LoadBalancers => (is => 'ro', isa => ArrayRef[ECS_LoadBalancer]);
  has NetworkConfiguration => (is => 'ro', isa => ECS_NetworkConfiguration);
  has PendingCount => (is => 'ro', isa => Int);
  has PlacementConstraints => (is => 'ro', isa => ArrayRef[ECS_PlacementConstraint]);
  has PlacementStrategy => (is => 'ro', isa => ArrayRef[ECS_PlacementStrategy]);
  has PlatformVersion => (is => 'ro', isa => Str);
  has PropagateTags => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);
  has RunningCount => (is => 'ro', isa => Int);
  has SchedulingStrategy => (is => 'ro', isa => Str);
  has ServiceArn => (is => 'ro', isa => Str);
  has ServiceName => (is => 'ro', isa => Str);
  has ServiceRegistries => (is => 'ro', isa => ArrayRef[ECS_ServiceRegistry]);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[ECS_Tag]);
  has TaskDefinition => (is => 'ro', isa => Str);
  has TaskSets => (is => 'ro', isa => ArrayRef[ECS_TaskSet]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PropagateTags' => 'propagateTags',
                       'LaunchType' => 'launchType',
                       'CreatedBy' => 'createdBy',
                       'ServiceRegistries' => 'serviceRegistries',
                       'Status' => 'status',
                       'LoadBalancers' => 'loadBalancers',
                       'HealthCheckGracePeriodSeconds' => 'healthCheckGracePeriodSeconds',
                       'DesiredCount' => 'desiredCount',
                       'ServiceArn' => 'serviceArn',
                       'RunningCount' => 'runningCount',
                       'PlatformVersion' => 'platformVersion',
                       'Deployments' => 'deployments',
                       'Tags' => 'tags',
                       'ServiceName' => 'serviceName',
                       'DeploymentConfiguration' => 'deploymentConfiguration',
                       'NetworkConfiguration' => 'networkConfiguration',
                       'RoleArn' => 'roleArn',
                       'TaskDefinition' => 'taskDefinition',
                       'PlacementStrategy' => 'placementStrategy',
                       'DeploymentController' => 'deploymentController',
                       'SchedulingStrategy' => 'schedulingStrategy',
                       'ClusterArn' => 'clusterArn',
                       'Events' => 'events',
                       'EnableECSManagedTags' => 'enableECSManagedTags',
                       'CreatedAt' => 'createdAt',
                       'PendingCount' => 'pendingCount',
                       'TaskSets' => 'taskSets',
                       'PlacementConstraints' => 'placementConstraints'
                     },
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'DeploymentConfiguration' => {
                                              'class' => 'Paws::ECS::DeploymentConfiguration',
                                              'type' => 'ECS_DeploymentConfiguration'
                                            },
               'NetworkConfiguration' => {
                                           'class' => 'Paws::ECS::NetworkConfiguration',
                                           'type' => 'ECS_NetworkConfiguration'
                                         },
               'RunningCount' => {
                                   'type' => 'Int'
                                 },
               'ServiceArn' => {
                                 'type' => 'Str'
                               },
               'ServiceName' => {
                                  'type' => 'Str'
                                },
               'PlatformVersion' => {
                                      'type' => 'Str'
                                    },
               'Deployments' => {
                                  'class' => 'Paws::ECS::Deployment',
                                  'type' => 'ArrayRef[ECS_Deployment]'
                                },
               'Tags' => {
                           'type' => 'ArrayRef[ECS_Tag]',
                           'class' => 'Paws::ECS::Tag'
                         },
               'LoadBalancers' => {
                                    'type' => 'ArrayRef[ECS_LoadBalancer]',
                                    'class' => 'Paws::ECS::LoadBalancer'
                                  },
               'HealthCheckGracePeriodSeconds' => {
                                                    'type' => 'Int'
                                                  },
               'DesiredCount' => {
                                   'type' => 'Int'
                                 },
               'ServiceRegistries' => {
                                        'class' => 'Paws::ECS::ServiceRegistry',
                                        'type' => 'ArrayRef[ECS_ServiceRegistry]'
                                      },
               'LaunchType' => {
                                 'type' => 'Str'
                               },
               'PropagateTags' => {
                                    'type' => 'Str'
                                  },
               'CreatedBy' => {
                                'type' => 'Str'
                              },
               'Status' => {
                             'type' => 'Str'
                           },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'PendingCount' => {
                                   'type' => 'Int'
                                 },
               'TaskSets' => {
                               'class' => 'Paws::ECS::TaskSet',
                               'type' => 'ArrayRef[ECS_TaskSet]'
                             },
               'PlacementConstraints' => {
                                           'type' => 'ArrayRef[ECS_PlacementConstraint]',
                                           'class' => 'Paws::ECS::PlacementConstraint'
                                         },
               'Events' => {
                             'type' => 'ArrayRef[ECS_ServiceEvent]',
                             'class' => 'Paws::ECS::ServiceEvent'
                           },
               'EnableECSManagedTags' => {
                                           'type' => 'Bool'
                                         },
               'SchedulingStrategy' => {
                                         'type' => 'Str'
                                       },
               'ClusterArn' => {
                                 'type' => 'Str'
                               },
               'TaskDefinition' => {
                                     'type' => 'Str'
                                   },
               'DeploymentController' => {
                                           'class' => 'Paws::ECS::DeploymentController',
                                           'type' => 'ECS_DeploymentController'
                                         },
               'PlacementStrategy' => {
                                        'class' => 'Paws::ECS::PlacementStrategy',
                                        'type' => 'ArrayRef[ECS_PlacementStrategy]'
                                      }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Service

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Service object:

  $service_obj->Method(Att1 => { ClusterArn => $value, ..., TaskSets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Service object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterArn

=head1 DESCRIPTION

Details on a service within a cluster

=head1 ATTRIBUTES


=head2 ClusterArn => Str

  The Amazon Resource Name (ARN) of the cluster that hosts the service.


=head2 CreatedAt => Str

  The Unix timestamp for when the service was created.


=head2 CreatedBy => Str

  The principal that created the service.


=head2 DeploymentConfiguration => ECS_DeploymentConfiguration

  Optional deployment parameters that control how many tasks run during
the deployment and the ordering of stopping and starting tasks.


=head2 DeploymentController => ECS_DeploymentController

  The deployment controller type the service is using. When using the
DescribeServices API, this field is omitted if the service is using the
C<ECS> deployment controller type.


=head2 Deployments => ArrayRef[ECS_Deployment]

  The current state of deployments for the service.


=head2 DesiredCount => Int

  The desired number of instantiations of the task definition to keep
running on the service. This value is specified when the service is
created with CreateService, and it can be modified with UpdateService.


=head2 EnableECSManagedTags => Bool

  Specifies whether to enable Amazon ECS managed tags for the tasks in
the service. For more information, see Tagging Your Amazon ECS
Resources
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 Events => ArrayRef[ECS_ServiceEvent]

  The event stream for your service. A maximum of 100 of the latest
events are displayed.


=head2 HealthCheckGracePeriodSeconds => Int

  The period of time, in seconds, that the Amazon ECS service scheduler
ignores unhealthy Elastic Load Balancing target health checks after a
task has first started.


=head2 LaunchType => Str

  The launch type on which your service is running. If no value is
specified, it will default to C<EC2>. Valid values include C<EC2> and
C<FARGATE>. For more information, see Amazon ECS Launch Types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 LoadBalancers => ArrayRef[ECS_LoadBalancer]

  A list of Elastic Load Balancing load balancer objects, containing the
load balancer name, the container name (as it appears in a container
definition), and the container port to access from the load balancer.


=head2 NetworkConfiguration => ECS_NetworkConfiguration

  The VPC subnet and security group configuration for tasks that receive
their own elastic network interface by using the C<awsvpc> networking
mode.


=head2 PendingCount => Int

  The number of tasks in the cluster that are in the C<PENDING> state.


=head2 PlacementConstraints => ArrayRef[ECS_PlacementConstraint]

  The placement constraints for the tasks in the service.


=head2 PlacementStrategy => ArrayRef[ECS_PlacementStrategy]

  The placement strategy that determines how tasks for the service are
placed.


=head2 PlatformVersion => Str

  The platform version on which to run your service. A platform version
is only specified for tasks using the Fargate launch type. If one is
not specified, the C<LATEST> platform version is used by default. For
more information, see AWS Fargate Platform Versions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 PropagateTags => Str

  Specifies whether to propagate the tags from the task definition or the
service to the task. If no value is specified, the tags are not
propagated.


=head2 RoleArn => Str

  The ARN of the IAM role associated with the service that allows the
Amazon ECS container agent to register container instances with an
Elastic Load Balancing load balancer.


=head2 RunningCount => Int

  The number of tasks in the cluster that are in the C<RUNNING> state.


=head2 SchedulingStrategy => Str

  The scheduling strategy to use for the service. For more information,
see Services
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html).

There are two service scheduler strategies available:

=over

=item *

C<REPLICA>-The replica scheduling strategy places and maintains the
desired number of tasks across your cluster. By default, the service
scheduler spreads tasks across Availability Zones. You can use task
placement strategies and constraints to customize task placement
decisions.

=item *

C<DAEMON>-The daemon scheduling strategy deploys exactly one task on
each container instance in your cluster. When you are using this
strategy, do not specify a desired number of tasks or any task
placement strategies.

Fargate tasks do not support the C<DAEMON> scheduling strategy.

=back



=head2 ServiceArn => Str

  The ARN that identifies the service. The ARN contains the
C<arn:aws:ecs> namespace, followed by the Region of the service, the
AWS account ID of the service owner, the C<service> namespace, and then
the service name. For example,
C<arn:aws:ecs:region:012345678910:service/my-service>.


=head2 ServiceName => Str

  The name of your service. Up to 255 letters (uppercase and lowercase),
numbers, and hyphens are allowed. Service names must be unique within a
cluster, but you can have similarly named services in multiple clusters
within a Region or across multiple Regions.


=head2 ServiceRegistries => ArrayRef[ECS_ServiceRegistry]

  The details of the service discovery registries to assign to this
service. For more information, see Service Discovery
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html).


=head2 Status => Str

  The status of the service. The valid values are C<ACTIVE>, C<DRAINING>,
or C<INACTIVE>.


=head2 Tags => ArrayRef[ECS_Tag]

  The metadata that you apply to the service to help you categorize and
organize them. Each tag consists of a key and an optional value, both
of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8

=item *

Maximum value length - 256 Unicode characters in UTF-8

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case-sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for AWS
use. You cannot edit or delete tag keys or values with this prefix.
Tags with this prefix do not count against your tags per resource
limit.

=back



=head2 TaskDefinition => Str

  The task definition to use for tasks in the service. This value is
specified when the service is created with CreateService, and it can be
modified with UpdateService.


=head2 TaskSets => ArrayRef[ECS_TaskSet]

  Information about a set of Amazon ECS tasks in either an AWS CodeDeploy
or an C<EXTERNAL> deployment. An Amazon ECS task set includes details
such as the desired number of tasks, how many tasks are running, and
whether the task set serves production traffic.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

