# Generated from json/callargs_class.tt

package Paws::ECS::RunTask;
  use Moo;
  use Types::Standard qw/Str Int Bool ArrayRef/;
  use Paws::ECS::Types qw/ECS_TaskOverride ECS_Tag ECS_PlacementStrategy ECS_NetworkConfiguration ECS_PlacementConstraint/;
  has Cluster => (is => 'ro', isa => Str, predicate => 1);
  has Count => (is => 'ro', isa => Int, predicate => 1);
  has EnableECSManagedTags => (is => 'ro', isa => Bool, predicate => 1);
  has Group => (is => 'ro', isa => Str, predicate => 1);
  has LaunchType => (is => 'ro', isa => Str, predicate => 1);
  has NetworkConfiguration => (is => 'ro', isa => ECS_NetworkConfiguration, predicate => 1);
  has Overrides => (is => 'ro', isa => ECS_TaskOverride, predicate => 1);
  has PlacementConstraints => (is => 'ro', isa => ArrayRef[ECS_PlacementConstraint], predicate => 1);
  has PlacementStrategy => (is => 'ro', isa => ArrayRef[ECS_PlacementStrategy], predicate => 1);
  has PlatformVersion => (is => 'ro', isa => Str, predicate => 1);
  has PropagateTags => (is => 'ro', isa => Str, predicate => 1);
  has StartedBy => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[ECS_Tag], predicate => 1);
  has TaskDefinition => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RunTask');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECS::RunTaskResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkConfiguration' => {
                                           'class' => 'Paws::ECS::NetworkConfiguration',
                                           'type' => 'ECS_NetworkConfiguration'
                                         },
               'PlacementConstraints' => {
                                           'class' => 'Paws::ECS::PlacementConstraint',
                                           'type' => 'ArrayRef[ECS_PlacementConstraint]'
                                         },
               'StartedBy' => {
                                'type' => 'Str'
                              },
               'Group' => {
                            'type' => 'Str'
                          },
               'Count' => {
                            'type' => 'Int'
                          },
               'EnableECSManagedTags' => {
                                           'type' => 'Bool'
                                         },
               'Tags' => {
                           'type' => 'ArrayRef[ECS_Tag]',
                           'class' => 'Paws::ECS::Tag'
                         },
               'PlatformVersion' => {
                                      'type' => 'Str'
                                    },
               'Overrides' => {
                                'type' => 'ECS_TaskOverride',
                                'class' => 'Paws::ECS::TaskOverride'
                              },
               'TaskDefinition' => {
                                     'type' => 'Str'
                                   },
               'PropagateTags' => {
                                    'type' => 'Str'
                                  },
               'LaunchType' => {
                                 'type' => 'Str'
                               },
               'Cluster' => {
                              'type' => 'Str'
                            },
               'PlacementStrategy' => {
                                        'type' => 'ArrayRef[ECS_PlacementStrategy]',
                                        'class' => 'Paws::ECS::PlacementStrategy'
                                      }
             },
  'IsRequired' => {
                    'TaskDefinition' => 1
                  },
  'NameInRequest' => {
                       'StartedBy' => 'startedBy',
                       'Group' => 'group',
                       'Count' => 'count',
                       'EnableECSManagedTags' => 'enableECSManagedTags',
                       'Tags' => 'tags',
                       'PlatformVersion' => 'platformVersion',
                       'NetworkConfiguration' => 'networkConfiguration',
                       'PlacementConstraints' => 'placementConstraints',
                       'TaskDefinition' => 'taskDefinition',
                       'PropagateTags' => 'propagateTags',
                       'LaunchType' => 'launchType',
                       'Cluster' => 'cluster',
                       'PlacementStrategy' => 'placementStrategy',
                       'Overrides' => 'overrides'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::RunTask - Arguments for method RunTask on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RunTask on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method RunTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RunTask.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To run a task on your default cluster
    # This example runs the specified task definition on your default cluster.
    my $RunTaskResponse = $ecs->RunTask(
      'Cluster'        => 'default',
      'TaskDefinition' => 'sleep360:1'
    );

    # Results:
    my $tasks = $RunTaskResponse->tasks;

    # Returns a L<Paws::ECS::RunTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/RunTask>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster on
which to run your task. If you do not specify a cluster, the default
cluster is assumed.



=head2 Count => Int

The number of instantiations of the specified task to place on your
cluster. You can specify up to 10 tasks per call.



=head2 EnableECSManagedTags => Bool

Specifies whether to enable Amazon ECS managed tags for the task. For
more information, see Tagging Your Amazon ECS Resources
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 Group => Str

The name of the task group to associate with the task. The default
value is the family name of the task definition (for example,
family:my-family-name).



=head2 LaunchType => Str

The launch type on which to run your task. For more information, see
Amazon ECS Launch Types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html)
in the I<Amazon Elastic Container Service Developer Guide>.

Valid values are: C<"EC2">, C<"FARGATE">

=head2 NetworkConfiguration => ECS_NetworkConfiguration

The network configuration for the task. This parameter is required for
task definitions that use the C<awsvpc> network mode to receive their
own elastic network interface, and it is not supported for other
network modes. For more information, see Task Networking
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 Overrides => ECS_TaskOverride

A list of container overrides in JSON format that specify the name of a
container in the specified task definition and the overrides it should
receive. You can override the default command for a container (that is
specified in the task definition or Docker image) with a C<command>
override. You can also override existing environment variables (that
are specified in the task definition or Docker image) on a container or
add new environment variables to it with an C<environment> override.

A total of 8192 characters are allowed for overrides. This limit
includes the JSON formatting characters of the override structure.



=head2 PlacementConstraints => ArrayRef[ECS_PlacementConstraint]

An array of placement constraint objects to use for the task. You can
specify up to 10 constraints per task (including constraints in the
task definition and those specified at runtime).



=head2 PlacementStrategy => ArrayRef[ECS_PlacementStrategy]

The placement strategy objects to use for the task. You can specify a
maximum of five strategy rules per task.



=head2 PlatformVersion => Str

The platform version the task should run. A platform version is only
specified for tasks using the Fargate launch type. If one is not
specified, the C<LATEST> platform version is used by default. For more
information, see AWS Fargate Platform Versions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 PropagateTags => Str

Specifies whether to propagate the tags from the task definition to the
task. If no value is specified, the tags are not propagated. Tags can
only be propagated to the task during task creation. To add tags to a
task after task creation, use the TagResource API action.

An error will be received if you specify the C<SERVICE> option when
running a task.

Valid values are: C<"TASK_DEFINITION">, C<"SERVICE">

=head2 StartedBy => Str

An optional tag specified when a task is started. For example, if you
automatically trigger a task to run a batch process job, you could
apply a unique identifier for that job to your task with the
C<startedBy> parameter. You can then identify which tasks belong to
that job by filtering the results of a ListTasks call with the
C<startedBy> value. Up to 36 letters (uppercase and lowercase),
numbers, hyphens, and underscores are allowed.

If a task is started by an Amazon ECS service, then the C<startedBy>
parameter contains the deployment ID of the service that starts it.



=head2 Tags => ArrayRef[ECS_Tag]

The metadata that you apply to the task to help you categorize and
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




=head2 B<REQUIRED> TaskDefinition => Str

The C<family> and C<revision> (C<family:revision>) or full ARN of the
task definition to run. If a C<revision> is not specified, the latest
C<ACTIVE> revision is used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RunTask in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

