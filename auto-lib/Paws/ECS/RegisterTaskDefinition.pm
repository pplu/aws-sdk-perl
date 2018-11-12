
package Paws::ECS::RegisterTaskDefinition;
  use Moose;
  has ContainerDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ContainerDefinition]', traits => ['NameInRequest'], request_name => 'containerDefinitions' , required => 1);
  has Cpu => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cpu' );
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionRoleArn' );
  has Family => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'family' , required => 1);
  has Memory => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'memory' );
  has NetworkMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkMode' );
  has PlacementConstraints => (is => 'ro', isa => 'ArrayRef[Paws::ECS::TaskDefinitionPlacementConstraint]', traits => ['NameInRequest'], request_name => 'placementConstraints' );
  has RequiresCompatibilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'requiresCompatibilities' );
  has TaskRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskRoleArn' );
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Volume]', traits => ['NameInRequest'], request_name => 'volumes' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterTaskDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::RegisterTaskDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::RegisterTaskDefinition - Arguments for method RegisterTaskDefinition on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterTaskDefinition on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method RegisterTaskDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterTaskDefinition.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To register a task definition
    # This example registers a task definition to the specified family.
    my $RegisterTaskDefinitionResponse = $ecs->RegisterTaskDefinition(
      {
        'ContainerDefinitions' => [

          {
            'Command'   => [ 'sleep', 360 ],
            'Cpu'       => 10,
            'Essential' => 1,
            'Image'     => 'busybox',
            'Memory'    => 10,
            'Name'      => 'sleep'
          }
        ],
        'Family'      => 'sleep360',
        'TaskRoleArn' => '',
        'Volumes'     => [

        ]
      }
    );

    # Results:
    my $taskDefinition = $RegisterTaskDefinitionResponse->taskDefinition;

    # Returns a L<Paws::ECS::RegisterTaskDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/RegisterTaskDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerDefinitions => ArrayRef[L<Paws::ECS::ContainerDefinition>]

A list of container definitions in JSON format that describe the
different containers that make up your task.



=head2 Cpu => Str

The number of CPU units used by the task. It can be expressed as an
integer using CPU units, for example C<1024>, or as a string using
vCPUs, for example C<1 vCPU> or C<1 vcpu>, in a task definition. String
values are converted to an integer indicating the CPU units when the
task definition is registered.

Task-level CPU and memory parameters are ignored for Windows
containers. We recommend specifying container-level resources for
Windows containers.

If using the EC2 launch type, this field is optional. Supported values
are between C<128> CPU units (C<0.125> vCPUs) and C<10240> CPU units
(C<10> vCPUs).

If using the Fargate launch type, this field is required and you must
use one of the following values, which determines your range of
supported values for the C<memory> parameter:

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




=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the task execution role that the
Amazon ECS container agent and the Docker daemon can assume.



=head2 B<REQUIRED> Family => Str

You must specify a C<family> for a task definition, which allows you to
track multiple versions of the same task definition. The C<family> is
used as a name for your task definition. Up to 255 letters (uppercase
and lowercase), numbers, hyphens, and underscores are allowed.



=head2 Memory => Str

The amount of memory (in MiB) used by the task. It can be expressed as
an integer using MiB, for example C<1024>, or as a string using GB, for
example C<1GB> or C<1 GB>, in a task definition. String values are
converted to an integer indicating the MiB when the task definition is
registered.

Task-level CPU and memory parameters are ignored for Windows
containers. We recommend specifying container-level resources for
Windows containers.

If using the EC2 launch type, this field is optional.

If using the Fargate launch type, this field is required and you must
use one of the following values, which determines your range of
supported values for the C<cpu> parameter:

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
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
in the I<Amazon Elastic Container Service Developer Guide>.

If the network mode is C<host>, you can't run multiple instantiations
of the same task on a single container instance when port mappings are
used.

Docker for Windows uses different network modes than Docker for Linux.
When you register a task definition with Windows containers, you must
not specify a network mode.

For more information, see Network settings
(https://docs.docker.com/engine/reference/run/#network-settings) in the
I<Docker run reference>.

Valid values are: C<"bridge">, C<"host">, C<"awsvpc">, C<"none">

=head2 PlacementConstraints => ArrayRef[L<Paws::ECS::TaskDefinitionPlacementConstraint>]

An array of placement constraint objects to use for the task. You can
specify a maximum of 10 constraints per task (this limit includes
constraints in the task definition and those specified at run time).



=head2 RequiresCompatibilities => ArrayRef[Str|Undef]

The launch type required by the task. If no value is specified, it
defaults to C<EC2>.



=head2 TaskRoleArn => Str

The short name or full Amazon Resource Name (ARN) of the IAM role that
containers in this task can assume. All containers in this task are
granted the permissions that are specified in this role. For more
information, see IAM Roles for Tasks
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 Volumes => ArrayRef[L<Paws::ECS::Volume>]

A list of volume definitions in JSON format that containers in your
task may use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterTaskDefinition in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

