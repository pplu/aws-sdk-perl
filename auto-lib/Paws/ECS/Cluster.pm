package Paws::ECS::Cluster;
  use Moose;
  has activeServicesCount => (is => 'ro', isa => 'Int');
  has clusterArn => (is => 'ro', isa => 'Str');
  has clusterName => (is => 'ro', isa => 'Str');
  has pendingTasksCount => (is => 'ro', isa => 'Int');
  has registeredContainerInstancesCount => (is => 'ro', isa => 'Int');
  has runningTasksCount => (is => 'ro', isa => 'Int');
  has status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Cluster

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Cluster object:

  $service_obj->Method(Att1 => { activeServicesCount => $value, ..., status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Cluster object:

  $result = $service_obj->Method(...);
  $result->Att1->activeServicesCount

=head1 ATTRIBUTES

=head2 activeServicesCount => Int

  The number of services that are running on the cluster in an C<ACTIVE>
state. You can view these services with ListServices.

=head2 clusterArn => Str

  The Amazon Resource Name (ARN) that identifies the cluster. The ARN
contains the C<arn:aws:ecs> namespace, followed by the region of the
cluster, the AWS account ID of the cluster owner, the C<cluster>
namespace, and then the cluster name. For example,
arn:aws:ecs:I<region>:I<012345678910>:cluster/I<test>.

=head2 clusterName => Str

  A user-generated string that you use to identify your cluster.

=head2 pendingTasksCount => Int

  The number of tasks in the cluster that are in the C<PENDING> state.

=head2 registeredContainerInstancesCount => Int

  The number of container instances registered into the cluster.

=head2 runningTasksCount => Int

  The number of tasks in the cluster that are in the C<RUNNING> state.

=head2 status => Str

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

