
package Paws::ECS::CreateService;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has DeploymentConfiguration => (is => 'ro', isa => 'Paws::ECS::DeploymentConfiguration', traits => ['NameInRequest'], request_name => 'deploymentConfiguration' );
  has DeploymentController => (is => 'ro', isa => 'Paws::ECS::DeploymentController', traits => ['NameInRequest'], request_name => 'deploymentController' );
  has DesiredCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'desiredCount' );
  has EnableECSManagedTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableECSManagedTags' );
  has HealthCheckGracePeriodSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'healthCheckGracePeriodSeconds' );
  has LaunchType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchType' );
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::ECS::LoadBalancer]', traits => ['NameInRequest'], request_name => 'loadBalancers' );
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::ECS::NetworkConfiguration', traits => ['NameInRequest'], request_name => 'networkConfiguration' );
  has PlacementConstraints => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementConstraint]', traits => ['NameInRequest'], request_name => 'placementConstraints' );
  has PlacementStrategy => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementStrategy]', traits => ['NameInRequest'], request_name => 'placementStrategy' );
  has PlatformVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platformVersion' );
  has PropagateTags => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'propagateTags' );
  has Role => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'role' );
  has SchedulingStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schedulingStrategy' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);
  has ServiceRegistries => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceRegistry]', traits => ['NameInRequest'], request_name => 'serviceRegistries' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TaskDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskDefinition' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::CreateServiceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateService - Arguments for method CreateService on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateService on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method CreateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateService.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To create a new service
    # This example creates a service in your default region called
    # ``ecs-simple-service``. The service uses the ``hello_world`` task
    # definition and it maintains 10 copies of that task.
    my $CreateServiceResponse = $ecs->CreateService(
      {
        'DesiredCount'   => 10,
        'ServiceName'    => 'ecs-simple-service',
        'TaskDefinition' => 'hello_world'
      }
    );

    # Results:
    my $service = $CreateServiceResponse->service;

    # Returns a L<Paws::ECS::CreateServiceResponse> object.
    # To create a new service behind a load balancer
    # This example creates a service in your default region called
    # ``ecs-simple-service-elb``. The service uses the ``ecs-demo`` task
    # definition and it maintains 10 copies of that task. You must reference an
    # existing load balancer in the same region by its name.
    my $CreateServiceResponse = $ecs->CreateService(
      {
        'DesiredCount'  => 10,
        'LoadBalancers' => [

          {
            'ContainerName'    => 'simple-app',
            'ContainerPort'    => 80,
            'LoadBalancerName' => 'EC2Contai-EcsElast-15DCDAURT3ZO2'
          }
        ],
        'Role'           => 'ecsServiceRole',
        'ServiceName'    => 'ecs-simple-service-elb',
        'TaskDefinition' => 'console-sample-app-static'
      }
    );

    # Results:
    my $service = $CreateServiceResponse->service;

    # Returns a L<Paws::ECS::CreateServiceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/CreateService>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 32 ASCII characters are allowed.



=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster on
which to run your service. If you do not specify a cluster, the default
cluster is assumed.



=head2 DeploymentConfiguration => L<Paws::ECS::DeploymentConfiguration>

Optional deployment parameters that control how many tasks run during
the deployment and the ordering of stopping and starting tasks.



=head2 DeploymentController => L<Paws::ECS::DeploymentController>

The deployment controller to use for the service.



=head2 DesiredCount => Int

The number of instantiations of the specified task definition to place
and keep running on your cluster.



=head2 EnableECSManagedTags => Bool

Specifies whether to enable Amazon ECS managed tags for the tasks
within the service. For more information, see Tagging Your Amazon ECS
Resources
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 HealthCheckGracePeriodSeconds => Int

The period of time, in seconds, that the Amazon ECS service scheduler
should ignore unhealthy Elastic Load Balancing target health checks
after a task has first started. This is only valid if your service is
configured to use a load balancer. If your service's tasks take a while
to start and respond to Elastic Load Balancing health checks, you can
specify a health check grace period of up to 7,200 seconds. During that
time, the ECS service scheduler ignores health check status. This grace
period can prevent the ECS service scheduler from marking tasks as
unhealthy and stopping them before they have time to come up.



=head2 LaunchType => Str

The launch type on which to run your service. For more information, see
Amazon ECS Launch Types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html)
in the I<Amazon Elastic Container Service Developer Guide>.

Valid values are: C<"EC2">, C<"FARGATE">

=head2 LoadBalancers => ArrayRef[L<Paws::ECS::LoadBalancer>]

A load balancer object representing the load balancer to use with your
service.

If the service is using the C<ECS> deployment controller, you are
limited to one load balancer or target group.

If the service is using the C<CODE_DEPLOY> deployment controller, the
service is required to use either an Application Load Balancer or
Network Load Balancer. When creating an AWS CodeDeploy deployment
group, you specify two target groups (referred to as a
C<targetGroupPair>). During a deployment, AWS CodeDeploy determines
which task set in your service has the status C<PRIMARY> and associates
one target group with it, and then associates the other target group
with the replacement task set. The load balancer can also have up to
two listeners: a required listener for production traffic and an
optional listener that allows you perform validation tests with Lambda
functions before routing production traffic to it.

After you create a service using the C<ECS> deployment controller, the
load balancer name or target group ARN, container name, and container
port specified in the service definition are immutable. If you are
using the C<CODE_DEPLOY> deployment controller, these values can be
changed when updating the service.

For Classic Load Balancers, this object must contain the load balancer
name, the container name (as it appears in a container definition), and
the container port to access from the load balancer. When a task from
this service is placed on a container instance, the container instance
is registered with the load balancer specified here.

For Application Load Balancers and Network Load Balancers, this object
must contain the load balancer target group ARN, the container name (as
it appears in a container definition), and the container port to access
from the load balancer. When a task from this service is placed on a
container instance, the container instance and port combination is
registered as a target in the target group specified here.

Services with tasks that use the C<awsvpc> network mode (for example,
those with the Fargate launch type) only support Application Load
Balancers and Network Load Balancers. Classic Load Balancers are not
supported. Also, when you create any target groups for these services,
you must choose C<ip> as the target type, not C<instance>, because
tasks that use the C<awsvpc> network mode are associated with an
elastic network interface, not an Amazon EC2 instance.



=head2 NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>

The network configuration for the service. This parameter is required
for task definitions that use the C<awsvpc> network mode to receive
their own elastic network interface, and it is not supported for other
network modes. For more information, see Task Networking
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 PlacementConstraints => ArrayRef[L<Paws::ECS::PlacementConstraint>]

An array of placement constraint objects to use for tasks in your
service. You can specify a maximum of 10 constraints per task (this
limit includes constraints in the task definition and those specified
at runtime).



=head2 PlacementStrategy => ArrayRef[L<Paws::ECS::PlacementStrategy>]

The placement strategy objects to use for tasks in your service. You
can specify a maximum of five strategy rules per service.



=head2 PlatformVersion => Str

The platform version on which your tasks in the service are running. A
platform version is only specified for tasks using the Fargate launch
type. If one is not specified, the C<LATEST> platform version is used
by default. For more information, see AWS Fargate Platform Versions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 PropagateTags => Str

Specifies whether to propagate the tags from the task definition or the
service to the tasks in the service. If no value is specified, the tags
are not propagated. Tags can only be propagated to the tasks within the
service during service creation. To add tags to a task after service
creation, use the TagResource API action.

Valid values are: C<"TASK_DEFINITION">, C<"SERVICE">

=head2 Role => Str

The name or full Amazon Resource Name (ARN) of the IAM role that allows
Amazon ECS to make calls to your load balancer on your behalf. This
parameter is only permitted if you are using a load balancer with your
service and your task definition does not use the C<awsvpc> network
mode. If you specify the C<role> parameter, you must also specify a
load balancer object with the C<loadBalancers> parameter.

If your account has already created the Amazon ECS service-linked role,
that role is used by default for your service unless you specify a role
here. The service-linked role is required if your task definition uses
the C<awsvpc> network mode, in which case you should not specify a role
here. For more information, see Using Service-Linked Roles for Amazon
ECS
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html)
in the I<Amazon Elastic Container Service Developer Guide>.

If your specified role has a path other than C</>, then you must either
specify the full role ARN (this is recommended) or prefix the role name
with the path. For example, if a role with the name C<bar> has a path
of C</foo/> then you would specify C</foo/bar> as the role name. For
more information, see Friendly Names and Paths
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names)
in the I<IAM User Guide>.



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
decisions. This scheduler strategy is required if using the
C<CODE_DEPLOY> deployment controller.

=item *

C<DAEMON>-The daemon scheduling strategy deploys exactly one task on
each active container instance that meets all of the task placement
constraints that you specify in your cluster. When you are using this
strategy, there is no need to specify a desired number of tasks, a task
placement strategy, or use Service Auto Scaling policies.

Tasks using the Fargate launch type or the C<CODE_DEPLOY> deploymenet
controller do not support the C<DAEMON> scheduling strategy.

=back


Valid values are: C<"REPLICA">, C<"DAEMON">

=head2 B<REQUIRED> ServiceName => Str

The name of your service. Up to 255 letters (uppercase and lowercase),
numbers, hyphens, and underscores are allowed. Service names must be
unique within a cluster, but you can have similarly named services in
multiple clusters within a Region or across multiple Regions.



=head2 ServiceRegistries => ArrayRef[L<Paws::ECS::ServiceRegistry>]

The details of the service discovery registries to assign to this
service. For more information, see Service Discovery
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html).

Service discovery is supported for Fargate tasks if you are using
platform version v1.1.0 or later. For more information, see AWS Fargate
Platform Versions
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).



=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

The metadata that you apply to the service to help you categorize and
organize them. Each tag consists of a key and an optional value, both
of which you define. When a service is deleted, the tags are deleted as
well. Tag keys can have a maximum character length of 128 characters,
and tag values can have a maximum length of 256 characters.



=head2 B<REQUIRED> TaskDefinition => Str

The C<family> and C<revision> (C<family:revision>) or full ARN of the
task definition to run in your service. If a C<revision> is not
specified, the latest C<ACTIVE> revision is used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateService in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

