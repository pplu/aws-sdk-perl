package Paws::ECS::Task;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', request_name => 'clusterArn', traits => ['NameInRequest']);
  has ContainerInstanceArn => (is => 'ro', isa => 'Str', request_name => 'containerInstanceArn', traits => ['NameInRequest']);
  has Containers => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Container]', request_name => 'containers', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DesiredStatus => (is => 'ro', isa => 'Str', request_name => 'desiredStatus', traits => ['NameInRequest']);
  has Group => (is => 'ro', isa => 'Str', request_name => 'group', traits => ['NameInRequest']);
  has LastStatus => (is => 'ro', isa => 'Str', request_name => 'lastStatus', traits => ['NameInRequest']);
  has Overrides => (is => 'ro', isa => 'Paws::ECS::TaskOverride', request_name => 'overrides', traits => ['NameInRequest']);
  has StartedAt => (is => 'ro', isa => 'Str', request_name => 'startedAt', traits => ['NameInRequest']);
  has StartedBy => (is => 'ro', isa => 'Str', request_name => 'startedBy', traits => ['NameInRequest']);
  has StoppedAt => (is => 'ro', isa => 'Str', request_name => 'stoppedAt', traits => ['NameInRequest']);
  has StoppedReason => (is => 'ro', isa => 'Str', request_name => 'stoppedReason', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { ClusterArn => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Task object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterArn

=head1 DESCRIPTION

Details on a task in a cluster.

=head1 ATTRIBUTES


=head2 ClusterArn => Str

  The Amazon Resource Name (ARN) of the cluster that hosts the task.


=head2 ContainerInstanceArn => Str

  The Amazon Resource Name (ARN) of the container instances that host the
task.


=head2 Containers => ArrayRef[L<Paws::ECS::Container>]

  The containers associated with the task.


=head2 CreatedAt => Str

  The Unix timestamp for when the task was created (the task entered the
C<PENDING> state).


=head2 DesiredStatus => Str

  The desired status of the task.


=head2 Group => Str

  The name of the task group associated with the task.


=head2 LastStatus => Str

  The last known status of the task.


=head2 Overrides => L<Paws::ECS::TaskOverride>

  One or more container overrides.


=head2 StartedAt => Str

  The Unix timestamp for when the task was started (the task transitioned
from the C<PENDING> state to the C<RUNNING> state).


=head2 StartedBy => Str

  The tag specified when a task is started. If the task is started by an
Amazon ECS service, then the C<startedBy> parameter contains the
deployment ID of the service that starts it.


=head2 StoppedAt => Str

  The Unix timestamp for when the task was stopped (the task transitioned
from the C<RUNNING> state to the C<STOPPED> state).


=head2 StoppedReason => Str

  The reason the task was stopped.


=head2 TaskArn => Str

  The Amazon Resource Name (ARN) of the task.


=head2 TaskDefinitionArn => Str

  The Amazon Resource Name (ARN) of the task definition that creates the
task.


=head2 Version => Int

  The version counter for the task. Every time a task experiences a
change that triggers a CloudWatch event, the version counter is
incremented. If you are replicating your Amazon ECS task state with
CloudWatch events, you can compare the version of a task reported by
the Amazon ECS APIs with the version reported in CloudWatch events for
the task (inside the C<detail> object) to verify that the version in
your event stream is current.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

