# Generated from default/object.tt
package Paws::ECS::Cluster;
  use Moo;
  use Types::Standard qw/Int Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Tag ECS_KeyValuePair/;
  has ActiveServicesCount => (is => 'ro', isa => Int);
  has ClusterArn => (is => 'ro', isa => Str);
  has ClusterName => (is => 'ro', isa => Str);
  has PendingTasksCount => (is => 'ro', isa => Int);
  has RegisteredContainerInstancesCount => (is => 'ro', isa => Int);
  has RunningTasksCount => (is => 'ro', isa => Int);
  has Statistics => (is => 'ro', isa => ArrayRef[ECS_KeyValuePair]);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[ECS_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Statistics' => {
                                 'class' => 'Paws::ECS::KeyValuePair',
                                 'type' => 'ArrayRef[ECS_KeyValuePair]'
                               },
               'Status' => {
                             'type' => 'Str'
                           },
               'ClusterArn' => {
                                 'type' => 'Str'
                               },
               'PendingTasksCount' => {
                                        'type' => 'Int'
                                      },
               'ClusterName' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ECS::Tag',
                           'type' => 'ArrayRef[ECS_Tag]'
                         },
               'RunningTasksCount' => {
                                        'type' => 'Int'
                                      },
               'ActiveServicesCount' => {
                                          'type' => 'Int'
                                        },
               'RegisteredContainerInstancesCount' => {
                                                        'type' => 'Int'
                                                      }
             },
  'NameInRequest' => {
                       'Statistics' => 'statistics',
                       'Status' => 'status',
                       'ClusterArn' => 'clusterArn',
                       'PendingTasksCount' => 'pendingTasksCount',
                       'ClusterName' => 'clusterName',
                       'Tags' => 'tags',
                       'RunningTasksCount' => 'runningTasksCount',
                       'ActiveServicesCount' => 'activeServicesCount',
                       'RegisteredContainerInstancesCount' => 'registeredContainerInstancesCount'
                     }
}
;
    return $Params_map;
  }


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

  $service_obj->Method(Att1 => { ActiveServicesCount => $value, ..., Tags => $value  });

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
contains the C<arn:aws:ecs> namespace, followed by the Region of the
cluster, the AWS account ID of the cluster owner, the C<cluster>
namespace, and then the cluster name. For example,
C<arn:aws:ecs:region:012345678910:cluster/test>.


=head2 ClusterName => Str

  A user-generated string that you use to identify your cluster.


=head2 PendingTasksCount => Int

  The number of tasks in the cluster that are in the C<PENDING> state.


=head2 RegisteredContainerInstancesCount => Int

  The number of container instances registered into the cluster. This
includes container instances in both C<ACTIVE> and C<DRAINING> status.


=head2 RunningTasksCount => Int

  The number of tasks in the cluster that are in the C<RUNNING> state.


=head2 Statistics => ArrayRef[ECS_KeyValuePair]

  Additional information about your clusters that are separated by launch
type, including:

=over

=item *

runningEC2TasksCount

=item *

RunningFargateTasksCount

=item *

pendingEC2TasksCount

=item *

pendingFargateTasksCount

=item *

activeEC2ServiceCount

=item *

activeFargateServiceCount

=item *

drainingEC2ServiceCount

=item *

drainingFargateServiceCount

=back



=head2 Status => Str

  The status of the cluster. The valid values are C<ACTIVE> or
C<INACTIVE>. C<ACTIVE> indicates that you can register container
instances with the cluster and the associated instances can accept
tasks.


=head2 Tags => ArrayRef[ECS_Tag]

  The metadata that you apply to the cluster to help you categorize and
organize them. Each tag consists of a key and an optional value, both
of which you define. Tag keys can have a maximum character length of
128 characters, and tag values can have a maximum length of 256
characters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

