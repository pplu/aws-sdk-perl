package Paws::ECS::Task;
  use Moose;
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Attachment]', request_name => 'attachments', traits => ['NameInRequest']);
  has ClusterArn => (is => 'ro', isa => 'Str', request_name => 'clusterArn', traits => ['NameInRequest']);
  has Connectivity => (is => 'ro', isa => 'Str', request_name => 'connectivity', traits => ['NameInRequest']);
  has ConnectivityAt => (is => 'ro', isa => 'Str', request_name => 'connectivityAt', traits => ['NameInRequest']);
  has ContainerInstanceArn => (is => 'ro', isa => 'Str', request_name => 'containerInstanceArn', traits => ['NameInRequest']);
  has Containers => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Container]', request_name => 'containers', traits => ['NameInRequest']);
  has Cpu => (is => 'ro', isa => 'Str', request_name => 'cpu', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DesiredStatus => (is => 'ro', isa => 'Str', request_name => 'desiredStatus', traits => ['NameInRequest']);
  has ExecutionStoppedAt => (is => 'ro', isa => 'Str', request_name => 'executionStoppedAt', traits => ['NameInRequest']);
  has Group => (is => 'ro', isa => 'Str', request_name => 'group', traits => ['NameInRequest']);
  has LastStatus => (is => 'ro', isa => 'Str', request_name => 'lastStatus', traits => ['NameInRequest']);
  has LaunchType => (is => 'ro', isa => 'Str', request_name => 'launchType', traits => ['NameInRequest']);
  has Memory => (is => 'ro', isa => 'Str', request_name => 'memory', traits => ['NameInRequest']);
  has Overrides => (is => 'ro', isa => 'Paws::ECS::TaskOverride', request_name => 'overrides', traits => ['NameInRequest']);
  has PlatformVersion => (is => 'ro', isa => 'Str', request_name => 'platformVersion', traits => ['NameInRequest']);
  has PullStartedAt => (is => 'ro', isa => 'Str', request_name => 'pullStartedAt', traits => ['NameInRequest']);
  has PullStoppedAt => (is => 'ro', isa => 'Str', request_name => 'pullStoppedAt', traits => ['NameInRequest']);
  has StartedAt => (is => 'ro', isa => 'Str', request_name => 'startedAt', traits => ['NameInRequest']);
  has StartedBy => (is => 'ro', isa => 'Str', request_name => 'startedBy', traits => ['NameInRequest']);
  has StoppedAt => (is => 'ro', isa => 'Str', request_name => 'stoppedAt', traits => ['NameInRequest']);
  has StoppedReason => (is => 'ro', isa => 'Str', request_name => 'stoppedReason', traits => ['NameInRequest']);
  has StoppingAt => (is => 'ro', isa => 'Str', request_name => 'stoppingAt', traits => ['NameInRequest']);
  has TaskArn => (is => 'ro', isa => 'Str', request_name => 'taskArn', traits => ['NameInRequest']);
  has TaskDefinitionArn => (is => 'ro', isa => 'Str', request_name => 'taskDefinitionArn', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Int', request_name => 'version', traits => ['NameInRequest']);
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


=head2 Attachments => ArrayRef[L<Paws::ECS::Attachment>]

  The Elastic Network Adapter associated with the task if the task uses
the C<awsvpc> network mode.


=head2 ClusterArn => Str

  The ARN of the cluster that hosts the task.


=head2 Connectivity => Str

  The connectivity status of a task.


=head2 ConnectivityAt => Str

  The Unix time stamp for when the task last went into C<CONNECTED>
status.


=head2 ContainerInstanceArn => Str

  The ARN of the container instances that host the task.


=head2 Containers => ArrayRef[L<Paws::ECS::Container>]

  The containers associated with the task.


=head2 Cpu => Str

  The number of C<cpu> units used by the task. If using the EC2 launch
type, this field is optional and any value can be used. If using the
Fargate launch type, this field is required and you must use one of the
following values, which determines your range of valid values for the
C<memory> parameter:

=over

=item *

256 (.25 vCPU) - Available C<memory> values: 512MB, 1GB, 2GB

=item *

512 (.5 vCPU) - Available C<memory> values: 1GB, 2GB, 3GB, 4GB

=item *

1024 (1 vCPU) - Available C<memory> values: 2GB, 3GB, 4GB, 5GB, 6GB,
7GB, 8GB

=item *

2048 (2 vCPU) - Available C<memory> values: Between 4GB and 16GB in 1GB
increments

=item *

4096 (4 vCPU) - Available C<memory> values: Between 8GB and 30GB in 1GB
increments

=back



=head2 CreatedAt => Str

  The Unix time stamp for when the task was created (the task entered the
C<PENDING> state).


=head2 DesiredStatus => Str

  The desired status of the task.


=head2 ExecutionStoppedAt => Str

  The Unix timestamp for when the task execution stopped.


=head2 Group => Str

  The name of the task group associated with the task.


=head2 LastStatus => Str

  The last known status of the task.


=head2 LaunchType => Str

  The launch type on which your task is running.


=head2 Memory => Str

  The amount (in MiB) of memory used by the task. If using the EC2 launch
type, this field is optional and any value can be used. If using the
Fargate launch type, this field is required and you must use one of the
following values, which determines your range of valid values for the
C<cpu> parameter:

=over

=item *

512MB, 1GB, 2GB - Available C<cpu> values: 256 (.25 vCPU)

=item *

1GB, 2GB, 3GB, 4GB - Available C<cpu> values: 512 (.5 vCPU)

=item *

2GB, 3GB, 4GB, 5GB, 6GB, 7GB, 8GB - Available C<cpu> values: 1024 (1
vCPU)

=item *

Between 4GB and 16GB in 1GB increments - Available C<cpu> values: 2048
(2 vCPU)

=item *

Between 8GB and 30GB in 1GB increments - Available C<cpu> values: 4096
(4 vCPU)

=back



=head2 Overrides => L<Paws::ECS::TaskOverride>

  One or more container overrides.


=head2 PlatformVersion => Str

  The platform version on which your task is running. For more
information, see AWS Fargate Platform Versions
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 PullStartedAt => Str

  The Unix time stamp for when the container image pull began.


=head2 PullStoppedAt => Str

  The Unix time stamp for when the container image pull completed.


=head2 StartedAt => Str

  The Unix time stamp for when the task started (the task transitioned
from the C<PENDING> state to the C<RUNNING> state).


=head2 StartedBy => Str

  The tag specified when a task is started. If the task is started by an
Amazon ECS service, then the C<startedBy> parameter contains the
deployment ID of the service that starts it.


=head2 StoppedAt => Str

  The Unix time stamp for when the task was stopped (the task
transitioned from the C<RUNNING> state to the C<STOPPED> state).


=head2 StoppedReason => Str

  The reason the task was stopped.


=head2 StoppingAt => Str

  The Unix time stamp for when the task will stop (the task transitioned
from the C<RUNNING> state to the C<STOPPED> state).


=head2 TaskArn => Str

  The Amazon Resource Name (ARN) of the task.


=head2 TaskDefinitionArn => Str

  The ARN of the task definition that creates the task.


=head2 Version => Int

  The version counter for the task. Every time a task experiences a
change that triggers a CloudWatch event, the version counter is
incremented. If you are replicating your Amazon ECS task state with
CloudWatch Events, you can compare the version of a task reported by
the Amazon ECS APIs with the version reported in CloudWatch Events for
the task (inside the C<detail> object) to verify that the version in
your event stream is current.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

