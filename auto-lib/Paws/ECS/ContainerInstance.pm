# Generated from default/object.tt
package Paws::ECS::ContainerInstance;
  use Moo;
  use Types::Standard qw/Bool Str ArrayRef Int/;
  use Paws::ECS::Types qw/ECS_Tag ECS_Resource ECS_VersionInfo ECS_Attribute ECS_Attachment/;
  has AgentConnected => (is => 'ro', isa => Bool);
  has AgentUpdateStatus => (is => 'ro', isa => Str);
  has Attachments => (is => 'ro', isa => ArrayRef[ECS_Attachment]);
  has Attributes => (is => 'ro', isa => ArrayRef[ECS_Attribute]);
  has ContainerInstanceArn => (is => 'ro', isa => Str);
  has Ec2InstanceId => (is => 'ro', isa => Str);
  has PendingTasksCount => (is => 'ro', isa => Int);
  has RegisteredAt => (is => 'ro', isa => Str);
  has RegisteredResources => (is => 'ro', isa => ArrayRef[ECS_Resource]);
  has RemainingResources => (is => 'ro', isa => ArrayRef[ECS_Resource]);
  has RunningTasksCount => (is => 'ro', isa => Int);
  has Status => (is => 'ro', isa => Str);
  has StatusReason => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[ECS_Tag]);
  has Version => (is => 'ro', isa => Int);
  has VersionInfo => (is => 'ro', isa => ECS_VersionInfo);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RunningTasksCount' => {
                                        'type' => 'Int'
                                      },
               'Attachments' => {
                                  'class' => 'Paws::ECS::Attachment',
                                  'type' => 'ArrayRef[ECS_Attachment]'
                                },
               'RegisteredAt' => {
                                   'type' => 'Str'
                                 },
               'Status' => {
                             'type' => 'Str'
                           },
               'ContainerInstanceArn' => {
                                           'type' => 'Str'
                                         },
               'RemainingResources' => {
                                         'type' => 'ArrayRef[ECS_Resource]',
                                         'class' => 'Paws::ECS::Resource'
                                       },
               'PendingTasksCount' => {
                                        'type' => 'Int'
                                      },
               'RegisteredResources' => {
                                          'type' => 'ArrayRef[ECS_Resource]',
                                          'class' => 'Paws::ECS::Resource'
                                        },
               'Ec2InstanceId' => {
                                    'type' => 'Str'
                                  },
               'Attributes' => {
                                 'type' => 'ArrayRef[ECS_Attribute]',
                                 'class' => 'Paws::ECS::Attribute'
                               },
               'VersionInfo' => {
                                  'class' => 'Paws::ECS::VersionInfo',
                                  'type' => 'ECS_VersionInfo'
                                },
               'AgentUpdateStatus' => {
                                        'type' => 'Str'
                                      },
               'Tags' => {
                           'type' => 'ArrayRef[ECS_Tag]',
                           'class' => 'Paws::ECS::Tag'
                         },
               'AgentConnected' => {
                                     'type' => 'Bool'
                                   },
               'Version' => {
                              'type' => 'Int'
                            },
               'StatusReason' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'VersionInfo' => 'versionInfo',
                       'Tags' => 'tags',
                       'AgentUpdateStatus' => 'agentUpdateStatus',
                       'AgentConnected' => 'agentConnected',
                       'Version' => 'version',
                       'StatusReason' => 'statusReason',
                       'RunningTasksCount' => 'runningTasksCount',
                       'Attachments' => 'attachments',
                       'Status' => 'status',
                       'ContainerInstanceArn' => 'containerInstanceArn',
                       'RegisteredAt' => 'registeredAt',
                       'PendingTasksCount' => 'pendingTasksCount',
                       'RemainingResources' => 'remainingResources',
                       'Ec2InstanceId' => 'ec2InstanceId',
                       'Attributes' => 'attributes',
                       'RegisteredResources' => 'registeredResources'
                     }
}
;
    return $Params_map;
  }


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


=head2 Attachments => ArrayRef[ECS_Attachment]

  The resources attached to a container instance, such as elastic network
interfaces.


=head2 Attributes => ArrayRef[ECS_Attribute]

  The attributes set for the container instance, either by the Amazon ECS
container agent at instance registration or manually with the
PutAttributes operation.


=head2 ContainerInstanceArn => Str

  The Amazon Resource Name (ARN) of the container instance. The ARN
contains the C<arn:aws:ecs> namespace, followed by the Region of the
container instance, the AWS account ID of the container instance owner,
the C<container-instance> namespace, and then the container instance
ID. For example,
C<arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID>.


=head2 Ec2InstanceId => Str

  The EC2 instance ID of the container instance.


=head2 PendingTasksCount => Int

  The number of tasks on the container instance that are in the
C<PENDING> status.


=head2 RegisteredAt => Str

  The Unix timestamp for when the container instance was registered.


=head2 RegisteredResources => ArrayRef[ECS_Resource]

  For CPU and memory resource types, this parameter describes the amount
of each resource that was available on the container instance when the
container agent registered it with Amazon ECS. This value represents
the total amount of CPU and memory that can be allocated on this
container instance to tasks. For port resource types, this parameter
describes the ports that were reserved by the Amazon ECS container
agent when it registered the container instance with Amazon ECS.


=head2 RemainingResources => ArrayRef[ECS_Resource]

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

  The status of the container instance. The valid values are
C<REGISTERING>, C<REGISTRATION_FAILED>, C<ACTIVE>, C<INACTIVE>,
C<DEREGISTERING>, or C<DRAINING>.

If your account has opted in to the C<awsvpcTrunking> account setting,
then any newly registered container instance will transition to a
C<REGISTERING> status while the trunk elastic network interface is
provisioned for the instance. If the registration fails, the instance
will transition to a C<REGISTRATION_FAILED> status. You can describe
the container instance and see the reason for failure in the
C<statusReason> parameter. Once the container instance is terminated,
the instance transitions to a C<DEREGISTERING> status while the trunk
elastic network interface is deprovisioned. The instance then
transitions to an C<INACTIVE> status.

The C<ACTIVE> status indicates that the container instance can accept
tasks. The C<DRAINING> indicates that new tasks are not placed on the
container instance and any service tasks running on the container
instance are removed if possible. For more information, see Container
Instance Draining
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-draining.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 StatusReason => Str

  The reason that the container instance reached its current status.


=head2 Tags => ArrayRef[ECS_Tag]

  The metadata that you apply to the container instance to help you
categorize and organize them. Each tag consists of a key and an
optional value, both of which you define.

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



=head2 Version => Int

  The version counter for the container instance. Every time a container
instance experiences a change that triggers a CloudWatch event, the
version counter is incremented. If you are replicating your Amazon ECS
container instance state with CloudWatch Events, you can compare the
version of a container instance reported by the Amazon ECS APIs with
the version reported in CloudWatch Events for the container instance
(inside the C<detail> object) to verify that the version in your event
stream is current.


=head2 VersionInfo => ECS_VersionInfo

  The version information for the Amazon ECS container agent and Docker
daemon running on the container instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

