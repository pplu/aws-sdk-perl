package Paws::ECS::Cluster;
  use Moose;
  has ActiveServicesCount => (is => 'ro', isa => 'Int', xmlname => 'activeServicesCount', request_name => 'activeServicesCount', traits => ['Unwrapped','NameInRequest']);
  has ClusterArn => (is => 'ro', isa => 'Str', xmlname => 'clusterArn', request_name => 'clusterArn', traits => ['Unwrapped','NameInRequest']);
  has ClusterName => (is => 'ro', isa => 'Str', xmlname => 'clusterName', request_name => 'clusterName', traits => ['Unwrapped','NameInRequest']);
  has PendingTasksCount => (is => 'ro', isa => 'Int', xmlname => 'pendingTasksCount', request_name => 'pendingTasksCount', traits => ['Unwrapped','NameInRequest']);
  has RegisteredContainerInstancesCount => (is => 'ro', isa => 'Int', xmlname => 'registeredContainerInstancesCount', request_name => 'registeredContainerInstancesCount', traits => ['Unwrapped','NameInRequest']);
  has RunningTasksCount => (is => 'ro', isa => 'Int', xmlname => 'runningTasksCount', request_name => 'runningTasksCount', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Cluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Cluster object:

  $service_obj->Method(Att1 => { ActiveServicesCount => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Cluster object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveServicesCount

=head1 DESCRIPTION

A regional grouping of one or more container instances on which you can
run task requests. Each account receives a default cluster the first
time you use the Amazon ECS service, but you may also create other
clusters. Clusters may contain more than one instance type
simultaneously.

=head1 ATTRIBUTES

=head2 ActiveServicesCount => Int

  The number of services that are running on the cluster in an C<ACTIVE>
state. You can view these services with ListServices.

=head2 ClusterArn => Str

  The Amazon Resource Name (ARN) that identifies the cluster. The ARN
contains the C<arn:aws:ecs> namespace, followed by the region of the
cluster, the AWS account ID of the cluster owner, the C<cluster>
namespace, and then the cluster name. For example,
arn:aws:ecs:I<region>:I<012345678910>:cluster/I<test>.

=head2 ClusterName => Str

  A user-generated string that you use to identify your cluster.

=head2 PendingTasksCount => Int

  The number of tasks in the cluster that are in the C<PENDING> state.

=head2 RegisteredContainerInstancesCount => Int

  The number of container instances registered into the cluster.

=head2 RunningTasksCount => Int

  The number of tasks in the cluster that are in the C<RUNNING> state.

=head2 Status => Str

  The status of the cluster. The valid values are C<ACTIVE> or
C<INACTIVE>. C<ACTIVE> indicates that you can register container
instances with the cluster and the associated instances can accept
tasks.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

