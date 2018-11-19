package Paws::ECS::LinuxParameters;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'Paws::ECS::KernelCapabilities', request_name => 'capabilities', traits => ['NameInRequest']);
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Device]', request_name => 'devices', traits => ['NameInRequest']);
  has InitProcessEnabled => (is => 'ro', isa => 'Bool', request_name => 'initProcessEnabled', traits => ['NameInRequest']);
  has SharedMemorySize => (is => 'ro', isa => 'Int', request_name => 'sharedMemorySize', traits => ['NameInRequest']);
  has Tmpfs => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tmpfs]', request_name => 'tmpfs', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::LinuxParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::LinuxParameters object:

  $service_obj->Method(Att1 => { Capabilities => $value, ..., Tmpfs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::LinuxParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Capabilities

=head1 DESCRIPTION

Linux-specific options that are applied to the container, such as Linux
KernelCapabilities.

=head1 ATTRIBUTES


=head2 Capabilities => L<Paws::ECS::KernelCapabilities>

  The Linux capabilities for the container that are added to or dropped
from the default configuration provided by Docker.

If you are using tasks that use the Fargate launch type,
C<capabilities> is supported but the C<add> parameter is not supported.


=head2 Devices => ArrayRef[L<Paws::ECS::Device>]

  Any host devices to expose to the container. This parameter maps to
C<Devices> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--device> option
to docker run (https://docs.docker.com/engine/reference/run/).

If you are using tasks that use the Fargate launch type, the C<devices>
parameter is not supported.


=head2 InitProcessEnabled => Bool

  Run an C<init> process inside the container that forwards signals and
reaps processes. This parameter maps to the C<--init> option to docker
run (https://docs.docker.com/engine/reference/run/). This parameter
requires version 1.25 of the Docker Remote API or greater on your
container instance. To check the Docker Remote API version on your
container instance, log in to your container instance and run the
following command: C<sudo docker version --format
'{{.Server.APIVersion}}'>


=head2 SharedMemorySize => Int

  The value for the size (in MiB) of the C</dev/shm> volume. This
parameter maps to the C<--shm-size> option to docker run
(https://docs.docker.com/engine/reference/run/).

If you are using tasks that use the Fargate launch type, the
C<sharedMemorySize> parameter is not supported.


=head2 Tmpfs => ArrayRef[L<Paws::ECS::Tmpfs>]

  The container path, mount options, and size (in MiB) of the tmpfs
mount. This parameter maps to the C<--tmpfs> option to docker run
(https://docs.docker.com/engine/reference/run/).

If you are using tasks that use the Fargate launch type, the C<tmpfs>
parameter is not supported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

