package Paws::ECS;
  use Moose;
  sub service { 'ecs' }
  sub signing_name { 'ecs' }
  sub version { '2014-11-13' }
  sub target_prefix { 'AmazonEC2ContainerServiceV20141113' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::CreateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccountSetting {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeleteAccountSetting', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeleteAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeleteService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterContainerInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeregisterContainerInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeregisterTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContainerInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeContainerInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DiscoverPollEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DiscoverPollEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContainerInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListContainerInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTaskDefinitionFamilies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListTaskDefinitionFamilies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTaskDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListTaskDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccountSetting {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::PutAccountSetting', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccountSettingDefault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::PutAccountSettingDefault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::PutAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterContainerInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::RegisterContainerInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::RegisterTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RunTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::RunTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::StartTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::StopTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitContainerStateChange {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::SubmitContainerStateChange', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitTaskStateChange {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::SubmitTaskStateChange', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContainerAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateContainerAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContainerInstancesState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateContainerInstancesState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccountSettings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountSettings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAccountSettings(@_, nextToken => $next_result->nextToken);
        push @{ $result->settings }, @{ $next_result->settings };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'settings') foreach (@{ $result->settings });
        $result = $self->ListAccountSettings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'settings') foreach (@{ $result->settings });
    }

    return undef
  }
  sub ListAllAttributes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAttributes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAttributes(@_, nextToken => $next_result->nextToken);
        push @{ $result->attributes }, @{ $next_result->attributes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'attributes') foreach (@{ $result->attributes });
        $result = $self->ListAttributes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'attributes') foreach (@{ $result->attributes });
    }

    return undef
  }
  sub ListAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListClusters(@_, nextToken => $next_result->nextToken);
        push @{ $result->clusterArns }, @{ $next_result->clusterArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'clusterArns') foreach (@{ $result->clusterArns });
        $result = $self->ListClusters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'clusterArns') foreach (@{ $result->clusterArns });
    }

    return undef
  }
  sub ListAllContainerInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContainerInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListContainerInstances(@_, nextToken => $next_result->nextToken);
        push @{ $result->containerInstanceArns }, @{ $next_result->containerInstanceArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'containerInstanceArns') foreach (@{ $result->containerInstanceArns });
        $result = $self->ListContainerInstances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'containerInstanceArns') foreach (@{ $result->containerInstanceArns });
    }

    return undef
  }
  sub ListAllServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServices(@_, nextToken => $next_result->nextToken);
        push @{ $result->serviceArns }, @{ $next_result->serviceArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'serviceArns') foreach (@{ $result->serviceArns });
        $result = $self->ListServices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'serviceArns') foreach (@{ $result->serviceArns });
    }

    return undef
  }
  sub ListAllTaskDefinitionFamilies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTaskDefinitionFamilies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTaskDefinitionFamilies(@_, nextToken => $next_result->nextToken);
        push @{ $result->families }, @{ $next_result->families };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'families') foreach (@{ $result->families });
        $result = $self->ListTaskDefinitionFamilies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'families') foreach (@{ $result->families });
    }

    return undef
  }
  sub ListAllTaskDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTaskDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTaskDefinitions(@_, nextToken => $next_result->nextToken);
        push @{ $result->taskDefinitionArns }, @{ $next_result->taskDefinitionArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'taskDefinitionArns') foreach (@{ $result->taskDefinitionArns });
        $result = $self->ListTaskDefinitions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'taskDefinitionArns') foreach (@{ $result->taskDefinitionArns });
    }

    return undef
  }
  sub ListAllTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTasks(@_, nextToken => $next_result->nextToken);
        push @{ $result->taskArns }, @{ $next_result->taskArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'taskArns') foreach (@{ $result->taskArns });
        $result = $self->ListTasks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'taskArns') foreach (@{ $result->taskArns });
    }

    return undef
  }


  sub operations { qw/CreateCluster CreateService DeleteAccountSetting DeleteAttributes DeleteCluster DeleteService DeregisterContainerInstance DeregisterTaskDefinition DescribeClusters DescribeContainerInstances DescribeServices DescribeTaskDefinition DescribeTasks DiscoverPollEndpoint ListAccountSettings ListAttributes ListClusters ListContainerInstances ListServices ListTagsForResource ListTaskDefinitionFamilies ListTaskDefinitions ListTasks PutAccountSetting PutAccountSettingDefault PutAttributes RegisterContainerInstance RegisterTaskDefinition RunTask StartTask StopTask SubmitContainerStateChange SubmitTaskStateChange TagResource UntagResource UpdateContainerAgent UpdateContainerInstancesState UpdateService / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS - Perl Interface to AWS Amazon EC2 Container Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ECS');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Elastic Container Service (Amazon ECS) is a highly scalable,
fast, container management service that makes it easy to run, stop, and
manage Docker containers on a cluster. You can host your cluster on a
serverless infrastructure that is managed by Amazon ECS by launching
your services or tasks using the Fargate launch type. For more control,
you can host your tasks on a cluster of Amazon Elastic Compute Cloud
(Amazon EC2) instances that you manage by using the EC2 launch type.
For more information about launch types, see Amazon ECS Launch Types
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html).

Amazon ECS lets you launch and stop container-based applications with
simple API calls, allows you to get the state of your cluster from a
centralized service, and gives you access to many familiar Amazon EC2
features.

You can use Amazon ECS to schedule the placement of containers across
your cluster based on your resource needs, isolation policies, and
availability requirements. Amazon ECS eliminates the need for you to
operate your own cluster management and configuration management
systems or worry about scaling your management infrastructure.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13>


=head1 METHODS

=head2 CreateCluster

=over

=item [ClusterName => Str]

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]


=back

Each argument is described in detail in: L<Paws::ECS::CreateCluster>

Returns: a L<Paws::ECS::CreateClusterResponse> instance

Creates a new Amazon ECS cluster. By default, your account receives a
C<default> cluster when you launch your first container instance.
However, you can create your own cluster with a unique name with the
C<CreateCluster> action.

When you call the CreateCluster API operation, Amazon ECS attempts to
create the service-linked role for your account so that required
resources in other AWS services can be managed on your behalf. However,
if the IAM user that makes the call does not have permissions to create
the service-linked role, it is not created. For more information, see
Using Service-Linked Roles for Amazon ECS
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 CreateService

=over

=item ServiceName => Str

=item TaskDefinition => Str

=item [ClientToken => Str]

=item [Cluster => Str]

=item [DeploymentConfiguration => L<Paws::ECS::DeploymentConfiguration>]

=item [DeploymentController => L<Paws::ECS::DeploymentController>]

=item [DesiredCount => Int]

=item [EnableECSManagedTags => Bool]

=item [HealthCheckGracePeriodSeconds => Int]

=item [LaunchType => Str]

=item [LoadBalancers => ArrayRef[L<Paws::ECS::LoadBalancer>]]

=item [NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>]

=item [PlacementConstraints => ArrayRef[L<Paws::ECS::PlacementConstraint>]]

=item [PlacementStrategy => ArrayRef[L<Paws::ECS::PlacementStrategy>]]

=item [PlatformVersion => Str]

=item [PropagateTags => Str]

=item [Role => Str]

=item [SchedulingStrategy => Str]

=item [ServiceRegistries => ArrayRef[L<Paws::ECS::ServiceRegistry>]]

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]


=back

Each argument is described in detail in: L<Paws::ECS::CreateService>

Returns: a L<Paws::ECS::CreateServiceResponse> instance

Runs and maintains a desired number of tasks from a specified task
definition. If the number of tasks running in a service drops below
C<desiredCount>, Amazon ECS spawns another copy of the task in the
specified cluster. To update an existing service, see UpdateService.

In addition to maintaining the desired count of tasks in your service,
you can optionally run your service behind a load balancer. The load
balancer distributes traffic across the tasks that are associated with
the service. For more information, see Service Load Balancing
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html)
in the I<Amazon Elastic Container Service Developer Guide>.

You can optionally specify a deployment configuration for your service.
The deployment is triggered by changing properties, such as the task
definition or the desired count of a service, with an UpdateService
operation.

If a service is using the C<ECS> deployment controller, the B<minimum
healthy percent> represents a lower limit on the number of tasks in a
service that must remain in the C<RUNNING> state during a deployment,
as a percentage of the desired number of tasks (rounded up to the
nearest integer), and while any container instances are in the
C<DRAINING> state if the service contains tasks using the EC2 launch
type. This parameter enables you to deploy without using additional
cluster capacity. For example, if your service has a desired number of
four tasks and a minimum healthy percent of 50%, the scheduler may stop
two existing tasks to free up cluster capacity before starting two new
tasks. Tasks for services that I<do not> use a load balancer are
considered healthy if they are in the C<RUNNING> state; tasks for
services that I<do> use a load balancer are considered healthy if they
are in the C<RUNNING> state and they are reported as healthy by the
load balancer. The default value for minimum healthy percent is 100%.

If a service is using the C<ECS> deployment controller, the B<maximum
percent> parameter represents an upper limit on the number of tasks in
a service that are allowed in the C<RUNNING> or C<PENDING> state during
a deployment, as a percentage of the desired number of tasks (rounded
down to the nearest integer), and while any container instances are in
the C<DRAINING> state if the service contains tasks using the EC2
launch type. This parameter enables you to define the deployment batch
size. For example, if your service has a desired number of four tasks
and a maximum percent value of 200%, the scheduler may start four new
tasks before stopping the four older tasks (provided that the cluster
resources required to do this are available). The default value for
maximum percent is 200%.

If a service is using the C<CODE_DEPLOY> deployment controller and
tasks that use the EC2 launch type, the B<minimum healthy percent> and
B<maximum percent> values are only used to define the lower and upper
limit on the number of the tasks in the service that remain in the
C<RUNNING> state while the container instances are in the C<DRAINING>
state. If the tasks in the service use the Fargate launch type, the
minimum healthy percent and maximum percent values are not used,
although they are currently visible when describing your service.

Tasks for services that I<do not> use a load balancer are considered
healthy if they are in the C<RUNNING> state. Tasks for services that
I<do> use a load balancer are considered healthy if they are in the
C<RUNNING> state and the container instance they are hosted on is
reported as healthy by the load balancer. The default value for a
replica service for C<minimumHealthyPercent> is 100%. The default value
for a daemon service for C<minimumHealthyPercent> is 0%.

When the service scheduler launches new tasks, it determines task
placement in your cluster using the following logic:

=over

=item *

Determine which of the container instances in your cluster can support
your service's task definition (for example, they have the required
CPU, memory, ports, and container instance attributes).

=item *

By default, the service scheduler attempts to balance tasks across
Availability Zones in this manner (although you can choose a different
placement strategy) with the C<placementStrategy> parameter):

=over

=item *

Sort the valid container instances, giving priority to instances that
have the fewest number of running tasks for this service in their
respective Availability Zone. For example, if zone A has one running
service task and zones B and C each have zero, valid container
instances in either zone B or C are considered optimal for placement.

=item *

Place the new service task on a valid container instance in an optimal
Availability Zone (based on the previous steps), favoring container
instances with the fewest number of running tasks for this service.

=back

=back



=head2 DeleteAccountSetting

=over

=item Name => Str

=item [PrincipalArn => Str]


=back

Each argument is described in detail in: L<Paws::ECS::DeleteAccountSetting>

Returns: a L<Paws::ECS::DeleteAccountSettingResponse> instance

Modifies the ARN and resource ID format of a resource for a specified
IAM user, IAM role, or the root user for an account. You can specify
whether the new ARN and resource ID format are disabled for new
resources that are created.


=head2 DeleteAttributes

=over

=item Attributes => ArrayRef[L<Paws::ECS::Attribute>]

=item [Cluster => Str]


=back

Each argument is described in detail in: L<Paws::ECS::DeleteAttributes>

Returns: a L<Paws::ECS::DeleteAttributesResponse> instance

Deletes one or more custom attributes from an Amazon ECS resource.


=head2 DeleteCluster

=over

=item Cluster => Str


=back

Each argument is described in detail in: L<Paws::ECS::DeleteCluster>

Returns: a L<Paws::ECS::DeleteClusterResponse> instance

Deletes the specified cluster. You must deregister all container
instances from this cluster before you may delete it. You can list the
container instances in a cluster with ListContainerInstances and
deregister them with DeregisterContainerInstance.


=head2 DeleteService

=over

=item Service => Str

=item [Cluster => Str]

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::ECS::DeleteService>

Returns: a L<Paws::ECS::DeleteServiceResponse> instance

Deletes a specified service within a cluster. You can delete a service
if you have no running tasks in it and the desired task count is zero.
If the service is actively maintaining tasks, you cannot delete it, and
you must update the service to a desired task count of zero. For more
information, see UpdateService.

When you delete a service, if there are still running tasks that
require cleanup, the service status moves from C<ACTIVE> to
C<DRAINING>, and the service is no longer visible in the console or in
the ListServices API operation. After the tasks have stopped, then the
service status moves from C<DRAINING> to C<INACTIVE>. Services in the
C<DRAINING> or C<INACTIVE> status can still be viewed with the
DescribeServices API operation. However, in the future, C<INACTIVE>
services may be cleaned up and purged from Amazon ECS record keeping,
and DescribeServices calls on those services return a
C<ServiceNotFoundException> error.

If you attempt to create a new service with the same name as an
existing service in either C<ACTIVE> or C<DRAINING> status, you receive
an error.


=head2 DeregisterContainerInstance

=over

=item ContainerInstance => Str

=item [Cluster => Str]

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::ECS::DeregisterContainerInstance>

Returns: a L<Paws::ECS::DeregisterContainerInstanceResponse> instance

Deregisters an Amazon ECS container instance from the specified
cluster. This instance is no longer available to run tasks.

If you intend to use the container instance for some other purpose
after deregistration, you should stop all of the tasks running on the
container instance before deregistration. That prevents any orphaned
tasks from consuming resources.

Deregistering a container instance removes the instance from a cluster,
but it does not terminate the EC2 instance. If you are finished using
the instance, be sure to terminate it in the Amazon EC2 console to stop
billing.

If you terminate a running container instance, Amazon ECS automatically
deregisters the instance from your cluster (stopped container instances
or instances with disconnected agents are not automatically
deregistered when terminated).


=head2 DeregisterTaskDefinition

=over

=item TaskDefinition => Str


=back

Each argument is described in detail in: L<Paws::ECS::DeregisterTaskDefinition>

Returns: a L<Paws::ECS::DeregisterTaskDefinitionResponse> instance

Deregisters the specified task definition by family and revision. Upon
deregistration, the task definition is marked as C<INACTIVE>. Existing
tasks and services that reference an C<INACTIVE> task definition
continue to run without disruption. Existing services that reference an
C<INACTIVE> task definition can still scale up or down by modifying the
service's desired count.

You cannot use an C<INACTIVE> task definition to run new tasks or
create new services, and you cannot update an existing service to
reference an C<INACTIVE> task definition. However, there may be up to a
10-minute window following deregistration where these restrictions have
not yet taken effect.

At this time, C<INACTIVE> task definitions remain discoverable in your
account indefinitely. However, this behavior is subject to change in
the future, so you should not rely on C<INACTIVE> task definitions
persisting beyond the lifecycle of any associated tasks and services.


=head2 DescribeClusters

=over

=item [Clusters => ArrayRef[Str|Undef]]

=item [Include => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeClusters>

Returns: a L<Paws::ECS::DescribeClustersResponse> instance

Describes one or more of your clusters.


=head2 DescribeContainerInstances

=over

=item ContainerInstances => ArrayRef[Str|Undef]

=item [Cluster => Str]

=item [Include => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeContainerInstances>

Returns: a L<Paws::ECS::DescribeContainerInstancesResponse> instance

Describes Amazon Elastic Container Service container instances. Returns
metadata about registered and remaining resources on each container
instance requested.


=head2 DescribeServices

=over

=item Services => ArrayRef[Str|Undef]

=item [Cluster => Str]

=item [Include => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeServices>

Returns: a L<Paws::ECS::DescribeServicesResponse> instance

Describes the specified services running in your cluster.


=head2 DescribeTaskDefinition

=over

=item TaskDefinition => Str

=item [Include => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeTaskDefinition>

Returns: a L<Paws::ECS::DescribeTaskDefinitionResponse> instance

Describes a task definition. You can specify a C<family> and
C<revision> to find information about a specific task definition, or
you can simply specify the family to find the latest C<ACTIVE> revision
in that family.

You can only describe C<INACTIVE> task definitions while an active task
or service references them.


=head2 DescribeTasks

=over

=item Tasks => ArrayRef[Str|Undef]

=item [Cluster => Str]

=item [Include => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeTasks>

Returns: a L<Paws::ECS::DescribeTasksResponse> instance

Describes a specified task or tasks.


=head2 DiscoverPollEndpoint

=over

=item [Cluster => Str]

=item [ContainerInstance => Str]


=back

Each argument is described in detail in: L<Paws::ECS::DiscoverPollEndpoint>

Returns: a L<Paws::ECS::DiscoverPollEndpointResponse> instance

This action is only used by the Amazon ECS agent, and it is not
intended for use outside of the agent.

Returns an endpoint for the Amazon ECS agent to poll for updates.


=head2 ListAccountSettings

=over

=item [EffectiveSettings => Bool]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [PrincipalArn => Str]

=item [Value => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListAccountSettings>

Returns: a L<Paws::ECS::ListAccountSettingsResponse> instance

Lists the account settings for an Amazon ECS resource for a specified
principal.


=head2 ListAttributes

=over

=item TargetType => Str

=item [AttributeName => Str]

=item [AttributeValue => Str]

=item [Cluster => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListAttributes>

Returns: a L<Paws::ECS::ListAttributesResponse> instance

Lists the attributes for Amazon ECS resources within a specified target
type and cluster. When you specify a target type and cluster,
C<ListAttributes> returns a list of attribute objects, one for each
attribute on each resource. You can filter the list of results to a
single attribute name to only return results that have that name. You
can also filter the results by attribute name and value, for example,
to see which container instances in a cluster are running a Linux AMI
(C<ecs.os-type=linux>).


=head2 ListClusters

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListClusters>

Returns: a L<Paws::ECS::ListClustersResponse> instance

Returns a list of existing clusters.


=head2 ListContainerInstances

=over

=item [Cluster => Str]

=item [Filter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListContainerInstances>

Returns: a L<Paws::ECS::ListContainerInstancesResponse> instance

Returns a list of container instances in a specified cluster. You can
filter the results of a C<ListContainerInstances> operation with
cluster query language statements inside the C<filter> parameter. For
more information, see Cluster Query Language
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 ListServices

=over

=item [Cluster => Str]

=item [LaunchType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SchedulingStrategy => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListServices>

Returns: a L<Paws::ECS::ListServicesResponse> instance

Lists the services that are running in a specified cluster.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ECS::ListTagsForResource>

Returns: a L<Paws::ECS::ListTagsForResourceResponse> instance

List the tags for an Amazon ECS resource.


=head2 ListTaskDefinitionFamilies

=over

=item [FamilyPrefix => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListTaskDefinitionFamilies>

Returns: a L<Paws::ECS::ListTaskDefinitionFamiliesResponse> instance

Returns a list of task definition families that are registered to your
account (which may include task definition families that no longer have
any C<ACTIVE> task definition revisions).

You can filter out task definition families that do not contain any
C<ACTIVE> task definition revisions by setting the C<status> parameter
to C<ACTIVE>. You can also filter the results with the C<familyPrefix>
parameter.


=head2 ListTaskDefinitions

=over

=item [FamilyPrefix => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListTaskDefinitions>

Returns: a L<Paws::ECS::ListTaskDefinitionsResponse> instance

Returns a list of task definitions that are registered to your account.
You can filter the results by family name with the C<familyPrefix>
parameter or by status with the C<status> parameter.


=head2 ListTasks

=over

=item [Cluster => Str]

=item [ContainerInstance => Str]

=item [DesiredStatus => Str]

=item [Family => Str]

=item [LaunchType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceName => Str]

=item [StartedBy => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListTasks>

Returns: a L<Paws::ECS::ListTasksResponse> instance

Returns a list of tasks for a specified cluster. You can filter the
results by family name, by a particular container instance, or by the
desired status of the task with the C<family>, C<containerInstance>,
and C<desiredStatus> parameters.

Recently stopped tasks might appear in the returned results. Currently,
stopped tasks appear in the returned results for at least one hour.


=head2 PutAccountSetting

=over

=item Name => Str

=item Value => Str

=item [PrincipalArn => Str]


=back

Each argument is described in detail in: L<Paws::ECS::PutAccountSetting>

Returns: a L<Paws::ECS::PutAccountSettingResponse> instance

Modifies the ARN and resource ID format of a resource type for a
specified IAM user, IAM role, or the root user for an account. If the
account setting for the root user is changed, it sets the default
setting for all of the IAM users and roles for which no individual
account setting has been set. The opt-in and opt-out account setting
can be set for each Amazon ECS resource separately. The ARN and
resource ID format of a resource will be defined by the opt-in status
of the IAM user or role that created the resource. Enabling this
setting is required to use new Amazon ECS features such as resource
tagging. For more information, see Amazon Resource Names (ARNs) and IDs
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-resource-ids.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 PutAccountSettingDefault

=over

=item Name => Str

=item Value => Str


=back

Each argument is described in detail in: L<Paws::ECS::PutAccountSettingDefault>

Returns: a L<Paws::ECS::PutAccountSettingDefaultResponse> instance

Modifies the ARN and resource ID format of a resource type for all IAM
users on an account for which no individual account setting has been
set. Enabling this setting is required to use new Amazon ECS features
such as resource tagging.


=head2 PutAttributes

=over

=item Attributes => ArrayRef[L<Paws::ECS::Attribute>]

=item [Cluster => Str]


=back

Each argument is described in detail in: L<Paws::ECS::PutAttributes>

Returns: a L<Paws::ECS::PutAttributesResponse> instance

Create or update an attribute on an Amazon ECS resource. If the
attribute does not exist, it is created. If the attribute exists, its
value is replaced with the specified value. To delete an attribute, use
DeleteAttributes. For more information, see Attributes
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 RegisterContainerInstance

=over

=item [Attributes => ArrayRef[L<Paws::ECS::Attribute>]]

=item [Cluster => Str]

=item [ContainerInstanceArn => Str]

=item [InstanceIdentityDocument => Str]

=item [InstanceIdentityDocumentSignature => Str]

=item [PlatformDevices => ArrayRef[L<Paws::ECS::PlatformDevice>]]

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]

=item [TotalResources => ArrayRef[L<Paws::ECS::Resource>]]

=item [VersionInfo => L<Paws::ECS::VersionInfo>]


=back

Each argument is described in detail in: L<Paws::ECS::RegisterContainerInstance>

Returns: a L<Paws::ECS::RegisterContainerInstanceResponse> instance

This action is only used by the Amazon ECS agent, and it is not
intended for use outside of the agent.

Registers an EC2 instance into the specified cluster. This instance
becomes available to place containers on.


=head2 RegisterTaskDefinition

=over

=item ContainerDefinitions => ArrayRef[L<Paws::ECS::ContainerDefinition>]

=item Family => Str

=item [Cpu => Str]

=item [ExecutionRoleArn => Str]

=item [IpcMode => Str]

=item [Memory => Str]

=item [NetworkMode => Str]

=item [PidMode => Str]

=item [PlacementConstraints => ArrayRef[L<Paws::ECS::TaskDefinitionPlacementConstraint>]]

=item [RequiresCompatibilities => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]

=item [TaskRoleArn => Str]

=item [Volumes => ArrayRef[L<Paws::ECS::Volume>]]


=back

Each argument is described in detail in: L<Paws::ECS::RegisterTaskDefinition>

Returns: a L<Paws::ECS::RegisterTaskDefinitionResponse> instance

Registers a new task definition from the supplied C<family> and
C<containerDefinitions>. Optionally, you can add data volumes to your
containers with the C<volumes> parameter. For more information about
task definition parameters and defaults, see Amazon ECS Task
Definitions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html)
in the I<Amazon Elastic Container Service Developer Guide>.

You can specify an IAM role for your task with the C<taskRoleArn>
parameter. When you specify an IAM role for a task, its containers can
then use the latest versions of the AWS CLI or SDKs to make API
requests to the AWS services that are specified in the IAM policy
associated with the role. For more information, see IAM Roles for Tasks
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html)
in the I<Amazon Elastic Container Service Developer Guide>.

You can specify a Docker networking mode for the containers in your
task definition with the C<networkMode> parameter. The available
network modes correspond to those described in Network settings
(https://docs.docker.com/engine/reference/run/#/network-settings) in
the Docker run reference. If you specify the C<awsvpc> network mode,
the task is allocated an elastic network interface, and you must
specify a NetworkConfiguration when you create a service or run a task
with the task definition. For more information, see Task Networking
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 RunTask

=over

=item TaskDefinition => Str

=item [Cluster => Str]

=item [Count => Int]

=item [EnableECSManagedTags => Bool]

=item [Group => Str]

=item [LaunchType => Str]

=item [NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>]

=item [Overrides => L<Paws::ECS::TaskOverride>]

=item [PlacementConstraints => ArrayRef[L<Paws::ECS::PlacementConstraint>]]

=item [PlacementStrategy => ArrayRef[L<Paws::ECS::PlacementStrategy>]]

=item [PlatformVersion => Str]

=item [PropagateTags => Str]

=item [StartedBy => Str]

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]


=back

Each argument is described in detail in: L<Paws::ECS::RunTask>

Returns: a L<Paws::ECS::RunTaskResponse> instance

Starts a new task using the specified task definition.

You can allow Amazon ECS to place tasks for you, or you can customize
how Amazon ECS places tasks using placement constraints and placement
strategies. For more information, see Scheduling Tasks
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
in the I<Amazon Elastic Container Service Developer Guide>.

Alternatively, you can use StartTask to use your own scheduler or place
tasks manually on specific container instances.

The Amazon ECS API follows an eventual consistency model, due to the
distributed nature of the system supporting the API. This means that
the result of an API command you run that affects your Amazon ECS
resources might not be immediately visible to all subsequent commands
you run. Keep this in mind when you carry out an API command that
immediately follows a previous API command.

To manage eventual consistency, you can do the following:

=over

=item *

Confirm the state of the resource before you run a command to modify
it. Run the DescribeTasks command using an exponential backoff
algorithm to ensure that you allow enough time for the previous command
to propagate through the system. To do this, run the DescribeTasks
command repeatedly, starting with a couple of seconds of wait time and
increasing gradually up to five minutes of wait time.

=item *

Add wait time between subsequent commands, even if the DescribeTasks
command returns an accurate response. Apply an exponential backoff
algorithm starting with a couple of seconds of wait time, and increase
gradually up to about five minutes of wait time.

=back



=head2 StartTask

=over

=item ContainerInstances => ArrayRef[Str|Undef]

=item TaskDefinition => Str

=item [Cluster => Str]

=item [EnableECSManagedTags => Bool]

=item [Group => Str]

=item [NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>]

=item [Overrides => L<Paws::ECS::TaskOverride>]

=item [PropagateTags => Str]

=item [StartedBy => Str]

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]


=back

Each argument is described in detail in: L<Paws::ECS::StartTask>

Returns: a L<Paws::ECS::StartTaskResponse> instance

Starts a new task from the specified task definition on the specified
container instance or instances.

Alternatively, you can use RunTask to place tasks for you. For more
information, see Scheduling Tasks
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 StopTask

=over

=item Task => Str

=item [Cluster => Str]

=item [Reason => Str]


=back

Each argument is described in detail in: L<Paws::ECS::StopTask>

Returns: a L<Paws::ECS::StopTaskResponse> instance

Stops a running task. Any tags associated with the task will be
deleted.

When StopTask is called on a task, the equivalent of C<docker stop> is
issued to the containers running in the task. This results in a
C<SIGTERM> value and a default 30-second timeout, after which the
C<SIGKILL> value is sent and the containers are forcibly stopped. If
the container handles the C<SIGTERM> value gracefully and exits within
30 seconds from receiving it, no C<SIGKILL> value is sent.

The default 30-second timeout can be configured on the Amazon ECS
container agent with the C<ECS_CONTAINER_STOP_TIMEOUT> variable. For
more information, see Amazon ECS Container Agent Configuration
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 SubmitContainerStateChange

=over

=item [Cluster => Str]

=item [ContainerName => Str]

=item [ExitCode => Int]

=item [NetworkBindings => ArrayRef[L<Paws::ECS::NetworkBinding>]]

=item [Reason => Str]

=item [Status => Str]

=item [Task => Str]


=back

Each argument is described in detail in: L<Paws::ECS::SubmitContainerStateChange>

Returns: a L<Paws::ECS::SubmitContainerStateChangeResponse> instance

This action is only used by the Amazon ECS agent, and it is not
intended for use outside of the agent.

Sent to acknowledge that a container changed states.


=head2 SubmitTaskStateChange

=over

=item [Attachments => ArrayRef[L<Paws::ECS::AttachmentStateChange>]]

=item [Cluster => Str]

=item [Containers => ArrayRef[L<Paws::ECS::ContainerStateChange>]]

=item [ExecutionStoppedAt => Str]

=item [PullStartedAt => Str]

=item [PullStoppedAt => Str]

=item [Reason => Str]

=item [Status => Str]

=item [Task => Str]


=back

Each argument is described in detail in: L<Paws::ECS::SubmitTaskStateChange>

Returns: a L<Paws::ECS::SubmitTaskStateChangeResponse> instance

This action is only used by the Amazon ECS agent, and it is not
intended for use outside of the agent.

Sent to acknowledge that a task changed states.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::ECS::Tag>]


=back

Each argument is described in detail in: L<Paws::ECS::TagResource>

Returns: a L<Paws::ECS::TagResourceResponse> instance

Associates the specified tags to a resource with the specified
C<resourceArn>. If existing tags on a resource are not specified in the
request parameters, they are not changed. When a resource is deleted,
the tags associated with that resource are deleted as well.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ECS::UntagResource>

Returns: a L<Paws::ECS::UntagResourceResponse> instance

Deletes specified tags from a resource.


=head2 UpdateContainerAgent

=over

=item ContainerInstance => Str

=item [Cluster => Str]


=back

Each argument is described in detail in: L<Paws::ECS::UpdateContainerAgent>

Returns: a L<Paws::ECS::UpdateContainerAgentResponse> instance

Updates the Amazon ECS container agent on a specified container
instance. Updating the Amazon ECS container agent does not interrupt
running tasks or services on the container instance. The process for
updating the agent differs depending on whether your container instance
was launched with the Amazon ECS-optimized AMI or another operating
system.

C<UpdateContainerAgent> requires the Amazon ECS-optimized AMI or Amazon
Linux with the C<ecs-init> service installed and running. For help
updating the Amazon ECS container agent on other operating systems, see
Manually Updating the Amazon ECS Container Agent
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 UpdateContainerInstancesState

=over

=item ContainerInstances => ArrayRef[Str|Undef]

=item Status => Str

=item [Cluster => Str]


=back

Each argument is described in detail in: L<Paws::ECS::UpdateContainerInstancesState>

Returns: a L<Paws::ECS::UpdateContainerInstancesStateResponse> instance

Modifies the status of an Amazon ECS container instance.

You can change the status of a container instance to C<DRAINING> to
manually remove an instance from a cluster, for example to perform
system updates, update the Docker daemon, or scale down the cluster
size.

When you set a container instance to C<DRAINING>, Amazon ECS prevents
new tasks from being scheduled for placement on the container instance
and replacement service tasks are started on other container instances
in the cluster if the resources are available. Service tasks on the
container instance that are in the C<PENDING> state are stopped
immediately.

Service tasks on the container instance that are in the C<RUNNING>
state are stopped and replaced according to the service's deployment
configuration parameters, C<minimumHealthyPercent> and
C<maximumPercent>. You can change the deployment configuration of your
service using UpdateService.

=over

=item *

If C<minimumHealthyPercent> is below 100%, the scheduler can ignore
C<desiredCount> temporarily during task replacement. For example,
C<desiredCount> is four tasks, a minimum of 50% allows the scheduler to
stop two existing tasks before starting two new tasks. If the minimum
is 100%, the service scheduler can't remove existing tasks until the
replacement tasks are considered healthy. Tasks for services that do
not use a load balancer are considered healthy if they are in the
C<RUNNING> state. Tasks for services that use a load balancer are
considered healthy if they are in the C<RUNNING> state and the
container instance they are hosted on is reported as healthy by the
load balancer.

=item *

The C<maximumPercent> parameter represents an upper limit on the number
of running tasks during task replacement, which enables you to define
the replacement batch size. For example, if C<desiredCount> is four
tasks, a maximum of 200% starts four new tasks before stopping the four
tasks to be drained, provided that the cluster resources required to do
this are available. If the maximum is 100%, then replacement tasks
can't start until the draining tasks have stopped.

=back

Any C<PENDING> or C<RUNNING> tasks that do not belong to a service are
not affected. You must wait for them to finish or stop them manually.

A container instance has completed draining when it has no more
C<RUNNING> tasks. You can verify this using ListTasks.

When you set a container instance to C<ACTIVE>, the Amazon ECS
scheduler can begin scheduling tasks on the instance again.


=head2 UpdateService

=over

=item Service => Str

=item [Cluster => Str]

=item [DeploymentConfiguration => L<Paws::ECS::DeploymentConfiguration>]

=item [DesiredCount => Int]

=item [ForceNewDeployment => Bool]

=item [HealthCheckGracePeriodSeconds => Int]

=item [NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>]

=item [PlatformVersion => Str]

=item [TaskDefinition => Str]


=back

Each argument is described in detail in: L<Paws::ECS::UpdateService>

Returns: a L<Paws::ECS::UpdateServiceResponse> instance

Modifies the parameters of a service.

For services using the rolling update (C<ECS>) deployment controller,
the desired count, deployment configuration, network configuration, or
task definition used can be updated.

For services using the blue/green (C<CODE_DEPLOY>) deployment
controller, only the desired count, deployment configuration, and
health check grace period can be updated using this API. If the network
configuration, platform version, or task definition need to be updated,
a new AWS CodeDeploy deployment should be created. For more
information, see CreateDeployment
(https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html)
in the I<AWS CodeDeploy API Reference>.

You can add to or subtract from the number of instantiations of a task
definition in a service by specifying the cluster that the service is
running in and a new C<desiredCount> parameter.

If you have updated the Docker image of your application, you can
create a new task definition with that image and deploy it to your
service. The service scheduler uses the minimum healthy percent and
maximum percent parameters (in the service's deployment configuration)
to determine the deployment strategy.

If your updated Docker image uses the same tag as what is in the
existing task definition for your service (for example,
C<my_image:latest>), you do not need to create a new revision of your
task definition. You can update the service using the
C<forceNewDeployment> option. The new tasks launched by the deployment
pull the current image/tag combination from your repository when they
start.

You can also update the deployment configuration of a service. When a
deployment is triggered by updating the task definition of a service,
the service scheduler uses the deployment configuration parameters,
C<minimumHealthyPercent> and C<maximumPercent>, to determine the
deployment strategy.

=over

=item *

If C<minimumHealthyPercent> is below 100%, the scheduler can ignore
C<desiredCount> temporarily during a deployment. For example, if
C<desiredCount> is four tasks, a minimum of 50% allows the scheduler to
stop two existing tasks before starting two new tasks. Tasks for
services that do not use a load balancer are considered healthy if they
are in the C<RUNNING> state. Tasks for services that use a load
balancer are considered healthy if they are in the C<RUNNING> state and
the container instance they are hosted on is reported as healthy by the
load balancer.

=item *

The C<maximumPercent> parameter represents an upper limit on the number
of running tasks during a deployment, which enables you to define the
deployment batch size. For example, if C<desiredCount> is four tasks, a
maximum of 200% starts four new tasks before stopping the four older
tasks (provided that the cluster resources required to do this are
available).

=back

When UpdateService stops a task during a deployment, the equivalent of
C<docker stop> is issued to the containers running in the task. This
results in a C<SIGTERM> and a 30-second timeout, after which C<SIGKILL>
is sent and the containers are forcibly stopped. If the container
handles the C<SIGTERM> gracefully and exits within 30 seconds from
receiving it, no C<SIGKILL> is sent.

When the service scheduler launches new tasks, it determines task
placement in your cluster with the following logic:

=over

=item *

Determine which of the container instances in your cluster can support
your service's task definition (for example, they have the required
CPU, memory, ports, and container instance attributes).

=item *

By default, the service scheduler attempts to balance tasks across
Availability Zones in this manner (although you can choose a different
placement strategy):

=over

=item *

Sort the valid container instances by the fewest number of running
tasks for this service in the same Availability Zone as the instance.
For example, if zone A has one running service task and zones B and C
each have zero, valid container instances in either zone B or C are
considered optimal for placement.

=item *

Place the new service task on a valid container instance in an optimal
Availability Zone (based on the previous steps), favoring container
instances with the fewest number of running tasks for this service.

=back

=back

When the service scheduler stops running tasks, it attempts to maintain
balance across the Availability Zones in your cluster using the
following logic:

=over

=item *

Sort the container instances by the largest number of running tasks for
this service in the same Availability Zone as the instance. For
example, if zone A has one running service task and zones B and C each
have two, container instances in either zone B or C are considered
optimal for termination.

=item *

Stop the task on a container instance in an optimal Availability Zone
(based on the previous steps), favoring container instances with the
largest number of running tasks for this service.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccountSettings(sub { },[EffectiveSettings => Bool, MaxResults => Int, Name => Str, NextToken => Str, PrincipalArn => Str, Value => Str])

=head2 ListAllAccountSettings([EffectiveSettings => Bool, MaxResults => Int, Name => Str, NextToken => Str, PrincipalArn => Str, Value => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - settings, passing the object as the first parameter, and the string 'settings' as the second parameter 

If not, it will return a a L<Paws::ECS::ListAccountSettingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAttributes(sub { },TargetType => Str, [AttributeName => Str, AttributeValue => Str, Cluster => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAttributes(TargetType => Str, [AttributeName => Str, AttributeValue => Str, Cluster => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - attributes, passing the object as the first parameter, and the string 'attributes' as the second parameter 

If not, it will return a a L<Paws::ECS::ListAttributesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClusters(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllClusters([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - clusterArns, passing the object as the first parameter, and the string 'clusterArns' as the second parameter 

If not, it will return a a L<Paws::ECS::ListClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContainerInstances(sub { },[Cluster => Str, Filter => Str, MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllContainerInstances([Cluster => Str, Filter => Str, MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - containerInstanceArns, passing the object as the first parameter, and the string 'containerInstanceArns' as the second parameter 

If not, it will return a a L<Paws::ECS::ListContainerInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServices(sub { },[Cluster => Str, LaunchType => Str, MaxResults => Int, NextToken => Str, SchedulingStrategy => Str])

=head2 ListAllServices([Cluster => Str, LaunchType => Str, MaxResults => Int, NextToken => Str, SchedulingStrategy => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - serviceArns, passing the object as the first parameter, and the string 'serviceArns' as the second parameter 

If not, it will return a a L<Paws::ECS::ListServicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTaskDefinitionFamilies(sub { },[FamilyPrefix => Str, MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllTaskDefinitionFamilies([FamilyPrefix => Str, MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - families, passing the object as the first parameter, and the string 'families' as the second parameter 

If not, it will return a a L<Paws::ECS::ListTaskDefinitionFamiliesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTaskDefinitions(sub { },[FamilyPrefix => Str, MaxResults => Int, NextToken => Str, Sort => Str, Status => Str])

=head2 ListAllTaskDefinitions([FamilyPrefix => Str, MaxResults => Int, NextToken => Str, Sort => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - taskDefinitionArns, passing the object as the first parameter, and the string 'taskDefinitionArns' as the second parameter 

If not, it will return a a L<Paws::ECS::ListTaskDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTasks(sub { },[Cluster => Str, ContainerInstance => Str, DesiredStatus => Str, Family => Str, LaunchType => Str, MaxResults => Int, NextToken => Str, ServiceName => Str, StartedBy => Str])

=head2 ListAllTasks([Cluster => Str, ContainerInstance => Str, DesiredStatus => Str, Family => Str, LaunchType => Str, MaxResults => Int, NextToken => Str, ServiceName => Str, StartedBy => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - taskArns, passing the object as the first parameter, and the string 'taskArns' as the second parameter 

If not, it will return a a L<Paws::ECS::ListTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

