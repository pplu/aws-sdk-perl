# Generated from default/object.tt
package Paws::ECS::LinuxParameters;
  use Moo;
  use Types::Standard qw/ArrayRef Bool Int/;
  use Paws::ECS::Types qw/ECS_Device ECS_KernelCapabilities ECS_Tmpfs/;
  has Capabilities => (is => 'ro', isa => ECS_KernelCapabilities);
  has Devices => (is => 'ro', isa => ArrayRef[ECS_Device]);
  has InitProcessEnabled => (is => 'ro', isa => Bool);
  has SharedMemorySize => (is => 'ro', isa => Int);
  has Tmpfs => (is => 'ro', isa => ArrayRef[ECS_Tmpfs]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Devices' => {
                              'class' => 'Paws::ECS::Device',
                              'type' => 'ArrayRef[ECS_Device]'
                            },
               'InitProcessEnabled' => {
                                         'type' => 'Bool'
                                       },
               'Tmpfs' => {
                            'class' => 'Paws::ECS::Tmpfs',
                            'type' => 'ArrayRef[ECS_Tmpfs]'
                          },
               'Capabilities' => {
                                   'class' => 'Paws::ECS::KernelCapabilities',
                                   'type' => 'ECS_KernelCapabilities'
                                 },
               'SharedMemorySize' => {
                                       'type' => 'Int'
                                     }
             },
  'NameInRequest' => {
                       'Devices' => 'devices',
                       'InitProcessEnabled' => 'initProcessEnabled',
                       'Tmpfs' => 'tmpfs',
                       'Capabilities' => 'capabilities',
                       'SharedMemorySize' => 'sharedMemorySize'
                     }
}
;
    return $Params_map;
  }


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


=head2 Capabilities => ECS_KernelCapabilities

  The Linux capabilities for the container that are added to or dropped
from the default configuration provided by Docker.

If you are using tasks that use the Fargate launch type,
C<capabilities> is supported but the C<add> parameter is not supported.


=head2 Devices => ArrayRef[ECS_Device]

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


=head2 Tmpfs => ArrayRef[ECS_Tmpfs]

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

