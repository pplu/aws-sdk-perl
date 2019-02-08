package Paws::ECS::ContainerOverride;
  use Moose;
  has Command => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'command', traits => ['NameInRequest']);
  has Cpu => (is => 'ro', isa => 'Int', request_name => 'cpu', traits => ['NameInRequest']);
  has Environment => (is => 'ro', isa => 'ArrayRef[Paws::ECS::KeyValuePair]', request_name => 'environment', traits => ['NameInRequest']);
  has Memory => (is => 'ro', isa => 'Int', request_name => 'memory', traits => ['NameInRequest']);
  has MemoryReservation => (is => 'ro', isa => 'Int', request_name => 'memoryReservation', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ResourceRequirements => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ResourceRequirement]', request_name => 'resourceRequirements', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ContainerOverride

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ContainerOverride object:

  $service_obj->Method(Att1 => { Command => $value, ..., ResourceRequirements => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ContainerOverride object:

  $result = $service_obj->Method(...);
  $result->Att1->Command

=head1 DESCRIPTION

The overrides that should be sent to a container.

=head1 ATTRIBUTES


=head2 Command => ArrayRef[Str|Undef]

  The command to send to the container that overrides the default command
from the Docker image or the task definition. You must also specify a
container name.


=head2 Cpu => Int

  The number of C<cpu> units reserved for the container, instead of the
default value from the task definition. You must also specify a
container name.


=head2 Environment => ArrayRef[L<Paws::ECS::KeyValuePair>]

  The environment variables to send to the container. You can add new
environment variables, which are added to the container at launch, or
you can override the existing environment variables from the Docker
image or the task definition. You must also specify a container name.


=head2 Memory => Int

  The hard limit (in MiB) of memory to present to the container, instead
of the default value from the task definition. If your container
attempts to exceed the memory specified here, the container is killed.
You must also specify a container name.


=head2 MemoryReservation => Int

  The soft limit (in MiB) of memory to reserve for the container, instead
of the default value from the task definition. You must also specify a
container name.


=head2 Name => Str

  The name of the container that receives the override. This parameter is
required if any override is specified.


=head2 ResourceRequirements => ArrayRef[L<Paws::ECS::ResourceRequirement>]

  The type and amount of a resource to assign to a container, instead of
the default value from the task definition. The only supported resource
is a GPU.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

