# Generated from default/object.tt
package Paws::ECS::Task;
  use Moo;
  use Types::Standard qw/ArrayRef Str Int/;
  use Paws::ECS::Types qw/ECS_Tag ECS_TaskOverride ECS_Attachment ECS_Container/;
  has Attachments => (is => 'ro', isa => ArrayRef[ECS_Attachment]);
  has ClusterArn => (is => 'ro', isa => Str);
  has Connectivity => (is => 'ro', isa => Str);
  has ConnectivityAt => (is => 'ro', isa => Str);
  has ContainerInstanceArn => (is => 'ro', isa => Str);
  has Containers => (is => 'ro', isa => ArrayRef[ECS_Container]);
  has Cpu => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has DesiredStatus => (is => 'ro', isa => Str);
  has ExecutionStoppedAt => (is => 'ro', isa => Str);
  has Group => (is => 'ro', isa => Str);
  has HealthStatus => (is => 'ro', isa => Str);
  has LastStatus => (is => 'ro', isa => Str);
  has LaunchType => (is => 'ro', isa => Str);
  has Memory => (is => 'ro', isa => Str);
  has Overrides => (is => 'ro', isa => ECS_TaskOverride);
  has PlatformVersion => (is => 'ro', isa => Str);
  has PullStartedAt => (is => 'ro', isa => Str);
  has PullStoppedAt => (is => 'ro', isa => Str);
  has StartedAt => (is => 'ro', isa => Str);
  has StartedBy => (is => 'ro', isa => Str);
  has StopCode => (is => 'ro', isa => Str);
  has StoppedAt => (is => 'ro', isa => Str);
  has StoppedReason => (is => 'ro', isa => Str);
  has StoppingAt => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[ECS_Tag]);
  has TaskArn => (is => 'ro', isa => Str);
  has TaskDefinitionArn => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HealthStatus' => {
                                   'type' => 'Str'
                                 },
               'TaskArn' => {
                              'type' => 'Str'
                            },
               'Attachments' => {
                                  'class' => 'Paws::ECS::Attachment',
                                  'type' => 'ArrayRef[ECS_Attachment]'
                                },
               'StartedAt' => {
                                'type' => 'Str'
                              },
               'StoppedReason' => {
                                    'type' => 'Str'
                                  },
               'TaskDefinitionArn' => {
                                        'type' => 'Str'
                                      },
               'StoppingAt' => {
                                 'type' => 'Str'
                               },
               'ContainerInstanceArn' => {
                                           'type' => 'Str'
                                         },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Connectivity' => {
                                   'type' => 'Str'
                                 },
               'DesiredStatus' => {
                                    'type' => 'Str'
                                  },
               'StartedBy' => {
                                'type' => 'Str'
                              },
               'PullStartedAt' => {
                                    'type' => 'Str'
                                  },
               'Cpu' => {
                          'type' => 'Str'
                        },
               'LaunchType' => {
                                 'type' => 'Str'
                               },
               'PlatformVersion' => {
                                      'type' => 'Str'
                                    },
               'Containers' => {
                                 'class' => 'Paws::ECS::Container',
                                 'type' => 'ArrayRef[ECS_Container]'
                               },
               'ExecutionStoppedAt' => {
                                         'type' => 'Str'
                                       },
               'LastStatus' => {
                                 'type' => 'Str'
                               },
               'Overrides' => {
                                'class' => 'Paws::ECS::TaskOverride',
                                'type' => 'ECS_TaskOverride'
                              },
               'StoppedAt' => {
                                'type' => 'Str'
                              },
               'ClusterArn' => {
                                 'type' => 'Str'
                               },
               'StopCode' => {
                               'type' => 'Str'
                             },
               'PullStoppedAt' => {
                                    'type' => 'Str'
                                  },
               'ConnectivityAt' => {
                                     'type' => 'Str'
                                   },
               'Group' => {
                            'type' => 'Str'
                          },
               'Version' => {
                              'type' => 'Int'
                            },
               'Memory' => {
                             'type' => 'Str'
                           },
               'Tags' => {
                           'class' => 'Paws::ECS::Tag',
                           'type' => 'ArrayRef[ECS_Tag]'
                         }
             },
  'NameInRequest' => {
                       'HealthStatus' => 'healthStatus',
                       'TaskArn' => 'taskArn',
                       'Attachments' => 'attachments',
                       'StartedAt' => 'startedAt',
                       'StoppedReason' => 'stoppedReason',
                       'TaskDefinitionArn' => 'taskDefinitionArn',
                       'StoppingAt' => 'stoppingAt',
                       'ContainerInstanceArn' => 'containerInstanceArn',
                       'CreatedAt' => 'createdAt',
                       'Connectivity' => 'connectivity',
                       'DesiredStatus' => 'desiredStatus',
                       'StartedBy' => 'startedBy',
                       'PullStartedAt' => 'pullStartedAt',
                       'Cpu' => 'cpu',
                       'LaunchType' => 'launchType',
                       'PlatformVersion' => 'platformVersion',
                       'Containers' => 'containers',
                       'ExecutionStoppedAt' => 'executionStoppedAt',
                       'LastStatus' => 'lastStatus',
                       'Overrides' => 'overrides',
                       'StoppedAt' => 'stoppedAt',
                       'ClusterArn' => 'clusterArn',
                       'StopCode' => 'stopCode',
                       'PullStoppedAt' => 'pullStoppedAt',
                       'ConnectivityAt' => 'connectivityAt',
                       'Group' => 'group',
                       'Version' => 'version',
                       'Memory' => 'memory',
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Task

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Task object:

  $service_obj->Method(Att1 => { Attachments => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Task object:

  $result = $service_obj->Method(...);
  $result->Att1->Attachments

=head1 DESCRIPTION

Details on a task in a cluster.

=head1 ATTRIBUTES


=head2 Attachments => ArrayRef[ECS_Attachment]

  The Elastic Network Adapter associated with the task if the task uses
the C<awsvpc> network mode.


=head2 ClusterArn => Str

  The ARN of the cluster that hosts the task.


=head2 Connectivity => Str

  The connectivity status of a task.


=head2 ConnectivityAt => Str

  The Unix timestamp for when the task last went into C<CONNECTED>
status.


=head2 ContainerInstanceArn => Str

  The ARN of the container instances that host the task.


=head2 Containers => ArrayRef[ECS_Container]

  The containers associated with the task.


=head2 Cpu => Str

  The number of CPU units used by the task as expressed in a task
definition. It can be expressed as an integer using CPU units, for
example C<1024>. It can also be expressed as a string using vCPUs, for
example C<1 vCPU> or C<1 vcpu>. String values are converted to an
integer indicating the CPU units when the task definition is
registered.

If you are using the EC2 launch type, this field is optional. Supported
values are between C<128> CPU units (C<0.125> vCPUs) and C<10240> CPU
units (C<10> vCPUs).

If you are using the Fargate launch type, this field is required and
you must use one of the following values, which determines your range
of supported values for the C<memory> parameter:

=over

=item *

256 (.25 vCPU) - Available C<memory> values: 512 (0.5 GB), 1024 (1 GB),
2048 (2 GB)

=item *

512 (.5 vCPU) - Available C<memory> values: 1024 (1 GB), 2048 (2 GB),
3072 (3 GB), 4096 (4 GB)

=item *

1024 (1 vCPU) - Available C<memory> values: 2048 (2 GB), 3072 (3 GB),
4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)

=item *

2048 (2 vCPU) - Available C<memory> values: Between 4096 (4 GB) and
16384 (16 GB) in increments of 1024 (1 GB)

=item *

4096 (4 vCPU) - Available C<memory> values: Between 8192 (8 GB) and
30720 (30 GB) in increments of 1024 (1 GB)

=back



=head2 CreatedAt => Str

  The Unix timestamp for when the task was created (the task entered the
C<PENDING> state).


=head2 DesiredStatus => Str

  The desired status of the task. For more information, see Task
Lifecycle
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html).


=head2 ExecutionStoppedAt => Str

  The Unix timestamp for when the task execution stopped.


=head2 Group => Str

  The name of the task group associated with the task.


=head2 HealthStatus => Str

  The health status for the task, which is determined by the health of
the essential containers in the task. If all essential containers in
the task are reporting as C<HEALTHY>, then the task status also reports
as C<HEALTHY>. If any essential containers in the task are reporting as
C<UNHEALTHY> or C<UNKNOWN>, then the task status also reports as
C<UNHEALTHY> or C<UNKNOWN>, accordingly.

The Amazon ECS container agent does not monitor or report on Docker
health checks that are embedded in a container image (such as those
specified in a parent image or from the image's Dockerfile) and not
specified in the container definition. Health check parameters that are
specified in a container definition override any Docker health checks
that exist in the container image.


=head2 LastStatus => Str

  The last known status of the task. For more information, see Task
Lifecycle
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html).


=head2 LaunchType => Str

  The launch type on which your task is running. For more information,
see Amazon ECS Launch Types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 Memory => Str

  The amount of memory (in MiB) used by the task as expressed in a task
definition. It can be expressed as an integer using MiB, for example
C<1024>. It can also be expressed as a string using GB, for example
C<1GB> or C<1 GB>. String values are converted to an integer indicating
the MiB when the task definition is registered.

If you are using the EC2 launch type, this field is optional.

If you are using the Fargate launch type, this field is required and
you must use one of the following values, which determines your range
of supported values for the C<cpu> parameter:

=over

=item *

512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available C<cpu> values: 256
(.25 vCPU)

=item *

1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available C<cpu>
values: 512 (.5 vCPU)

=item *

2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168
(7 GB), 8192 (8 GB) - Available C<cpu> values: 1024 (1 vCPU)

=item *

Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) -
Available C<cpu> values: 2048 (2 vCPU)

=item *

Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) -
Available C<cpu> values: 4096 (4 vCPU)

=back



=head2 Overrides => ECS_TaskOverride

  One or more container overrides.


=head2 PlatformVersion => Str

  The platform version on which your task is running. A platform version
is only specified for tasks using the Fargate launch type. If one is
not specified, the C<LATEST> platform version is used by default. For
more information, see AWS Fargate Platform Versions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 PullStartedAt => Str

  The Unix timestamp for when the container image pull began.


=head2 PullStoppedAt => Str

  The Unix timestamp for when the container image pull completed.


=head2 StartedAt => Str

  The Unix timestamp for when the task started (the task transitioned
from the C<PENDING> state to the C<RUNNING> state).


=head2 StartedBy => Str

  The tag specified when a task is started. If the task is started by an
Amazon ECS service, then the C<startedBy> parameter contains the
deployment ID of the service that starts it.


=head2 StopCode => Str

  The stop code indicating why a task was stopped. The C<stoppedReason>
may contain additional details.


=head2 StoppedAt => Str

  The Unix timestamp for when the task was stopped (the task transitioned
from the C<RUNNING> state to the C<STOPPED> state).


=head2 StoppedReason => Str

  The reason that the task was stopped.


=head2 StoppingAt => Str

  The Unix timestamp for when the task stops (transitions from the
C<RUNNING> state to C<STOPPED>).


=head2 Tags => ArrayRef[ECS_Tag]

  The metadata that you apply to the task to help you categorize and
organize them. Each tag consists of a key and an optional value, both
of which you define. Tag keys can have a maximum character length of
128 characters, and tag values can have a maximum length of 256
characters.


=head2 TaskArn => Str

  The Amazon Resource Name (ARN) of the task.


=head2 TaskDefinitionArn => Str

  The ARN of the task definition that creates the task.


=head2 Version => Int

  The version counter for the task. Every time a task experiences a
change that triggers a CloudWatch event, the version counter is
incremented. If you are replicating your Amazon ECS task state with
CloudWatch Events, you can compare the version of a task reported by
the Amazon ECS API actionss with the version reported in CloudWatch
Events for the task (inside the C<detail> object) to verify that the
version in your event stream is current.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

