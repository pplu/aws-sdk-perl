package Paws::ECS::TaskDefinition;
  use Moose;
  has Compatibilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'compatibilities', traits => ['NameInRequest']);
  has ContainerDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ContainerDefinition]', request_name => 'containerDefinitions', traits => ['NameInRequest']);
  has Cpu => (is => 'ro', isa => 'Str', request_name => 'cpu', traits => ['NameInRequest']);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', request_name => 'executionRoleArn', traits => ['NameInRequest']);
  has Family => (is => 'ro', isa => 'Str', request_name => 'family', traits => ['NameInRequest']);
  has Memory => (is => 'ro', isa => 'Str', request_name => 'memory', traits => ['NameInRequest']);
  has NetworkMode => (is => 'ro', isa => 'Str', request_name => 'networkMode', traits => ['NameInRequest']);
  has PlacementConstraints => (is => 'ro', isa => 'ArrayRef[Paws::ECS::TaskDefinitionPlacementConstraint]', request_name => 'placementConstraints', traits => ['NameInRequest']);
  has RequiresAttributes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Attribute]', request_name => 'requiresAttributes', traits => ['NameInRequest']);
  has RequiresCompatibilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'requiresCompatibilities', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { Compatibilities => $value, ..., Volumes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::TaskDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->Compatibilities

=head1 DESCRIPTION

Details of a task definition.

=head1 ATTRIBUTES


=head2 Compatibilities => ArrayRef[Str|Undef]

  The launch type to use with your task. For more information, see Amazon
ECS Launch Types
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 ContainerDefinitions => ArrayRef[L<Paws::ECS::ContainerDefinition>]

  A list of container definitions in JSON format that describe the
different containers that make up your task. For more information about
container definition parameters and defaults, see Amazon ECS Task
Definitions
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html)
in the I<Amazon Elastic Container Service Developer Guide>.


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



=head2 ExecutionRoleArn => Str

  The Amazon Resource Name (ARN) of the task execution role that the
Amazon ECS container agent and the Docker daemon can assume.


=head2 Family => Str

  The family of your task definition, used as the definition name.


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



=head2 NetworkMode => Str

  The Docker networking mode to use for the containers in the task. The
valid values are C<none>, C<bridge>, C<awsvpc>, and C<host>. The
default Docker network mode is C<bridge>. If using the Fargate launch
type, the C<awsvpc> network mode is required. If using the EC2 launch
type, any network mode can be used. If the network mode is set to
C<none>, you can't specify port mappings in your container definitions,
and the task's containers do not have external connectivity. The
C<host> and C<awsvpc> network modes offer the highest networking
performance for containers because they use the EC2 network stack
instead of the virtualized network stack provided by the C<bridge>
mode.

With the C<host> and C<awsvpc> network modes, exposed container ports
are mapped directly to the corresponding host port (for the C<host>
network mode) or the attached elastic network interface port (for the
C<awsvpc> network mode), so you cannot take advantage of dynamic host
port mappings.

If the network mode is C<awsvpc>, the task is allocated an Elastic
Network Interface, and you must specify a NetworkConfiguration when you
create a service or run a task with the task definition. For more
information, see Task Networking
(http://docs.aws.amazon.com/AmazonECS/latest/developerguidetask-networking.html)
in the I<Amazon Elastic Container Service Developer Guide>.

If the network mode is C<host>, you can't run multiple instantiations
of the same task on a single container instance when port mappings are
used.

For more information, see Network settings
(https://docs.docker.com/engine/reference/run/#network-settings) in the
I<Docker run reference>.


=head2 PlacementConstraints => ArrayRef[L<Paws::ECS::TaskDefinitionPlacementConstraint>]

  An array of placement constraint objects to use for tasks. This field
is not valid if using the Fargate launch type for your task.


=head2 RequiresAttributes => ArrayRef[L<Paws::ECS::Attribute>]

  The container instance attributes required by your task. This field is
not valid if using the Fargate launch type for your task.


=head2 RequiresCompatibilities => ArrayRef[Str|Undef]

  The launch type the task is using.


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

  The ARN of the IAM role that containers in this task can assume. All
containers in this task are granted the permissions that are specified
in this role.


=head2 Volumes => ArrayRef[L<Paws::ECS::Volume>]

  The list of volumes in a task.

If you are using the Fargate launch type, the C<host> and C<sourcePath>
parameters are not supported.

For more information about volume definition parameters and defaults,
see Amazon ECS Task Definitions
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definitions.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

