package Paws::ECS::ContainerDefinition;
  use Moose;
  has Command => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'command', request_name => 'command', traits => ['Unwrapped','NameInRequest']);
  has Cpu => (is => 'ro', isa => 'Int', xmlname => 'cpu', request_name => 'cpu', traits => ['Unwrapped','NameInRequest']);
  has DisableNetworking => (is => 'ro', isa => 'Bool', xmlname => 'disableNetworking', request_name => 'disableNetworking', traits => ['Unwrapped','NameInRequest']);
  has DnsSearchDomains => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'dnsSearchDomains', request_name => 'dnsSearchDomains', traits => ['Unwrapped','NameInRequest']);
  has DnsServers => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'dnsServers', request_name => 'dnsServers', traits => ['Unwrapped','NameInRequest']);
  has DockerLabels => (is => 'ro', isa => 'Paws::ECS::DockerLabelsMap', xmlname => 'dockerLabels', request_name => 'dockerLabels', traits => ['Unwrapped','NameInRequest']);
  has DockerSecurityOptions => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'dockerSecurityOptions', request_name => 'dockerSecurityOptions', traits => ['Unwrapped','NameInRequest']);
  has EntryPoint => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'entryPoint', request_name => 'entryPoint', traits => ['Unwrapped','NameInRequest']);
  has Environment => (is => 'ro', isa => 'ArrayRef[Paws::ECS::KeyValuePair]', xmlname => 'environment', request_name => 'environment', traits => ['Unwrapped','NameInRequest']);
  has Essential => (is => 'ro', isa => 'Bool', xmlname => 'essential', request_name => 'essential', traits => ['Unwrapped','NameInRequest']);
  has ExtraHosts => (is => 'ro', isa => 'ArrayRef[Paws::ECS::HostEntry]', xmlname => 'extraHosts', request_name => 'extraHosts', traits => ['Unwrapped','NameInRequest']);
  has Hostname => (is => 'ro', isa => 'Str', xmlname => 'hostname', request_name => 'hostname', traits => ['Unwrapped','NameInRequest']);
  has Image => (is => 'ro', isa => 'Str', xmlname => 'image', request_name => 'image', traits => ['Unwrapped','NameInRequest']);
  has Links => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'links', request_name => 'links', traits => ['Unwrapped','NameInRequest']);
  has LogConfiguration => (is => 'ro', isa => 'Paws::ECS::LogConfiguration', xmlname => 'logConfiguration', request_name => 'logConfiguration', traits => ['Unwrapped','NameInRequest']);
  has Memory => (is => 'ro', isa => 'Int', xmlname => 'memory', request_name => 'memory', traits => ['Unwrapped','NameInRequest']);
  has MountPoints => (is => 'ro', isa => 'ArrayRef[Paws::ECS::MountPoint]', xmlname => 'mountPoints', request_name => 'mountPoints', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has PortMappings => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PortMapping]', xmlname => 'portMappings', request_name => 'portMappings', traits => ['Unwrapped','NameInRequest']);
  has Privileged => (is => 'ro', isa => 'Bool', xmlname => 'privileged', request_name => 'privileged', traits => ['Unwrapped','NameInRequest']);
  has ReadonlyRootFilesystem => (is => 'ro', isa => 'Bool', xmlname => 'readonlyRootFilesystem', request_name => 'readonlyRootFilesystem', traits => ['Unwrapped','NameInRequest']);
  has Ulimits => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Ulimit]', xmlname => 'ulimits', request_name => 'ulimits', traits => ['Unwrapped','NameInRequest']);
  has User => (is => 'ro', isa => 'Str', xmlname => 'user', request_name => 'user', traits => ['Unwrapped','NameInRequest']);
  has VolumesFrom => (is => 'ro', isa => 'ArrayRef[Paws::ECS::VolumeFrom]', xmlname => 'volumesFrom', request_name => 'volumesFrom', traits => ['Unwrapped','NameInRequest']);
  has WorkingDirectory => (is => 'ro', isa => 'Str', xmlname => 'workingDirectory', request_name => 'workingDirectory', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ContainerDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ContainerDefinition object:

  $service_obj->Method(Att1 => { Command => $value, ..., WorkingDirectory => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ContainerDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->Command

=head1 DESCRIPTION

Container definitions are used in task definitions to describe the
different containers that are launched as part of a task.

=head1 ATTRIBUTES


=head2 Command => ArrayRef[Str]

  The command that is passed to the container. This parameter maps to
C<Cmd> in the Create a container section of the Docker Remote API and
the C<COMMAND> parameter to docker run. For more information, see
https://docs.docker.com/reference/builder/


=head2 Cpu => Int

  The number of C<cpu> units reserved for the container. A container
instance has 1,024 C<cpu> units for every CPU core. This parameter
specifies the minimum amount of CPU to reserve for a container, and
containers share unallocated CPU units with other containers on the
instance with the same ratio as their allocated amount. This parameter
maps to C<CpuShares> in the Create a container section of the Docker
Remote API and the C<--cpu-shares> option to docker run.

You can determine the number of CPU units that are available per EC2
instance type by multiplying the vCPUs listed for that instance type on
the Amazon EC2 Instances detail page by 1,024.

For example, if you run a single-container task on a single-core
instance type with 512 CPU units specified for that container, and that
is the only task running on the container instance, that container
could use the full 1,024 CPU unit share at any given time. However, if
you launched another copy of the same task on that container instance,
each task would be guaranteed a minimum of 512 CPU units when needed,
and each container could float to higher CPU usage if the other
container was not using it, but if both tasks were 100% active all of
the time, they would be limited to 512 CPU units.

The Docker daemon on the container instance uses the CPU value to
calculate the relative CPU share ratios for running containers. For
more information, see CPU share constraint in the Docker documentation.
The minimum valid CPU share value that the Linux kernel allows is 2;
however, the CPU parameter is not required, and you can use CPU values
below 2 in your container definitions. For CPU values below 2
(including null), the behavior varies based on your Amazon ECS
container agent version:

=over

=item * B<Agent versions less than or equal to 1.1.0:> Null and zero
CPU values are passed to Docker as 0, which Docker then converts to
1,024 CPU shares. CPU values of 1 are passed to Docker as 1, which the
Linux kernel converts to 2 CPU shares.

=item * B<Agent versions greater than or equal to 1.2.0:> Null, zero,
and CPU values of 1 are passed to Docker as 2.

=back



=head2 DisableNetworking => Bool

  When this parameter is true, networking is disabled within the
container. This parameter maps to C<NetworkDisabled> in the Create a
container section of the Docker Remote API.


=head2 DnsSearchDomains => ArrayRef[Str]

  A list of DNS search domains that are presented to the container. This
parameter maps to C<DnsSearch> in the Create a container section of the
Docker Remote API and the C<--dns-search> option to docker run.


=head2 DnsServers => ArrayRef[Str]

  A list of DNS servers that are presented to the container. This
parameter maps to C<Dns> in the Create a container section of the
Docker Remote API and the C<--dns> option to docker run.


=head2 DockerLabels => L<Paws::ECS::DockerLabelsMap>

  A key/value map of labels to add to the container. This parameter maps
to C<Labels> in the Create a container section of the Docker Remote API
and the C<--label> option to docker run. This parameter requires
version 1.18 of the Docker Remote API or greater on your container
instance. To check the Docker Remote API version on your container
instance, log into your container instance and run the following
command: C<sudo docker version | grep "Server API version">


=head2 DockerSecurityOptions => ArrayRef[Str]

  A list of strings to provide custom labels for SELinux and AppArmor
multi-level security systems. This parameter maps to C<SecurityOpt> in
the Create a container section of the Docker Remote API and the
C<--security-opt> option to docker run.

The Amazon ECS container agent running on a container instance must
register with the C<ECS_SELINUX_CAPABLE=true> or
C<ECS_APPARMOR_CAPABLE=true> environment variables before containers
placed on that instance can use these security options. For more
information, see Amazon ECS Container Agent Configuration in the
I<Amazon EC2 Container Service Developer Guide>.


=head2 EntryPoint => ArrayRef[Str]

  Early versions of the Amazon ECS container agent do not properly handle
C<entryPoint> parameters. If you have problems using C<entryPoint>,
update your container agent or enter your commands and arguments as
C<command> array items instead.

The entry point that is passed to the container. This parameter maps to
C<Entrypoint> in the Create a container section of the Docker Remote
API and the C<--entrypoint> option to docker run. For more information,
see https://docs.docker.com/reference/builder/


=head2 Environment => ArrayRef[L<Paws::ECS::KeyValuePair>]

  The environment variables to pass to a container. This parameter maps
to C<Env> in the Create a container section of the Docker Remote API
and the C<--env> option to docker run.

We do not recommend using plain text environment variables for
sensitive information, such as credential data.


=head2 Essential => Bool

  If the C<essential> parameter of a container is marked as C<true>, the
failure of that container stops the task. If the C<essential> parameter
of a container is marked as C<false>, then its failure does not affect
the rest of the containers in a task. If this parameter is omitted, a
container is assumed to be essential.

All tasks must have at least one essential container.


=head2 ExtraHosts => ArrayRef[L<Paws::ECS::HostEntry>]

  A list of hostnames and IP address mappings to append to the
C</etc/hosts> file on the container. This parameter maps to
C<ExtraHosts> in the Create a container section of the Docker Remote
API and the C<--add-host> option to docker run.


=head2 Hostname => Str

  The hostname to use for your container. This parameter maps to
C<Hostname> in the Create a container section of the Docker Remote API
and the C<--hostname> option to docker run.


=head2 Image => Str

  The image used to start a container. This string is passed directly to
the Docker daemon. Images in the Docker Hub registry are available by
default. Other repositories are specified with
C<I<repository-url>/I<image>:I<tag>>. Up to 255 letters (uppercase and
lowercase), numbers, hyphens, underscores, colons, periods, forward
slashes, and number signs are allowed. This parameter maps to C<Image>
in the Create a container section of the Docker Remote API and the
C<IMAGE> parameter of docker run.


=head2 Links => ArrayRef[Str]

  The C<link> parameter allows containers to communicate with each other
without the need for port mappings, using the C<name> parameter and
optionally, an C<alias> for the link. This construct is analogous to
C<name:alias> in Docker links. Up to 255 letters (uppercase and
lowercase), numbers, hyphens, and underscores are allowed for each
C<name> and C<alias>. For more information on linking Docker
containers, see https://docs.docker.com/userguide/dockerlinks/. This
parameter maps to C<Links> in the Create a container section of the
Docker Remote API and the C<--link> option to C<docker run>.

Containers that are collocated on a single container instance may be
able to communicate with each other without requiring links or host
port mappings. Network isolation is achieved on the container instance
using security groups and VPC settings.


=head2 LogConfiguration => L<Paws::ECS::LogConfiguration>

  The log configuration specification for the container. This parameter
maps to C<LogConfig> in the Create a container section of the Docker
Remote API and the C<--log-driver> option to docker run. Valid log
drivers are displayed in the LogConfiguration data type. This parameter
requires version 1.18 of the Docker Remote API or greater on your
container instance. To check the Docker Remote API version on your
container instance, log into your container instance and run the
following command: C<sudo docker version | grep "Server API version">

The Amazon ECS container agent running on a container instance must
register the logging drivers available on that instance with the
C<ECS_AVAILABLE_LOGGING_DRIVERS> environment variable before containers
placed on that instance can use these log configuration options. For
more information, see Amazon ECS Container Agent Configuration in the
I<Amazon EC2 Container Service Developer Guide>.


=head2 Memory => Int

  The number of MiB of memory to reserve for the container. You must
specify a non-zero integer for this parameter; the Docker daemon
reserves a minimum of 4 MiB of memory for a container, so you should
not specify fewer than 4 MiB of memory for your containers. If your
container attempts to exceed the memory allocated here, the container
is killed. This parameter maps to C<Memory> in the Create a container
section of the Docker Remote API and the C<--memory> option to docker
run.


=head2 MountPoints => ArrayRef[L<Paws::ECS::MountPoint>]

  The mount points for data volumes in your container. This parameter
maps to C<Volumes> in the Create a container section of the Docker
Remote API and the C<--volume> option to docker run.


=head2 Name => Str

  The name of a container. If you are linking multiple containers
together in a task definition, the C<name> of one container can be
entered in the C<links> of another container to connect the containers.
Up to 255 letters (uppercase and lowercase), numbers, hyphens, and
underscores are allowed. This parameter maps to C<name> in the Create a
container section of the Docker Remote API and the C<--name> option to
docker run.


=head2 PortMappings => ArrayRef[L<Paws::ECS::PortMapping>]

  The list of port mappings for the container. Port mappings allow
containers to access ports on the host container instance to send or
receive traffic. This parameter maps to C<PortBindings> in the Create a
container section of the Docker Remote API and the C<--publish> option
to docker run.


=head2 Privileged => Bool

  When this parameter is true, the container is given elevated privileges
on the host container instance (similar to the C<root> user). This
parameter maps to C<Privileged> in the Create a container section of
the Docker Remote API and the C<--privileged> option to docker run.


=head2 ReadonlyRootFilesystem => Bool

  When this parameter is true, the container is given read-only access to
its root file system. This parameter maps to C<ReadonlyRootfs> in the
Create a container section of the Docker Remote API and the
C<--read-only> option to C<docker run>.


=head2 Ulimits => ArrayRef[L<Paws::ECS::Ulimit>]

  A list of C<ulimits> to set in the container. This parameter maps to
C<Ulimits> in the Create a container section of the Docker Remote API
and the C<--ulimit> option to docker run. Valid naming values are
displayed in the Ulimit data type. This parameter requires version 1.18
of the Docker Remote API or greater on your container instance. To
check the Docker Remote API version on your container instance, log
into your container instance and run the following command: C<sudo
docker version | grep "Server API version">


=head2 User => Str

  The user name to use inside the container. This parameter maps to
C<User> in the Create a container section of the Docker Remote API and
the C<--user> option to docker run.


=head2 VolumesFrom => ArrayRef[L<Paws::ECS::VolumeFrom>]

  Data volumes to mount from another container. This parameter maps to
C<VolumesFrom> in the Create a container section of the Docker Remote
API and the C<--volumes-from> option to docker run.


=head2 WorkingDirectory => Str

  The working directory in which to run commands inside the container.
This parameter maps to C<WorkingDir> in the Create a container section
of the Docker Remote API and the C<--workdir> option to docker run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

