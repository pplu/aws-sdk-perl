package Paws::ECS::TaskDefinition;
  use Moose;
  has ContainerDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ContainerDefinition]', request_name => 'containerDefinitions', traits => ['NameInRequest']);
  has Family => (is => 'ro', isa => 'Str', request_name => 'family', traits => ['NameInRequest']);
  has NetworkMode => (is => 'ro', isa => 'Str', request_name => 'networkMode', traits => ['NameInRequest']);
  has PlacementConstraints => (is => 'ro', isa => 'ArrayRef[Paws::ECS::TaskDefinitionPlacementConstraint]', request_name => 'placementConstraints', traits => ['NameInRequest']);
  has RequiresAttributes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Attribute]', request_name => 'requiresAttributes', traits => ['NameInRequest']);
  has Revision => (is => 'ro', isa => 'Int', request_name => 'revision', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TaskDefinitionArn => (is => 'ro', isa => 'Str', request_name => 'taskDefinitionArn', traits => ['NameInRequest']);
  has TaskRoleArn => (is => 'ro', isa => 'Str', request_name => 'taskRoleArn', traits => ['NameInRequest']);
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Volume]', request_name => 'volumes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::TaskDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::TaskDefinition object:

  $service_obj->Method(Att1 => { ContainerDefinitions => $value, ..., Volumes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::TaskDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerDefinitions

=head1 DESCRIPTION

Details of a task definition.

=head1 ATTRIBUTES


=head2 ContainerDefinitions => ArrayRef[L<Paws::ECS::ContainerDefinition>]

  A list of container definitions in JSON format that describe the
different containers that make up your task. For more information about
container definition parameters and defaults, see Amazon ECS Task
Definitions
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html)
in the I<Amazon EC2 Container Service Developer Guide>.


=head2 Family => Str

  The family of your task definition, used as the definition name.


=head2 NetworkMode => Str

  The Docker networking mode to use for the containers in the task. The
valid values are C<none>, C<bridge>, and C<host>.

If the network mode is C<none>, the containers do not have external
connectivity. The default Docker network mode is C<bridge>. The C<host>
network mode offers the highest networking performance for containers
because it uses the host network stack instead of the virtualized
network stack provided by the C<bridge> mode.

For more information, see Network settings
(https://docs.docker.com/engine/reference/run/#network-settings) in the
I<Docker run reference>.


=head2 PlacementConstraints => ArrayRef[L<Paws::ECS::TaskDefinitionPlacementConstraint>]

  An array of placement constraint objects to use for tasks.


=head2 RequiresAttributes => ArrayRef[L<Paws::ECS::Attribute>]

  The container instance attributes required by your task.


=head2 Revision => Int

  The revision of the task in a particular family. The revision is a
version number of a task definition in a family. When you register a
task definition for the first time, the revision is C<1>; each time you
register a new revision of a task definition in the same family, the
revision value always increases by one (even if you have deregistered
previous revisions in this family).


=head2 Status => Str

  The status of the task definition.


=head2 TaskDefinitionArn => Str

  The full Amazon Resource Name (ARN) of the task definition.


=head2 TaskRoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role that containers in this
task can assume. All containers in this task are granted the
permissions that are specified in this role.


=head2 Volumes => ArrayRef[L<Paws::ECS::Volume>]

  The list of volumes in a task. For more information about volume
definition parameters and defaults, see Amazon ECS Task Definitions
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html)
in the I<Amazon EC2 Container Service Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

