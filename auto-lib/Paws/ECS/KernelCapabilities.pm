package Paws::ECS::KernelCapabilities;
  use Moose;
  has Add => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'add', traits => ['NameInRequest']);
  has Drop => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'drop', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::KernelCapabilities

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::KernelCapabilities object:

  $service_obj->Method(Att1 => { Add => $value, ..., Drop => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::KernelCapabilities object:

  $result = $service_obj->Method(...);
  $result->Att1->Add

=head1 DESCRIPTION

The Linux capabilities for the container that are added to or dropped
from the default configuration provided by Docker. For more information
on the default capabilities and the non-default available capabilities,
see Runtime privilege and Linux capabilities
(https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities)
in the I<Docker run reference>. For more detailed information on these
Linux capabilities, see the capabilities(7)
(http://man7.org/linux/man-pages/man7/capabilities.7.html) Linux manual
page.

=head1 ATTRIBUTES


=head2 Add => ArrayRef[Str|Undef]

  The Linux capabilities for the container that have been added to the
default configuration provided by Docker. This parameter maps to
C<CapAdd> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--cap-add> option
to docker run (https://docs.docker.com/engine/reference/run/).

If you are using tasks that use the Fargate launch type, the C<add>
parameter is not supported.

Valid values: C<"ALL" | "AUDIT_CONTROL" | "AUDIT_WRITE" |
"BLOCK_SUSPEND" | "CHOWN" | "DAC_OVERRIDE" | "DAC_READ_SEARCH" |
"FOWNER" | "FSETID" | "IPC_LOCK" | "IPC_OWNER" | "KILL" | "LEASE" |
"LINUX_IMMUTABLE" | "MAC_ADMIN" | "MAC_OVERRIDE" | "MKNOD" |
"NET_ADMIN" | "NET_BIND_SERVICE" | "NET_BROADCAST" | "NET_RAW" |
"SETFCAP" | "SETGID" | "SETPCAP" | "SETUID" | "SYS_ADMIN" | "SYS_BOOT"
| "SYS_CHROOT" | "SYS_MODULE" | "SYS_NICE" | "SYS_PACCT" | "SYS_PTRACE"
| "SYS_RAWIO" | "SYS_RESOURCE" | "SYS_TIME" | "SYS_TTY_CONFIG" |
"SYSLOG" | "WAKE_ALARM">


=head2 Drop => ArrayRef[Str|Undef]

  The Linux capabilities for the container that have been removed from
the default configuration provided by Docker. This parameter maps to
C<CapDrop> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--cap-drop>
option to docker run (https://docs.docker.com/engine/reference/run/).

Valid values: C<"ALL" | "AUDIT_CONTROL" | "AUDIT_WRITE" |
"BLOCK_SUSPEND" | "CHOWN" | "DAC_OVERRIDE" | "DAC_READ_SEARCH" |
"FOWNER" | "FSETID" | "IPC_LOCK" | "IPC_OWNER" | "KILL" | "LEASE" |
"LINUX_IMMUTABLE" | "MAC_ADMIN" | "MAC_OVERRIDE" | "MKNOD" |
"NET_ADMIN" | "NET_BIND_SERVICE" | "NET_BROADCAST" | "NET_RAW" |
"SETFCAP" | "SETGID" | "SETPCAP" | "SETUID" | "SYS_ADMIN" | "SYS_BOOT"
| "SYS_CHROOT" | "SYS_MODULE" | "SYS_NICE" | "SYS_PACCT" | "SYS_PTRACE"
| "SYS_RAWIO" | "SYS_RESOURCE" | "SYS_TIME" | "SYS_TTY_CONFIG" |
"SYSLOG" | "WAKE_ALARM">



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

