package Paws::ECS::ContainerDefinition;
  use Moose;
  has Command => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'command', traits => ['NameInRequest']);
  has Cpu => (is => 'ro', isa => 'Int', request_name => 'cpu', traits => ['NameInRequest']);
  has DisableNetworking => (is => 'ro', isa => 'Bool', request_name => 'disableNetworking', traits => ['NameInRequest']);
  has DnsSearchDomains => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'dnsSearchDomains', traits => ['NameInRequest']);
  has DnsServers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'dnsServers', traits => ['NameInRequest']);
  has DockerLabels => (is => 'ro', isa => 'Paws::ECS::DockerLabelsMap', request_name => 'dockerLabels', traits => ['NameInRequest']);
  has DockerSecurityOptions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'dockerSecurityOptions', traits => ['NameInRequest']);
  has EntryPoint => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'entryPoint', traits => ['NameInRequest']);
  has Environment => (is => 'ro', isa => 'ArrayRef[Paws::ECS::KeyValuePair]', request_name => 'environment', traits => ['NameInRequest']);
  has Essential => (is => 'ro', isa => 'Bool', request_name => 'essential', traits => ['NameInRequest']);
  has ExtraHosts => (is => 'ro', isa => 'ArrayRef[Paws::ECS::HostEntry]', request_name => 'extraHosts', traits => ['NameInRequest']);
  has HealthCheck => (is => 'ro', isa => 'Paws::ECS::HealthCheck', request_name => 'healthCheck', traits => ['NameInRequest']);
  has Hostname => (is => 'ro', isa => 'Str', request_name => 'hostname', traits => ['NameInRequest']);
  has Image => (is => 'ro', isa => 'Str', request_name => 'image', traits => ['NameInRequest']);
  has Interactive => (is => 'ro', isa => 'Bool', request_name => 'interactive', traits => ['NameInRequest']);
  has Links => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'links', traits => ['NameInRequest']);
  has LinuxParameters => (is => 'ro', isa => 'Paws::ECS::LinuxParameters', request_name => 'linuxParameters', traits => ['NameInRequest']);
  has LogConfiguration => (is => 'ro', isa => 'Paws::ECS::LogConfiguration', request_name => 'logConfiguration', traits => ['NameInRequest']);
  has Memory => (is => 'ro', isa => 'Int', request_name => 'memory', traits => ['NameInRequest']);
  has MemoryReservation => (is => 'ro', isa => 'Int', request_name => 'memoryReservation', traits => ['NameInRequest']);
  has MountPoints => (is => 'ro', isa => 'ArrayRef[Paws::ECS::MountPoint]', request_name => 'mountPoints', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has PortMappings => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PortMapping]', request_name => 'portMappings', traits => ['NameInRequest']);
  has Privileged => (is => 'ro', isa => 'Bool', request_name => 'privileged', traits => ['NameInRequest']);
  has PseudoTerminal => (is => 'ro', isa => 'Bool', request_name => 'pseudoTerminal', traits => ['NameInRequest']);
  has ReadonlyRootFilesystem => (is => 'ro', isa => 'Bool', request_name => 'readonlyRootFilesystem', traits => ['NameInRequest']);
  has RepositoryCredentials => (is => 'ro', isa => 'Paws::ECS::RepositoryCredentials', request_name => 'repositoryCredentials', traits => ['NameInRequest']);
  has ResourceRequirements => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ResourceRequirement]', request_name => 'resourceRequirements', traits => ['NameInRequest']);
  has Secrets => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Secret]', request_name => 'secrets', traits => ['NameInRequest']);
  has SystemControls => (is => 'ro', isa => 'ArrayRef[Paws::ECS::SystemControl]', request_name => 'systemControls', traits => ['NameInRequest']);
  has Ulimits => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Ulimit]', request_name => 'ulimits', traits => ['NameInRequest']);
  has User => (is => 'ro', isa => 'Str', request_name => 'user', traits => ['NameInRequest']);
  has VolumesFrom => (is => 'ro', isa => 'ArrayRef[Paws::ECS::VolumeFrom]', request_name => 'volumesFrom', traits => ['NameInRequest']);
  has WorkingDirectory => (is => 'ro', isa => 'Str', request_name => 'workingDirectory', traits => ['NameInRequest']);
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


=head2 Command => ArrayRef[Str|Undef]

  The command that is passed to the container. This parameter maps to
C<Cmd> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<COMMAND>
parameter to docker run
(https://docs.docker.com/engine/reference/run/). For more information,
see https://docs.docker.com/engine/reference/builder/#cmd
(https://docs.docker.com/engine/reference/builder/#cmd). If there are
multiple arguments, each argument should be a separated string in the
array.


=head2 Cpu => Int

  The number of C<cpu> units reserved for the container. This parameter
maps to C<CpuShares> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--cpu-shares>
option to docker run (https://docs.docker.com/engine/reference/run/).

This field is optional for tasks using the Fargate launch type, and the
only requirement is that the total amount of CPU reserved for all
containers within a task be lower than the task-level C<cpu> value.

You can determine the number of CPU units that are available per EC2
instance type by multiplying the vCPUs listed for that instance type on
the Amazon EC2 Instances (http://aws.amazon.com/ec2/instance-types/)
detail page by 1,024.

For example, if you run a single-container task on a single-core
instance type with 512 CPU units specified for that container, and that
is the only task running on the container instance, that container
could use the full 1,024 CPU unit share at any given time. However, if
you launched another copy of the same task on that container instance,
each task would be guaranteed a minimum of 512 CPU units when needed,
and each container could float to higher CPU usage if the other
container was not using it, but if both tasks were 100% active all of
the time, they would be limited to 512 CPU units.

Linux containers share unallocated CPU units with other containers on
the container instance with the same ratio as their allocated amount.
For example, if you run a single-container task on a single-core
instance type with 512 CPU units specified for that container, and that
is the only task running on the container instance, that container
could use the full 1,024 CPU unit share at any given time. However, if
you launched another copy of the same task on that container instance,
each task would be guaranteed a minimum of 512 CPU units when needed,
and each container could float to higher CPU usage if the other
container was not using it, but if both tasks were 100% active all of
the time, they would be limited to 512 CPU units.

On Linux container instances, the Docker daemon on the container
instance uses the CPU value to calculate the relative CPU share ratios
for running containers. For more information, see CPU share constraint
(https://docs.docker.com/engine/reference/run/#cpu-share-constraint) in
the Docker documentation. The minimum valid CPU share value that the
Linux kernel allows is 2. However, the CPU parameter is not required,
and you can use CPU values below 2 in your container definitions. For
CPU values below 2 (including null), the behavior varies based on your
Amazon ECS container agent version:

=over

=item *

B<Agent versions less than or equal to 1.1.0:> Null and zero CPU values
are passed to Docker as 0, which Docker then converts to 1,024 CPU
shares. CPU values of 1 are passed to Docker as 1, which the Linux
kernel converts to two CPU shares.

=item *

B<Agent versions greater than or equal to 1.2.0:> Null, zero, and CPU
values of 1 are passed to Docker as 2.

=back

On Windows container instances, the CPU limit is enforced as an
absolute limit, or a quota. Windows containers only have access to the
specified amount of CPU that is described in the task definition.


=head2 DisableNetworking => Bool

  When this parameter is true, networking is disabled within the
container. This parameter maps to C<NetworkDisabled> in the Create a
container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/).

This parameter is not supported for Windows containers.


=head2 DnsSearchDomains => ArrayRef[Str|Undef]

  A list of DNS search domains that are presented to the container. This
parameter maps to C<DnsSearch> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--dns-search>
option to docker run (https://docs.docker.com/engine/reference/run/).

This parameter is not supported for Windows containers.


=head2 DnsServers => ArrayRef[Str|Undef]

  A list of DNS servers that are presented to the container. This
parameter maps to C<Dns> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--dns> option to
docker run (https://docs.docker.com/engine/reference/run/).

This parameter is not supported for Windows containers.


=head2 DockerLabels => L<Paws::ECS::DockerLabelsMap>

  A key/value map of labels to add to the container. This parameter maps
to C<Labels> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--label> option
to docker run (https://docs.docker.com/engine/reference/run/). This
parameter requires version 1.18 of the Docker Remote API or greater on
your container instance. To check the Docker Remote API version on your
container instance, log in to your container instance and run the
following command: C<sudo docker version --format
'{{.Server.APIVersion}}'>


=head2 DockerSecurityOptions => ArrayRef[Str|Undef]

  A list of strings to provide custom labels for SELinux and AppArmor
multi-level security systems. This field is not valid for containers in
tasks using the Fargate launch type.

This parameter maps to C<SecurityOpt> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--security-opt>
option to docker run (https://docs.docker.com/engine/reference/run/).

The Amazon ECS container agent running on a container instance must
register with the C<ECS_SELINUX_CAPABLE=true> or
C<ECS_APPARMOR_CAPABLE=true> environment variables before containers
placed on that instance can use these security options. For more
information, see Amazon ECS Container Agent Configuration
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html)
in the I<Amazon Elastic Container Service Developer Guide>.

This parameter is not supported for Windows containers.


=head2 EntryPoint => ArrayRef[Str|Undef]

  Early versions of the Amazon ECS container agent do not properly handle
C<entryPoint> parameters. If you have problems using C<entryPoint>,
update your container agent or enter your commands and arguments as
C<command> array items instead.

The entry point that is passed to the container. This parameter maps to
C<Entrypoint> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--entrypoint>
option to docker run (https://docs.docker.com/engine/reference/run/).
For more information, see
https://docs.docker.com/engine/reference/builder/#entrypoint
(https://docs.docker.com/engine/reference/builder/#entrypoint).


=head2 Environment => ArrayRef[L<Paws::ECS::KeyValuePair>]

  The environment variables to pass to a container. This parameter maps
to C<Env> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--env> option to
docker run (https://docs.docker.com/engine/reference/run/).

We do not recommend using plaintext environment variables for sensitive
information, such as credential data.


=head2 Essential => Bool

  If the C<essential> parameter of a container is marked as C<true>, and
that container fails or stops for any reason, all other containers that
are part of the task are stopped. If the C<essential> parameter of a
container is marked as C<false>, then its failure does not affect the
rest of the containers in a task. If this parameter is omitted, a
container is assumed to be essential.

All tasks must have at least one essential container. If you have an
application that is composed of multiple containers, you should group
containers that are used for a common purpose into components, and
separate the different components into multiple task definitions. For
more information, see Application Architecture
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/application_architecture.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 ExtraHosts => ArrayRef[L<Paws::ECS::HostEntry>]

  A list of hostnames and IP address mappings to append to the
C</etc/hosts> file on the container. This parameter maps to
C<ExtraHosts> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--add-host>
option to docker run (https://docs.docker.com/engine/reference/run/).

This parameter is not supported for Windows containers or tasks that
use the C<awsvpc> network mode.


=head2 HealthCheck => L<Paws::ECS::HealthCheck>

  The health check command and associated configuration parameters for
the container. This parameter maps to C<HealthCheck> in the Create a
container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<HEALTHCHECK>
parameter of docker run
(https://docs.docker.com/engine/reference/run/).


=head2 Hostname => Str

  The hostname to use for your container. This parameter maps to
C<Hostname> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--hostname>
option to docker run (https://docs.docker.com/engine/reference/run/).

The C<hostname> parameter is not supported if you are using the
C<awsvpc> network mode.


=head2 Image => Str

  The image used to start a container. This string is passed directly to
the Docker daemon. Images in the Docker Hub registry are available by
default. Other repositories are specified with either C<
I<repository-url>/I<image>:I<tag> > or C<
I<repository-url>/I<image>@I<digest> >. Up to 255 letters (uppercase
and lowercase), numbers, hyphens, underscores, colons, periods, forward
slashes, and number signs are allowed. This parameter maps to C<Image>
in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<IMAGE> parameter
of docker run (https://docs.docker.com/engine/reference/run/).

=over

=item *

When a new task starts, the Amazon ECS container agent pulls the latest
version of the specified image and tag for the container to use.
However, subsequent updates to a repository image are not propagated to
already running tasks.

=item *

Images in Amazon ECR repositories can be specified by either using the
full C<registry/repository:tag> or C<registry/repository@digest>. For
example,
C<012345678910.dkr.ecr.E<lt>region-nameE<gt>.amazonaws.com/E<lt>repository-nameE<gt>:latest>
or
C<012345678910.dkr.ecr.E<lt>region-nameE<gt>.amazonaws.com/E<lt>repository-nameE<gt>@sha256:94afd1f2e64d908bc90dbca0035a5b567EXAMPLE>.

=item *

Images in official repositories on Docker Hub use a single name (for
example, C<ubuntu> or C<mongo>).

=item *

Images in other repositories on Docker Hub are qualified with an
organization name (for example, C<amazon/amazon-ecs-agent>).

=item *

Images in other online repositories are qualified further by a domain
name (for example, C<quay.io/assemblyline/ubuntu>).

=back



=head2 Interactive => Bool

  When this parameter is C<true>, this allows you to deploy containerized
applications that require C<stdin> or a C<tty> to be allocated. This
parameter maps to C<OpenStdin> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--interactive>
option to docker run (https://docs.docker.com/engine/reference/run/).


=head2 Links => ArrayRef[Str|Undef]

  The C<link> parameter allows containers to communicate with each other
without the need for port mappings. Only supported if the network mode
of a task definition is set to C<bridge>. The C<name:internalName>
construct is analogous to C<name:alias> in Docker links. Up to 255
letters (uppercase and lowercase), numbers, hyphens, and underscores
are allowed. For more information about linking Docker containers, go
to
https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/
(https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/).
This parameter maps to C<Links> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--link> option to
C<docker run>
(https://docs.docker.com/engine/reference/commandline/run/).

This parameter is not supported for Windows containers.

Containers that are collocated on a single container instance may be
able to communicate with each other without requiring links or host
port mappings. Network isolation is achieved on the container instance
using security groups and VPC settings.


=head2 LinuxParameters => L<Paws::ECS::LinuxParameters>

  Linux-specific modifications that are applied to the container, such as
Linux KernelCapabilities.

This parameter is not supported for Windows containers.


=head2 LogConfiguration => L<Paws::ECS::LogConfiguration>

  The log configuration specification for the container.

If you are using the Fargate launch type, the only supported value is
C<awslogs>.

This parameter maps to C<LogConfig> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--log-driver>
option to docker run (https://docs.docker.com/engine/reference/run/).
By default, containers use the same logging driver that the Docker
daemon uses. However the container may use a different logging driver
than the Docker daemon by specifying a log driver with this parameter
in the container definition. To use a different logging driver for a
container, the log system must be configured properly on the container
instance (or on a different log server for remote logging options). For
more information on the options for different supported log drivers,
see Configure logging drivers
(https://docs.docker.com/engine/admin/logging/overview/) in the Docker
documentation.

Amazon ECS currently supports a subset of the logging drivers available
to the Docker daemon (shown in the LogConfiguration data type).
Additional log drivers may be available in future releases of the
Amazon ECS container agent.

This parameter requires version 1.18 of the Docker Remote API or
greater on your container instance. To check the Docker Remote API
version on your container instance, log in to your container instance
and run the following command: C<sudo docker version --format
'{{.Server.APIVersion}}'>

The Amazon ECS container agent running on a container instance must
register the logging drivers available on that instance with the
C<ECS_AVAILABLE_LOGGING_DRIVERS> environment variable before containers
placed on that instance can use these log configuration options. For
more information, see Amazon ECS Container Agent Configuration
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 Memory => Int

  The hard limit (in MiB) of memory to present to the container. If your
container attempts to exceed the memory specified here, the container
is killed. This parameter maps to C<Memory> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--memory> option
to docker run (https://docs.docker.com/engine/reference/run/).

If your containers are part of a task using the Fargate launch type,
this field is optional and the only requirement is that the total
amount of memory reserved for all containers within a task be lower
than the task C<memory> value.

For containers that are part of a task using the EC2 launch type, you
must specify a non-zero integer for one or both of C<memory> or
C<memoryReservation> in container definitions. If you specify both,
C<memory> must be greater than C<memoryReservation>. If you specify
C<memoryReservation>, then that value is subtracted from the available
memory resources for the container instance on which the container is
placed. Otherwise, the value of C<memory> is used.

The Docker daemon reserves a minimum of 4 MiB of memory for a
container, so you should not specify fewer than 4 MiB of memory for
your containers.


=head2 MemoryReservation => Int

  The soft limit (in MiB) of memory to reserve for the container. When
system memory is under heavy contention, Docker attempts to keep the
container memory to this soft limit. However, your container can
consume more memory when it needs to, up to either the hard limit
specified with the C<memory> parameter (if applicable), or all of the
available memory on the container instance, whichever comes first. This
parameter maps to C<MemoryReservation> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the
C<--memory-reservation> option to docker run
(https://docs.docker.com/engine/reference/run/).

You must specify a non-zero integer for one or both of C<memory> or
C<memoryReservation> in container definitions. If you specify both,
C<memory> must be greater than C<memoryReservation>. If you specify
C<memoryReservation>, then that value is subtracted from the available
memory resources for the container instance on which the container is
placed. Otherwise, the value of C<memory> is used.

For example, if your container normally uses 128 MiB of memory, but
occasionally bursts to 256 MiB of memory for short periods of time, you
can set a C<memoryReservation> of 128 MiB, and a C<memory> hard limit
of 300 MiB. This configuration would allow the container to only
reserve 128 MiB of memory from the remaining resources on the container
instance, but also allow the container to consume more memory resources
when needed.

The Docker daemon reserves a minimum of 4 MiB of memory for a
container, so you should not specify fewer than 4 MiB of memory for
your containers.


=head2 MountPoints => ArrayRef[L<Paws::ECS::MountPoint>]

  The mount points for data volumes in your container.

This parameter maps to C<Volumes> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--volume> option
to docker run (https://docs.docker.com/engine/reference/run/).

Windows containers can mount whole directories on the same drive as
C<$env:ProgramData>. Windows containers cannot mount directories on a
different drive, and mount point cannot be across drives.


=head2 Name => Str

  The name of a container. If you are linking multiple containers
together in a task definition, the C<name> of one container can be
entered in the C<links> of another container to connect the containers.
Up to 255 letters (uppercase and lowercase), numbers, hyphens, and
underscores are allowed. This parameter maps to C<name> in the Create a
container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--name> option to
docker run (https://docs.docker.com/engine/reference/run/).


=head2 PortMappings => ArrayRef[L<Paws::ECS::PortMapping>]

  The list of port mappings for the container. Port mappings allow
containers to access ports on the host container instance to send or
receive traffic.

For task definitions that use the C<awsvpc> network mode, you should
only specify the C<containerPort>. The C<hostPort> can be left blank or
it must be the same value as the C<containerPort>.

Port mappings on Windows use the C<NetNAT> gateway address rather than
C<localhost>. There is no loopback for port mappings on Windows, so you
cannot access a container's mapped port from the host itself.

This parameter maps to C<PortBindings> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--publish> option
to docker run (https://docs.docker.com/engine/reference/run/). If the
network mode of a task definition is set to C<none>, then you can't
specify port mappings. If the network mode of a task definition is set
to C<host>, then host ports must either be undefined or they must match
the container port in the port mapping.

After a task reaches the C<RUNNING> status, manual and automatic host
and container port assignments are visible in the B<Network Bindings>
section of a container description for a selected task in the Amazon
ECS console. The assignments are also visible in the C<networkBindings>
section DescribeTasks responses.


=head2 Privileged => Bool

  When this parameter is true, the container is given elevated privileges
on the host container instance (similar to the C<root> user). This
parameter maps to C<Privileged> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--privileged>
option to docker run (https://docs.docker.com/engine/reference/run/).

This parameter is not supported for Windows containers or tasks using
the Fargate launch type.


=head2 PseudoTerminal => Bool

  When this parameter is C<true>, a TTY is allocated. This parameter maps
to C<Tty> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--tty> option to
docker run (https://docs.docker.com/engine/reference/run/).


=head2 ReadonlyRootFilesystem => Bool

  When this parameter is true, the container is given read-only access to
its root file system. This parameter maps to C<ReadonlyRootfs> in the
Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--read-only>
option to docker run (https://docs.docker.com/engine/reference/run/).

This parameter is not supported for Windows containers.


=head2 RepositoryCredentials => L<Paws::ECS::RepositoryCredentials>

  The private repository authentication credentials to use.


=head2 ResourceRequirements => ArrayRef[L<Paws::ECS::ResourceRequirement>]

  The type and amount of a resource to assign to a container. The only
supported resource is a GPU.


=head2 Secrets => ArrayRef[L<Paws::ECS::Secret>]

  The secrets to pass to the container. For more information, see
Specifying Sensitive Data
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 SystemControls => ArrayRef[L<Paws::ECS::SystemControl>]

  A list of namespaced kernel parameters to set in the container. This
parameter maps to C<Sysctls> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--sysctl> option
to docker run (https://docs.docker.com/engine/reference/run/).

It is not recommended that you specify network-related
C<systemControls> parameters for multiple containers in a single task
that also uses either the C<awsvpc> or C<host> network modes. For tasks
that use the C<awsvpc> network mode, the container that is started last
determines which C<systemControls> parameters take effect. For tasks
that use the C<host> network mode, it changes the container instance's
namespaced kernel parameters as well as the containers.


=head2 Ulimits => ArrayRef[L<Paws::ECS::Ulimit>]

  A list of C<ulimits> to set in the container. This parameter maps to
C<Ulimits> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--ulimit> option
to docker run (https://docs.docker.com/engine/reference/run/). Valid
naming values are displayed in the Ulimit data type. This parameter
requires version 1.18 of the Docker Remote API or greater on your
container instance. To check the Docker Remote API version on your
container instance, log in to your container instance and run the
following command: C<sudo docker version --format
'{{.Server.APIVersion}}'>

This parameter is not supported for Windows containers.


=head2 User => Str

  The user name to use inside the container. This parameter maps to
C<User> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--user> option to
docker run (https://docs.docker.com/engine/reference/run/).

This parameter is not supported for Windows containers.


=head2 VolumesFrom => ArrayRef[L<Paws::ECS::VolumeFrom>]

  Data volumes to mount from another container. This parameter maps to
C<VolumesFrom> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--volumes-from>
option to docker run (https://docs.docker.com/engine/reference/run/).


=head2 WorkingDirectory => Str

  The working directory in which to run commands inside the container.
This parameter maps to C<WorkingDir> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--workdir> option
to docker run (https://docs.docker.com/engine/reference/run/).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

