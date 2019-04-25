package Paws::ECS::ContainerInstance;
  use Moose;
  has AgentConnected => (is => 'ro', isa => 'Bool', request_name => 'agentConnected', traits => ['NameInRequest']);
  has AgentUpdateStatus => (is => 'ro', isa => 'Str', request_name => 'agentUpdateStatus', traits => ['NameInRequest']);
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Attachment]', request_name => 'attachments', traits => ['NameInRequest']);
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Attribute]', request_name => 'attributes', traits => ['NameInRequest']);
  has ContainerInstanceArn => (is => 'ro', isa => 'Str', request_name => 'containerInstanceArn', traits => ['NameInRequest']);
  has Ec2InstanceId => (is => 'ro', isa => 'Str', request_name => 'ec2InstanceId', traits => ['NameInRequest']);
  has PendingTasksCount => (is => 'ro', isa => 'Int', request_name => 'pendingTasksCount', traits => ['NameInRequest']);
  has RegisteredAt => (is => 'ro', isa => 'Str', request_name => 'registeredAt', traits => ['NameInRequest']);
  has RegisteredResources => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Resource]', request_name => 'registeredResources', traits => ['NameInRequest']);
  has RemainingResources => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Resource]', request_name => 'remainingResources', traits => ['NameInRequest']);
  has RunningTasksCount => (is => 'ro', isa => 'Int', request_name => 'runningTasksCount', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', request_name => 'tags', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Int', request_name => 'version', traits => ['NameInRequest']);
  has VersionInfo => (is => 'ro', isa => 'Paws::ECS::VersionInfo', request_name => 'versionInfo', traits => ['NameInRequest']);
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

  This parameter returns C<true> if the agent is connected to Amazon ECS.
Registered instances with an agent that may be unhealthy or stopped
return C<false>. Only instances connected to an agent can accept
placement requests.


=head2 AgentUpdateStatus => Str

  The status of the most recent agent update. If an update has never been
requested, this value is C<NULL>.


=head2 Attachments => ArrayRef[L<Paws::ECS::Attachment>]

  The elastic network interfaces associated with the container instance.


=head2 Attributes => ArrayRef[L<Paws::ECS::Attribute>]

  The attributes set for the container instance, either by the Amazon ECS
container agent at instance registration or manually with the
PutAttributes operation.


=head2 ContainerInstanceArn => Str

  The Amazon Resource Name (ARN) of the container instance. The ARN
contains the C<arn:aws:ecs> namespace, followed by the Region of the
container instance, the AWS account ID of the container instance owner,
the C<container-instance> namespace, and then the container instance
ID. For example,
C<arn:aws:ecs:I<region>:I<aws_account_id>:container-instance/I<container_instance_ID>
>.


=head2 Ec2InstanceId => Str

  The EC2 instance ID of the container instance.


=head2 PendingTasksCount => Int

  The number of tasks on the container instance that are in the
C<PENDING> status.


=head2 RegisteredAt => Str

  The Unix timestamp for when the container instance was registered.


=head2 RegisteredResources => ArrayRef[L<Paws::ECS::Resource>]

  For CPU and memory resource types, this parameter describes the amount
of each resource that was available on the container instance when the
container agent registered it with Amazon ECS. This value represents
the total amount of CPU and memory that can be allocated on this
container instance to tasks. For port resource types, this parameter
describes the ports that were reserved by the Amazon ECS container
agent when it registered the container instance with Amazon ECS.


=head2 RemainingResources => ArrayRef[L<Paws::ECS::Resource>]

  For CPU and memory resource types, this parameter describes the
remaining CPU and memory that has not already been allocated to tasks
and is therefore available for new tasks. For port resource types, this
parameter describes the ports that were reserved by the Amazon ECS
container agent (at instance registration time) and any task containers
that have reserved port mappings on the host (with the C<host> or
C<bridge> network mode). Any port that is not specified here is
available for new tasks.


=head2 RunningTasksCount => Int

  The number of tasks on the container instance that are in the
C<RUNNING> status.


=head2 Status => Str

  The status of the container instance. The valid values are C<ACTIVE>,
C<INACTIVE>, or C<DRAINING>. C<ACTIVE> indicates that the container
instance can accept tasks. C<DRAINING> indicates that new tasks are not
placed on the container instance and any service tasks running on the
container instance are removed if possible. For more information, see
Container Instance Draining
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-draining.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

  The metadata that you apply to the container instance to help you
categorize and organize them. Each tag consists of a key and an
optional value, both of which you define. Tag keys can have a maximum
character length of 128 characters, and tag values can have a maximum
length of 256 characters.


=head2 Version => Int

  The version counter for the container instance. Every time a container
instance experiences a change that triggers a CloudWatch event, the
version counter is incremented. If you are replicating your Amazon ECS
container instance state with CloudWatch Events, you can compare the
version of a container instance reported by the Amazon ECS APIs with
the version reported in CloudWatch Events for the container instance
(inside the C<detail> object) to verify that the version in your event
stream is current.


=head2 VersionInfo => L<Paws::ECS::VersionInfo>

  The version information for the Amazon ECS container agent and Docker
daemon running on the container instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

