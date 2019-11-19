# Generated from default/object.tt
package Paws::ECS::Cluster;
  use Moo;
  use Types::Standard qw/Int Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Tag ECS_KeyValuePair ECS_ClusterSetting/;
  has ActiveServicesCount => (is => 'ro', isa => Int);
  has ClusterArn => (is => 'ro', isa => Str);
  has ClusterName => (is => 'ro', isa => Str);
  has PendingTasksCount => (is => 'ro', isa => Int);
  has RegisteredContainerInstancesCount => (is => 'ro', isa => Int);
  has RunningTasksCount => (is => 'ro', isa => Int);
  has Settings => (is => 'ro', isa => ArrayRef[ECS_ClusterSetting]);
  has Statistics => (is => 'ro', isa => ArrayRef[ECS_KeyValuePair]);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[ECS_Tag]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ClusterArn' => 'clusterArn',
                       'ActiveServicesCount' => 'activeServicesCount',
                       'PendingTasksCount' => 'pendingTasksCount',
                       'ClusterName' => 'clusterName',
                       'Statistics' => 'statistics',
                       'Tags' => 'tags',
                       'Status' => 'status',
                       'Settings' => 'settings',
                       'RunningTasksCount' => 'runningTasksCount',
                       'RegisteredContainerInstancesCount' => 'registeredContainerInstancesCount'
                     },
  'types' => {
               'ClusterArn' => {
                                 'type' => 'Str'
                               },
               'ActiveServicesCount' => {
                                          'type' => 'Int'
                                        },
               'ClusterName' => {
                                  'type' => 'Str'
                                },
               'Statistics' => {
                                 'type' => 'ArrayRef[ECS_KeyValuePair]',
                                 'class' => 'Paws::ECS::KeyValuePair'
                               },
               'PendingTasksCount' => {
                                        'type' => 'Int'
                                      },
               'Tags' => {
                           'type' => 'ArrayRef[ECS_Tag]',
                           'class' => 'Paws::ECS::Tag'
                         },
               'Status' => {
                             'type' => 'Str'
                           },
               'RegisteredContainerInstancesCount' => {
                                                        'type' => 'Int'
                                                      },
               'Settings' => {
                               'class' => 'Paws::ECS::ClusterSetting',
                               'type' => 'ArrayRef[ECS_ClusterSetting]'
                             },
               'RunningTasksCount' => {
                                        'type' => 'Int'
                                      }
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


=head2 Settings => ArrayRef[ECS_ClusterSetting]

  The settings for the cluster. This parameter indicates whether
CloudWatch Container Insights is enabled or disabled for a cluster.


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




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

