package Paws::ECS::ContainerInstance;
  use Moose;
  has AgentConnected => (is => 'ro', isa => 'Bool', xmlname => 'agentConnected', request_name => 'agentConnected', traits => ['Unwrapped','NameInRequest']);
  has AgentUpdateStatus => (is => 'ro', isa => 'Str', xmlname => 'agentUpdateStatus', request_name => 'agentUpdateStatus', traits => ['Unwrapped','NameInRequest']);
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Attribute]', xmlname => 'attributes', request_name => 'attributes', traits => ['Unwrapped','NameInRequest']);
  has ContainerInstanceArn => (is => 'ro', isa => 'Str', xmlname => 'containerInstanceArn', request_name => 'containerInstanceArn', traits => ['Unwrapped','NameInRequest']);
  has Ec2InstanceId => (is => 'ro', isa => 'Str', xmlname => 'ec2InstanceId', request_name => 'ec2InstanceId', traits => ['Unwrapped','NameInRequest']);
  has PendingTasksCount => (is => 'ro', isa => 'Int', xmlname => 'pendingTasksCount', request_name => 'pendingTasksCount', traits => ['Unwrapped','NameInRequest']);
  has RegisteredResources => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Resource]', xmlname => 'registeredResources', request_name => 'registeredResources', traits => ['Unwrapped','NameInRequest']);
  has RemainingResources => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Resource]', xmlname => 'remainingResources', request_name => 'remainingResources', traits => ['Unwrapped','NameInRequest']);
  has RunningTasksCount => (is => 'ro', isa => 'Int', xmlname => 'runningTasksCount', request_name => 'runningTasksCount', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
  has VersionInfo => (is => 'ro', isa => 'Paws::ECS::VersionInfo', xmlname => 'versionInfo', request_name => 'versionInfo', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ContainerInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ContainerInstance object:

  $service_obj->Method(Att1 => { AgentConnected => $value, ..., VersionInfo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ContainerInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentConnected

=head1 DESCRIPTION

An EC2 instance that is running the Amazon ECS agent and has been
registered with a cluster.

=head1 ATTRIBUTES


=head2 AgentConnected => Bool

  This parameter returns C<true> if the agent is actually connected to
Amazon ECS. Registered instances with an agent that may be unhealthy or
stopped return C<false>, and instances without a connected agent cannot
accept placement requests.


=head2 AgentUpdateStatus => Str

  The status of the most recent agent update. If an update has never been
requested, this value is C<NULL>.


=head2 Attributes => ArrayRef[L<Paws::ECS::Attribute>]

  The attributes set for the container instance by the Amazon ECS
container agent at instance registration.


=head2 ContainerInstanceArn => Str

  The Amazon Resource Name (ARN) of the container instance. The ARN
contains the C<arn:aws:ecs> namespace, followed by the region of the
container instance, the AWS account ID of the container instance owner,
the C<container-instance> namespace, and then the container instance
ID. For example,
arn:aws:ecs:I<region>:I<aws_account_id>:container-instance/I<container_instance_ID>.


=head2 Ec2InstanceId => Str

  The EC2 instance ID of the container instance.


=head2 PendingTasksCount => Int

  The number of tasks on the container instance that are in the
C<PENDING> status.


=head2 RegisteredResources => ArrayRef[L<Paws::ECS::Resource>]

  The registered resources on the container instance that are in use by
current tasks.


=head2 RemainingResources => ArrayRef[L<Paws::ECS::Resource>]

  The remaining resources of the container instance that are available
for new tasks.


=head2 RunningTasksCount => Int

  The number of tasks on the container instance that are in the
C<RUNNING> status.


=head2 Status => Str

  The status of the container instance. The valid values are C<ACTIVE> or
C<INACTIVE>. C<ACTIVE> indicates that the container instance can accept
tasks.


=head2 VersionInfo => L<Paws::ECS::VersionInfo>

  The version information for the Amazon ECS container agent and Docker
daemon running on the container instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

