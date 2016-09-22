package Paws::ECS;
  use Moose;
  sub service { 'ecs' }
  sub version { '2014-11-13' }
  sub target_prefix { 'AmazonEC2ContainerServiceV20141113' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
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
  sub UpdateContainerAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateContainerAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusters(@_);

    if (not defined $callback) {
      my $params = {};
      $params->{ clusterArns } = $result->clusterArns;

      while ($result->nextToken) {
        $result = $self->ListClusters(@_, nextToken => $result->nextToken);
        push @{ $result->clusterArns }, @{ $result->clusterArns };
      }
      $self->new_with_coercions(Paws::ECS::ListClusters->_returns, %$params);
    } else {
      while ($result->nextToken) {
        $result = $self->ListClusters(@_, nextToken => $result->nextToken);
        $callback->($_ => 'clusterArns') foreach (@{ $result->clusterArns });
      }
    }

    return undef
  }
  sub ListAllContainerInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContainerInstances(@_);

    if (not defined $callback) {
      my $params = {};
      $params->{ containerInstanceArns } = $result->containerInstanceArns;

      while ($result->nextToken) {
        $result = $self->ListContainerInstances(@_, nextToken => $result->nextToken);
        push @{ $result->containerInstanceArns }, @{ $result->containerInstanceArns };
      }
      $self->new_with_coercions(Paws::ECS::ListContainerInstances->_returns, %$params);
    } else {
      while ($result->nextToken) {
        $result = $self->ListContainerInstances(@_, nextToken => $result->nextToken);
        $callback->($_ => 'containerInstanceArns') foreach (@{ $result->containerInstanceArns });
      }
    }

    return undef
  }
  sub ListAllServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServices(@_);

    if (not defined $callback) {
      my $params = {};
      $params->{ serviceArns } = $result->serviceArns;

      while ($result->nextToken) {
        $result = $self->ListServices(@_, nextToken => $result->nextToken);
        push @{ $result->serviceArns }, @{ $result->serviceArns };
      }
      $self->new_with_coercions(Paws::ECS::ListServices->_returns, %$params);
    } else {
      while ($result->nextToken) {
        $result = $self->ListServices(@_, nextToken => $result->nextToken);
        $callback->($_ => 'serviceArns') foreach (@{ $result->serviceArns });
      }
    }

    return undef
  }
  sub ListAllTaskDefinitionFamilies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTaskDefinitionFamilies(@_);

    if (not defined $callback) {
      my $params = {};
      $params->{ families } = $result->families;

      while ($result->nextToken) {
        $result = $self->ListTaskDefinitionFamilies(@_, nextToken => $result->nextToken);
        push @{ $result->families }, @{ $result->families };
      }
      $self->new_with_coercions(Paws::ECS::ListTaskDefinitionFamilies->_returns, %$params);
    } else {
      while ($result->nextToken) {
        $result = $self->ListTaskDefinitionFamilies(@_, nextToken => $result->nextToken);
        $callback->($_ => 'families') foreach (@{ $result->families });
      }
    }

    return undef
  }
  sub ListAllTaskDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTaskDefinitions(@_);

    if (not defined $callback) {
      my $params = {};
      $params->{ taskDefinitionArns } = $result->taskDefinitionArns;

      while ($result->nextToken) {
        $result = $self->ListTaskDefinitions(@_, nextToken => $result->nextToken);
        push @{ $result->taskDefinitionArns }, @{ $result->taskDefinitionArns };
      }
      $self->new_with_coercions(Paws::ECS::ListTaskDefinitions->_returns, %$params);
    } else {
      while ($result->nextToken) {
        $result = $self->ListTaskDefinitions(@_, nextToken => $result->nextToken);
        $callback->($_ => 'taskDefinitionArns') foreach (@{ $result->taskDefinitionArns });
      }
    }

    return undef
  }
  sub ListAllTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTasks(@_);

    if (not defined $callback) {
      my $params = {};
      $params->{ taskArns } = $result->taskArns;

      while ($result->nextToken) {
        $result = $self->ListTasks(@_, nextToken => $result->nextToken);
        push @{ $result->taskArns }, @{ $result->taskArns };
      }
      $self->new_with_coercions(Paws::ECS::ListTasks->_returns, %$params);
    } else {
      while ($result->nextToken) {
        $result = $self->ListTasks(@_, nextToken => $result->nextToken);
        $callback->($_ => 'taskArns') foreach (@{ $result->taskArns });
      }
    }

    return undef
  }


  sub operations { qw/CreateCluster CreateService DeleteCluster DeleteService DeregisterContainerInstance DeregisterTaskDefinition DescribeClusters DescribeContainerInstances DescribeServices DescribeTaskDefinition DescribeTasks DiscoverPollEndpoint ListClusters ListContainerInstances ListServices ListTaskDefinitionFamilies ListTaskDefinitions ListTasks RegisterContainerInstance RegisterTaskDefinition RunTask StartTask StopTask SubmitContainerStateChange SubmitTaskStateChange UpdateContainerAgent UpdateService / }

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

Amazon EC2 Container Service (Amazon ECS) is a highly scalable, fast,
container management service that makes it easy to run, stop, and
manage Docker containers on a cluster of EC2 instances. Amazon ECS lets
you launch and stop container-enabled applications with simple API
calls, allows you to get the state of your cluster from a centralized
service, and gives you access to many familiar Amazon EC2 features like
security groups, Amazon EBS volumes, and IAM roles.

You can use Amazon ECS to schedule the placement of containers across
your cluster based on your resource needs, isolation policies, and
availability requirements. Amazon EC2 Container Service eliminates the
need for you to operate your own cluster management and configuration
management systems or worry about scaling your management
infrastructure.

=head1 METHODS

=head2 CreateCluster([ClusterName => Str])

Each argument is described in detail in: L<Paws::ECS::CreateCluster>

Returns: a L<Paws::ECS::CreateClusterResponse> instance

  Creates a new Amazon ECS cluster. By default, your account receives a
C<default> cluster when you launch your first container instance.
However, you can create your own cluster with a unique name with the
C<CreateCluster> action.


=head2 CreateService(DesiredCount => Int, ServiceName => Str, TaskDefinition => Str, [ClientToken => Str, Cluster => Str, DeploymentConfiguration => L<Paws::ECS::DeploymentConfiguration>, LoadBalancers => ArrayRef[L<Paws::ECS::LoadBalancer>], Role => Str])

Each argument is described in detail in: L<Paws::ECS::CreateService>

Returns: a L<Paws::ECS::CreateServiceResponse> instance

  Runs and maintains a desired number of tasks from a specified task
definition. If the number of tasks running in a service drops below
C<desiredCount>, Amazon ECS spawns another instantiation of the task in
the specified cluster. To update an existing service, see
UpdateService.

In addition to maintaining the desired count of tasks in your service,
you can optionally run your service behind a load balancer. The load
balancer distributes traffic across the tasks that are associated with
the service. For more information, see Service Load Balancing in the
I<Amazon EC2 Container Service Developer Guide>.

You can optionally specify a deployment configuration for your service.
During a deployment (which is triggered by changing the task definition
of a service with an UpdateService operation), the service scheduler
uses the C<minimumHealthyPercent> and C<maximumPercent> parameters to
determine the deployment strategy.

If the C<minimumHealthyPercent> is below 100%, the scheduler can ignore
the C<desiredCount> temporarily during a deployment. For example, if
your service has a C<desiredCount> of four tasks, a
C<minimumHealthyPercent> of 50% allows the scheduler to stop two
existing tasks before starting two new tasks. Tasks for services that
I<do not> use a load balancer are considered healthy if they are in the
C<RUNNING> state; tasks for services that I<do> use a load balancer are
considered healthy if they are in the C<RUNNING> state and the
container instance it is hosted on is reported as healthy by the load
balancer. The default value for C<minimumHealthyPercent> is 50% in the
console and 100% for the AWS CLI, the AWS SDKs, and the APIs.

The C<maximumPercent> parameter represents an upper limit on the number
of running tasks during a deployment, which enables you to define the
deployment batch size. For example, if your service has a
C<desiredCount> of four tasks, a C<maximumPercent> value of 200% starts
four new tasks before stopping the four older tasks (provided that the
cluster resources required to do this are available). The default value
for C<maximumPercent> is 200%.

When the service scheduler launches new tasks, it attempts to balance
them across the Availability Zones in your cluster with the following
logic:

=over

=item *

Determine which of the container instances in your cluster can support
your service's task definition (for example, they have the required
CPU, memory, ports, and container instance attributes).

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



=head2 DeleteCluster(Cluster => Str)

Each argument is described in detail in: L<Paws::ECS::DeleteCluster>

Returns: a L<Paws::ECS::DeleteClusterResponse> instance

  Deletes the specified cluster. You must deregister all container
instances from this cluster before you may delete it. You can list the
container instances in a cluster with ListContainerInstances and
deregister them with DeregisterContainerInstance.


=head2 DeleteService(Service => Str, [Cluster => Str])

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
ListServices API operations. After the tasks have stopped, then the
service status moves from C<DRAINING> to C<INACTIVE>. Services in the
C<DRAINING> or C<INACTIVE> status can still be viewed with
DescribeServices API operations; however, in the future, C<INACTIVE>
services may be cleaned up and purged from Amazon ECS record keeping,
and DescribeServices API operations on those services will return a
C<ServiceNotFoundException> error.


=head2 DeregisterContainerInstance(ContainerInstance => Str, [Cluster => Str, Force => Bool])

Each argument is described in detail in: L<Paws::ECS::DeregisterContainerInstance>

Returns: a L<Paws::ECS::DeregisterContainerInstanceResponse> instance

  Deregisters an Amazon ECS container instance from the specified
cluster. This instance is no longer available to run tasks.

If you intend to use the container instance for some other purpose
after deregistration, you should stop all of the tasks running on the
container instance before deregistration to avoid any orphaned tasks
from consuming resources.

Deregistering a container instance removes the instance from a cluster,
but it does not terminate the EC2 instance; if you are finished using
the instance, be sure to terminate it in the Amazon EC2 console to stop
billing.

If you terminate a running container instance with a connected Amazon
ECS container agent, the agent automatically deregisters the instance
from your cluster (stopped container instances or instances with
disconnected agents are not automatically deregistered when
terminated).


=head2 DeregisterTaskDefinition(TaskDefinition => Str)

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
reference an C<INACTIVE> task definition (although there may be up to a
10 minute window following deregistration where these restrictions have
not yet taken effect).


=head2 DescribeClusters([Clusters => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::ECS::DescribeClusters>

Returns: a L<Paws::ECS::DescribeClustersResponse> instance

  Describes one or more of your clusters.


=head2 DescribeContainerInstances(ContainerInstances => ArrayRef[Str], [Cluster => Str])

Each argument is described in detail in: L<Paws::ECS::DescribeContainerInstances>

Returns: a L<Paws::ECS::DescribeContainerInstancesResponse> instance

  Describes Amazon EC2 Container Service container instances. Returns
metadata about registered and remaining resources on each container
instance requested.


=head2 DescribeServices(Services => ArrayRef[Str], [Cluster => Str])

Each argument is described in detail in: L<Paws::ECS::DescribeServices>

Returns: a L<Paws::ECS::DescribeServicesResponse> instance

  Describes the specified services running in your cluster.


=head2 DescribeTaskDefinition(TaskDefinition => Str)

Each argument is described in detail in: L<Paws::ECS::DescribeTaskDefinition>

Returns: a L<Paws::ECS::DescribeTaskDefinitionResponse> instance

  Describes a task definition. You can specify a C<family> and
C<revision> to find information about a specific task definition, or
you can simply specify the family to find the latest C<ACTIVE> revision
in that family.

You can only describe C<INACTIVE> task definitions while an active task
or service references them.


=head2 DescribeTasks(Tasks => ArrayRef[Str], [Cluster => Str])

Each argument is described in detail in: L<Paws::ECS::DescribeTasks>

Returns: a L<Paws::ECS::DescribeTasksResponse> instance

  Describes a specified task or tasks.


=head2 DiscoverPollEndpoint([Cluster => Str, ContainerInstance => Str])

Each argument is described in detail in: L<Paws::ECS::DiscoverPollEndpoint>

Returns: a L<Paws::ECS::DiscoverPollEndpointResponse> instance

  This action is only used by the Amazon EC2 Container Service agent, and
it is not intended for use outside of the agent.

Returns an endpoint for the Amazon EC2 Container Service agent to poll
for updates.


=head2 ListClusters([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ECS::ListClusters>

Returns: a L<Paws::ECS::ListClustersResponse> instance

  Returns a list of existing clusters.


=head2 ListContainerInstances([Cluster => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ECS::ListContainerInstances>

Returns: a L<Paws::ECS::ListContainerInstancesResponse> instance

  Returns a list of container instances in a specified cluster.


=head2 ListServices([Cluster => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ECS::ListServices>

Returns: a L<Paws::ECS::ListServicesResponse> instance

  Lists the services that are running in a specified cluster.


=head2 ListTaskDefinitionFamilies([FamilyPrefix => Str, MaxResults => Int, NextToken => Str, Status => Str])

Each argument is described in detail in: L<Paws::ECS::ListTaskDefinitionFamilies>

Returns: a L<Paws::ECS::ListTaskDefinitionFamiliesResponse> instance

  Returns a list of task definition families that are registered to your
account (which may include task definition families that no longer have
any C<ACTIVE> task definition revisions).

You can filter out task definition families that do not contain any
C<ACTIVE> task definition revisions by setting the C<status> parameter
to C<ACTIVE>. You can also filter the results with the C<familyPrefix>
parameter.


=head2 ListTaskDefinitions([FamilyPrefix => Str, MaxResults => Int, NextToken => Str, Sort => Str, Status => Str])

Each argument is described in detail in: L<Paws::ECS::ListTaskDefinitions>

Returns: a L<Paws::ECS::ListTaskDefinitionsResponse> instance

  Returns a list of task definitions that are registered to your account.
You can filter the results by family name with the C<familyPrefix>
parameter or by status with the C<status> parameter.


=head2 ListTasks([Cluster => Str, ContainerInstance => Str, DesiredStatus => Str, Family => Str, MaxResults => Int, NextToken => Str, ServiceName => Str, StartedBy => Str])

Each argument is described in detail in: L<Paws::ECS::ListTasks>

Returns: a L<Paws::ECS::ListTasksResponse> instance

  Returns a list of tasks for a specified cluster. You can filter the
results by family name, by a particular container instance, or by the
desired status of the task with the C<family>, C<containerInstance>,
and C<desiredStatus> parameters.

Recently-stopped tasks might appear in the returned results. Currently,
stopped tasks appear in the returned results for at least one hour.


=head2 RegisterContainerInstance([Attributes => ArrayRef[L<Paws::ECS::Attribute>], Cluster => Str, ContainerInstanceArn => Str, InstanceIdentityDocument => Str, InstanceIdentityDocumentSignature => Str, TotalResources => ArrayRef[L<Paws::ECS::Resource>], VersionInfo => L<Paws::ECS::VersionInfo>])

Each argument is described in detail in: L<Paws::ECS::RegisterContainerInstance>

Returns: a L<Paws::ECS::RegisterContainerInstanceResponse> instance

  This action is only used by the Amazon EC2 Container Service agent, and
it is not intended for use outside of the agent.

Registers an EC2 instance into the specified cluster. This instance
becomes available to place containers on.


=head2 RegisterTaskDefinition(ContainerDefinitions => ArrayRef[L<Paws::ECS::ContainerDefinition>], Family => Str, [NetworkMode => Str, TaskRoleArn => Str, Volumes => ArrayRef[L<Paws::ECS::Volume>]])

Each argument is described in detail in: L<Paws::ECS::RegisterTaskDefinition>

Returns: a L<Paws::ECS::RegisterTaskDefinitionResponse> instance

  Registers a new task definition from the supplied C<family> and
C<containerDefinitions>. Optionally, you can add data volumes to your
containers with the C<volumes> parameter. For more information about
task definition parameters and defaults, see Amazon ECS Task
Definitions in the I<Amazon EC2 Container Service Developer Guide>.

You can specify an IAM role for your task with the C<taskRoleArn>
parameter. When you specify an IAM role for a task, its containers can
then use the latest versions of the AWS CLI or SDKs to make API
requests to the AWS services that are specified in the IAM policy
associated with the role. For more information, see IAM Roles for Tasks
in the I<Amazon EC2 Container Service Developer Guide>.

You can specify a Docker networking mode for the containers in your
task definition with the C<networkMode> parameter. The available
network modes correspond to those described in Network settings in the
Docker run reference.


=head2 RunTask(TaskDefinition => Str, [Cluster => Str, Count => Int, Overrides => L<Paws::ECS::TaskOverride>, StartedBy => Str])

Each argument is described in detail in: L<Paws::ECS::RunTask>

Returns: a L<Paws::ECS::RunTaskResponse> instance

  Start a task using random placement and the default Amazon ECS
scheduler. To use your own scheduler or place a task on a specific
container instance, use C<StartTask> instead.

The C<count> parameter is limited to 10 tasks per call.


=head2 StartTask(ContainerInstances => ArrayRef[Str], TaskDefinition => Str, [Cluster => Str, Overrides => L<Paws::ECS::TaskOverride>, StartedBy => Str])

Each argument is described in detail in: L<Paws::ECS::StartTask>

Returns: a L<Paws::ECS::StartTaskResponse> instance

  Starts a new task from the specified task definition on the specified
container instance or instances. To use the default Amazon ECS
scheduler to place your task, use C<RunTask> instead.

The list of container instances to start tasks on is limited to 10.


=head2 StopTask(Task => Str, [Cluster => Str, Reason => Str])

Each argument is described in detail in: L<Paws::ECS::StopTask>

Returns: a L<Paws::ECS::StopTaskResponse> instance

  Stops a running task.

When StopTask is called on a task, the equivalent of C<docker stop> is
issued to the containers running in the task. This results in a
C<SIGTERM> and a 30-second timeout, after which C<SIGKILL> is sent and
the containers are forcibly stopped. If the container handles the
C<SIGTERM> gracefully and exits within 30 seconds from receiving it, no
C<SIGKILL> is sent.


=head2 SubmitContainerStateChange([Cluster => Str, ContainerName => Str, ExitCode => Int, NetworkBindings => ArrayRef[L<Paws::ECS::NetworkBinding>], Reason => Str, Status => Str, Task => Str])

Each argument is described in detail in: L<Paws::ECS::SubmitContainerStateChange>

Returns: a L<Paws::ECS::SubmitContainerStateChangeResponse> instance

  This action is only used by the Amazon EC2 Container Service agent, and
it is not intended for use outside of the agent.

Sent to acknowledge that a container changed states.


=head2 SubmitTaskStateChange([Cluster => Str, Reason => Str, Status => Str, Task => Str])

Each argument is described in detail in: L<Paws::ECS::SubmitTaskStateChange>

Returns: a L<Paws::ECS::SubmitTaskStateChangeResponse> instance

  This action is only used by the Amazon EC2 Container Service agent, and
it is not intended for use outside of the agent.

Sent to acknowledge that a task changed states.


=head2 UpdateContainerAgent(ContainerInstance => Str, [Cluster => Str])

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
Manually Updating the Amazon ECS Container Agent in the I<Amazon EC2
Container Service Developer Guide>.


=head2 UpdateService(Service => Str, [Cluster => Str, DeploymentConfiguration => L<Paws::ECS::DeploymentConfiguration>, DesiredCount => Int, TaskDefinition => Str])

Each argument is described in detail in: L<Paws::ECS::UpdateService>

Returns: a L<Paws::ECS::UpdateServiceResponse> instance

  Modifies the desired count, deployment configuration, or task
definition used in a service.

You can add to or subtract from the number of instantiations of a task
definition in a service by specifying the cluster that the service is
running in and a new C<desiredCount> parameter.

You can use UpdateService to modify your task definition and deploy a
new version of your service.

You can also update the deployment configuration of a service. When a
deployment is triggered by updating the task definition of a service,
the service scheduler uses the deployment configuration parameters,
C<minimumHealthyPercent> and C<maximumPercent>, to determine the
deployment strategy.

If the C<minimumHealthyPercent> is below 100%, the scheduler can ignore
the C<desiredCount> temporarily during a deployment. For example, if
your service has a C<desiredCount> of four tasks, a
C<minimumHealthyPercent> of 50% allows the scheduler to stop two
existing tasks before starting two new tasks. Tasks for services that
I<do not> use a load balancer are considered healthy if they are in the
C<RUNNING> state; tasks for services that I<do> use a load balancer are
considered healthy if they are in the C<RUNNING> state and the
container instance it is hosted on is reported as healthy by the load
balancer.

The C<maximumPercent> parameter represents an upper limit on the number
of running tasks during a deployment, which enables you to define the
deployment batch size. For example, if your service has a
C<desiredCount> of four tasks, a C<maximumPercent> value of 200% starts
four new tasks before stopping the four older tasks (provided that the
cluster resources required to do this are available).

When UpdateService stops a task during a deployment, the equivalent of
C<docker stop> is issued to the containers running in the task. This
results in a C<SIGTERM> and a 30-second timeout, after which C<SIGKILL>
is sent and the containers are forcibly stopped. If the container
handles the C<SIGTERM> gracefully and exits within 30 seconds from
receiving it, no C<SIGKILL> is sent.

When the service scheduler launches new tasks, it attempts to balance
them across the Availability Zones in your cluster with the following
logic:

=over

=item *

Determine which of the container instances in your cluster can support
your service's task definition (for example, they have the required
CPU, memory, ports, and container instance attributes).

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



=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

