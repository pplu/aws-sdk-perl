package Paws::ECS::Service;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', request_name => 'clusterArn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has CreatedBy => (is => 'ro', isa => 'Str', request_name => 'createdBy', traits => ['NameInRequest']);
  has DeploymentConfiguration => (is => 'ro', isa => 'Paws::ECS::DeploymentConfiguration', request_name => 'deploymentConfiguration', traits => ['NameInRequest']);
  has DeploymentController => (is => 'ro', isa => 'Paws::ECS::DeploymentController', request_name => 'deploymentController', traits => ['NameInRequest']);
  has Deployments => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Deployment]', request_name => 'deployments', traits => ['NameInRequest']);
  has DesiredCount => (is => 'ro', isa => 'Int', request_name => 'desiredCount', traits => ['NameInRequest']);
  has EnableECSManagedTags => (is => 'ro', isa => 'Bool', request_name => 'enableECSManagedTags', traits => ['NameInRequest']);
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceEvent]', request_name => 'events', traits => ['NameInRequest']);
  has HealthCheckGracePeriodSeconds => (is => 'ro', isa => 'Int', request_name => 'healthCheckGracePeriodSeconds', traits => ['NameInRequest']);
  has LaunchType => (is => 'ro', isa => 'Str', request_name => 'launchType', traits => ['NameInRequest']);
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::ECS::LoadBalancer]', request_name => 'loadBalancers', traits => ['NameInRequest']);
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::ECS::NetworkConfiguration', request_name => 'networkConfiguration', traits => ['NameInRequest']);
  has PendingCount => (is => 'ro', isa => 'Int', request_name => 'pendingCount', traits => ['NameInRequest']);
  has PlacementConstraints => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementConstraint]', request_name => 'placementConstraints', traits => ['NameInRequest']);
  has PlacementStrategy => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementStrategy]', request_name => 'placementStrategy', traits => ['NameInRequest']);
  has PlatformVersion => (is => 'ro', isa => 'Str', request_name => 'platformVersion', traits => ['NameInRequest']);
  has PropagateTags => (is => 'ro', isa => 'Str', request_name => 'propagateTags', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
  has RunningCount => (is => 'ro', isa => 'Int', request_name => 'runningCount', traits => ['NameInRequest']);
  has SchedulingStrategy => (is => 'ro', isa => 'Str', request_name => 'schedulingStrategy', traits => ['NameInRequest']);
  has ServiceArn => (is => 'ro', isa => 'Str', request_name => 'serviceArn', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);
  has ServiceRegistries => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceRegistry]', request_name => 'serviceRegistries', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', request_name => 'tags', traits => ['NameInRequest']);
  has TaskDefinition => (is => 'ro', isa => 'Str', request_name => 'taskDefinition', traits => ['NameInRequest']);
  has TaskSets => (is => 'ro', isa => 'ArrayRef[Paws::ECS::TaskSet]', request_name => 'taskSets', traits => ['NameInRequest']);
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


=head2 DeploymentConfiguration => L<Paws::ECS::DeploymentConfiguration>

  Optional deployment parameters that control how many tasks run during
the deployment and the ordering of stopping and starting tasks.


=head2 DeploymentController => L<Paws::ECS::DeploymentController>

  The deployment controller type the service is using.


=head2 Deployments => ArrayRef[L<Paws::ECS::Deployment>]

  The current state of deployments for the service.


=head2 DesiredCount => Int

  The desired number of instantiations of the task definition to keep
running on the service. This value is specified when the service is
created with CreateService, and it can be modified with UpdateService.


=head2 EnableECSManagedTags => Bool

  Specifies whether to enable Amazon ECS managed tags for the tasks in
the service. For more information, see Tagging Your Amazon ECS
Resources
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 Events => ArrayRef[L<Paws::ECS::ServiceEvent>]

  The event stream for your service. A maximum of 100 of the latest
events are displayed.


=head2 HealthCheckGracePeriodSeconds => Int

  The period of time, in seconds, that the Amazon ECS service scheduler
ignores unhealthy Elastic Load Balancing target health checks after a
task has first started.


=head2 LaunchType => Str

  The launch type on which your service is running. For more information,
see Amazon ECS Launch Types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 LoadBalancers => ArrayRef[L<Paws::ECS::LoadBalancer>]

  A list of Elastic Load Balancing load balancer objects, containing the
load balancer name, the container name (as it appears in a container
definition), and the container port to access from the load balancer.

Services with tasks that use the C<awsvpc> network mode (for example,
those with the Fargate launch type) only support Application Load
Balancers and Network Load Balancers. Classic Load Balancers are not
supported. Also, when you create any target groups for these services,
you must choose C<ip> as the target type, not C<instance>. Tasks that
use the C<awsvpc> network mode are associated with an elastic network
interface, not an Amazon EC2 instance.


=head2 NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>

  The VPC subnet and security group configuration for tasks that receive
their own elastic network interface by using the C<awsvpc> networking
mode.


=head2 PendingCount => Int

  The number of tasks in the cluster that are in the C<PENDING> state.


=head2 PlacementConstraints => ArrayRef[L<Paws::ECS::PlacementConstraint>]

  The placement constraints for the tasks in the service.


=head2 PlacementStrategy => ArrayRef[L<Paws::ECS::PlacementStrategy>]

  The placement strategy that determines how tasks for the service are
placed.


=head2 PlatformVersion => Str

  The platform version on which your tasks in the service are running. A
platform version is only specified for tasks using the Fargate launch
type. If one is not specified, the C<LATEST> platform version is used
by default. For more information, see AWS Fargate Platform Versions
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
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html).

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
C<arn:aws:ecs:I<region>:I<012345678910>:service/I<my-service> >.


=head2 ServiceName => Str

  The name of your service. Up to 255 letters (uppercase and lowercase),
numbers, hyphens, and underscores are allowed. Service names must be
unique within a cluster, but you can have similarly named services in
multiple clusters within a Region or across multiple Regions.


=head2 ServiceRegistries => ArrayRef[L<Paws::ECS::ServiceRegistry>]

  


=head2 Status => Str

  The status of the service. The valid values are C<ACTIVE>, C<DRAINING>,
or C<INACTIVE>.


=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

  The metadata that you apply to the service to help you categorize and
organize them. Each tag consists of a key and an optional value, both
of which you define. Tag keys can have a maximum character length of
128 characters, and tag values can have a maximum length of 256
characters.


=head2 TaskDefinition => Str

  The task definition to use for tasks in the service. This value is
specified when the service is created with CreateService, and it can be
modified with UpdateService.


=head2 TaskSets => ArrayRef[L<Paws::ECS::TaskSet>]

  Information about a set of Amazon ECS tasks in an AWS CodeDeploy
deployment. An Amazon ECS task set includes details such as the desired
number of tasks, how many tasks are running, and whether the task set
serves production traffic.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

