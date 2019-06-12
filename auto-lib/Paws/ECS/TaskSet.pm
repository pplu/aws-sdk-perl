package Paws::ECS::TaskSet;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', request_name => 'clusterArn', traits => ['NameInRequest']);
  has ComputedDesiredCount => (is => 'ro', isa => 'Int', request_name => 'computedDesiredCount', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has ExternalId => (is => 'ro', isa => 'Str', request_name => 'externalId', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has LaunchType => (is => 'ro', isa => 'Str', request_name => 'launchType', traits => ['NameInRequest']);
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::ECS::LoadBalancer]', request_name => 'loadBalancers', traits => ['NameInRequest']);
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::ECS::NetworkConfiguration', request_name => 'networkConfiguration', traits => ['NameInRequest']);
  has PendingCount => (is => 'ro', isa => 'Int', request_name => 'pendingCount', traits => ['NameInRequest']);
  has PlatformVersion => (is => 'ro', isa => 'Str', request_name => 'platformVersion', traits => ['NameInRequest']);
  has RunningCount => (is => 'ro', isa => 'Int', request_name => 'runningCount', traits => ['NameInRequest']);
  has Scale => (is => 'ro', isa => 'Paws::ECS::Scale', request_name => 'scale', traits => ['NameInRequest']);
  has ServiceArn => (is => 'ro', isa => 'Str', request_name => 'serviceArn', traits => ['NameInRequest']);
  has ServiceRegistries => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceRegistry]', request_name => 'serviceRegistries', traits => ['NameInRequest']);
  has StabilityStatus => (is => 'ro', isa => 'Str', request_name => 'stabilityStatus', traits => ['NameInRequest']);
  has StabilityStatusAt => (is => 'ro', isa => 'Str', request_name => 'stabilityStatusAt', traits => ['NameInRequest']);
  has StartedBy => (is => 'ro', isa => 'Str', request_name => 'startedBy', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TaskDefinition => (is => 'ro', isa => 'Str', request_name => 'taskDefinition', traits => ['NameInRequest']);
  has TaskSetArn => (is => 'ro', isa => 'Str', request_name => 'taskSetArn', traits => ['NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::TaskSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::TaskSet object:

  $service_obj->Method(Att1 => { ClusterArn => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::TaskSet object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterArn

=head1 DESCRIPTION

Information about a set of Amazon ECS tasks in either an AWS CodeDeploy
or an C<EXTERNAL> deployment. An Amazon ECS task set includes details
such as the desired number of tasks, how many tasks are running, and
whether the task set serves production traffic.

=head1 ATTRIBUTES


=head2 ClusterArn => Str

  The Amazon Resource Name (ARN) of the cluster that the service that
hosts the task set exists in.


=head2 ComputedDesiredCount => Int

  The computed desired count for the task set. This is calculated by
multiplying the service's C<desiredCount> by the task set's C<scale>
percentage. The result is always rounded up. For example, if the
computed desired count is 1.2, it rounds up to 2 tasks.


=head2 CreatedAt => Str

  The Unix timestamp for when the task set was created.


=head2 ExternalId => Str

  The external ID associated with the task set.

If a task set is created by an AWS CodeDeploy deployment, the
C<externalId> parameter contains the AWS CodeDeploy deployment ID.

If a task set is created for an external deployment and is associated
with a service discovery registry, the C<externalId> parameter contains
the C<ECS_TASK_SET_EXTERNAL_ID> AWS Cloud Map attribute.


=head2 Id => Str

  The ID of the task set.


=head2 LaunchType => Str

  The launch type the tasks in the task set are using. For more
information, see Amazon ECS Launch Types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 LoadBalancers => ArrayRef[L<Paws::ECS::LoadBalancer>]

  Details on a load balancer that is used with a task set.


=head2 NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>

  The network configuration for the task set.


=head2 PendingCount => Int

  The number of tasks in the task set that are in the C<PENDING> status
during a deployment. A task in the C<PENDING> state is preparing to
enter the C<RUNNING> state. A task set enters the C<PENDING> status
when it launches for the first time or when it is restarted after being
in the C<STOPPED> state.


=head2 PlatformVersion => Str

  The platform version on which the tasks in the task set are running. A
platform version is only specified for tasks using the Fargate launch
type. If one is not specified, the C<LATEST> platform version is used
by default. For more information, see AWS Fargate Platform Versions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 RunningCount => Int

  The number of tasks in the task set that are in the C<RUNNING> status
during a deployment. A task in the C<RUNNING> state is running and
ready for use.


=head2 Scale => L<Paws::ECS::Scale>

  A floating-point percentage of the desired number of tasks to place and
keep running in the task set.


=head2 ServiceArn => Str

  The Amazon Resource Name (ARN) of the service the task set exists in.


=head2 ServiceRegistries => ArrayRef[L<Paws::ECS::ServiceRegistry>]

  The details of the service discovery registries to assign to this task
set. For more information, see Service Discovery
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html).


=head2 StabilityStatus => Str

  The stability status, which indicates whether the task set has reached
a steady state. If the following conditions are met, the task set will
be in C<STEADY_STATE>:

=over

=item *

The task C<runningCount> is equal to the C<computedDesiredCount>.

=item *

The C<pendingCount> is C<0>.

=item *

There are no tasks running on container instances in the C<DRAINING>
status.

=item *

All tasks are reporting a healthy status from the load balancers,
service discovery, and container health checks.

If a C<healthCheckGracePeriodSeconds> value was set when the service
was created, you may see a C<STEADY_STATE> reached since unhealthy
Elastic Load Balancing target health checks will be ignored until it
expires.

=back

If any of those conditions are not met, the stability status returns
C<STABILIZING>.


=head2 StabilityStatusAt => Str

  The Unix timestamp for when the task set stability status was
retrieved.


=head2 StartedBy => Str

  The tag specified when a task set is started. If the task set is
created by an AWS CodeDeploy deployment, the C<startedBy> parameter is
C<CODE_DEPLOY>. For a task set created for an external deployment, the
startedBy field isn't used.


=head2 Status => Str

  The status of the task set. The following describes each state:

=over

=item PRIMARY

The task set is serving production traffic.

=item ACTIVE

The task set is not serving production traffic.

=item DRAINING

The tasks in the task set are being stopped and their corresponding
targets are being deregistered from their target group.

=back



=head2 TaskDefinition => Str

  The task definition the task set is using.


=head2 TaskSetArn => Str

  The Amazon Resource Name (ARN) of the task set.


=head2 UpdatedAt => Str

  The Unix timestamp for when the task set was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

