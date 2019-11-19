# Generated from default/object.tt
package Paws::ECS::ContainerDefinition;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str Int Bool/;
  use Paws::ECS::Types qw/ECS_MountPoint ECS_Secret ECS_LogConfiguration ECS_ContainerDependency ECS_Ulimit ECS_LinuxParameters ECS_HostEntry ECS_KeyValuePair ECS_SystemControl ECS_ResourceRequirement ECS_HealthCheck ECS_VolumeFrom ECS_RepositoryCredentials ECS_DockerLabelsMap ECS_PortMapping ECS_FirelensConfiguration/;
  has Command => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Cpu => (is => 'ro', isa => Int);
  has DependsOn => (is => 'ro', isa => ArrayRef[ECS_ContainerDependency]);
  has DisableNetworking => (is => 'ro', isa => Bool);
  has DnsSearchDomains => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has DnsServers => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has DockerLabels => (is => 'ro', isa => ECS_DockerLabelsMap);
  has DockerSecurityOptions => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has EntryPoint => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Environment => (is => 'ro', isa => ArrayRef[ECS_KeyValuePair]);
  has Essential => (is => 'ro', isa => Bool);
  has ExtraHosts => (is => 'ro', isa => ArrayRef[ECS_HostEntry]);
  has FirelensConfiguration => (is => 'ro', isa => ECS_FirelensConfiguration);
  has HealthCheck => (is => 'ro', isa => ECS_HealthCheck);
  has Hostname => (is => 'ro', isa => Str);
  has Image => (is => 'ro', isa => Str);
  has Interactive => (is => 'ro', isa => Bool);
  has Links => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has LinuxParameters => (is => 'ro', isa => ECS_LinuxParameters);
  has LogConfiguration => (is => 'ro', isa => ECS_LogConfiguration);
  has Memory => (is => 'ro', isa => Int);
  has MemoryReservation => (is => 'ro', isa => Int);
  has MountPoints => (is => 'ro', isa => ArrayRef[ECS_MountPoint]);
  has Name => (is => 'ro', isa => Str);
  has PortMappings => (is => 'ro', isa => ArrayRef[ECS_PortMapping]);
  has Privileged => (is => 'ro', isa => Bool);
  has PseudoTerminal => (is => 'ro', isa => Bool);
  has ReadonlyRootFilesystem => (is => 'ro', isa => Bool);
  has RepositoryCredentials => (is => 'ro', isa => ECS_RepositoryCredentials);
  has ResourceRequirements => (is => 'ro', isa => ArrayRef[ECS_ResourceRequirement]);
  has Secrets => (is => 'ro', isa => ArrayRef[ECS_Secret]);
  has StartTimeout => (is => 'ro', isa => Int);
  has StopTimeout => (is => 'ro', isa => Int);
  has SystemControls => (is => 'ro', isa => ArrayRef[ECS_SystemControl]);
  has Ulimits => (is => 'ro', isa => ArrayRef[ECS_Ulimit]);
  has User => (is => 'ro', isa => Str);
  has VolumesFrom => (is => 'ro', isa => ArrayRef[ECS_VolumeFrom]);
  has WorkingDirectory => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Essential' => {
                                'type' => 'Bool'
                              },
               'FirelensConfiguration' => {
                                            'type' => 'ECS_FirelensConfiguration',
                                            'class' => 'Paws::ECS::FirelensConfiguration'
                                          },
               'LogConfiguration' => {
                                       'class' => 'Paws::ECS::LogConfiguration',
                                       'type' => 'ECS_LogConfiguration'
                                     },
               'PortMappings' => {
                                   'type' => 'ArrayRef[ECS_PortMapping]',
                                   'class' => 'Paws::ECS::PortMapping'
                                 },
               'VolumesFrom' => {
                                  'type' => 'ArrayRef[ECS_VolumeFrom]',
                                  'class' => 'Paws::ECS::VolumeFrom'
                                },
               'RepositoryCredentials' => {
                                            'type' => 'ECS_RepositoryCredentials',
                                            'class' => 'Paws::ECS::RepositoryCredentials'
                                          },
               'Hostname' => {
                               'type' => 'Str'
                             },
               'Ulimits' => {
                              'type' => 'ArrayRef[ECS_Ulimit]',
                              'class' => 'Paws::ECS::Ulimit'
                            },
               'ExtraHosts' => {
                                 'class' => 'Paws::ECS::HostEntry',
                                 'type' => 'ArrayRef[ECS_HostEntry]'
                               },
               'LinuxParameters' => {
                                      'class' => 'Paws::ECS::LinuxParameters',
                                      'type' => 'ECS_LinuxParameters'
                                    },
               'SystemControls' => {
                                     'type' => 'ArrayRef[ECS_SystemControl]',
                                     'class' => 'Paws::ECS::SystemControl'
                                   },
               'Environment' => {
                                  'type' => 'ArrayRef[ECS_KeyValuePair]',
                                  'class' => 'Paws::ECS::KeyValuePair'
                                },
               'StopTimeout' => {
                                  'type' => 'Int'
                                },
               'StartTimeout' => {
                                   'type' => 'Int'
                                 },
               'Image' => {
                            'type' => 'Str'
                          },
               'Interactive' => {
                                  'type' => 'Bool'
                                },
               'Secrets' => {
                              'type' => 'ArrayRef[ECS_Secret]',
                              'class' => 'Paws::ECS::Secret'
                            },
               'Name' => {
                           'type' => 'Str'
                         },
               'Command' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'Links' => {
                            'type' => 'ArrayRef[Str|Undef]'
                          },
               'DependsOn' => {
                                'type' => 'ArrayRef[ECS_ContainerDependency]',
                                'class' => 'Paws::ECS::ContainerDependency'
                              },
               'DockerLabels' => {
                                   'class' => 'Paws::ECS::DockerLabelsMap',
                                   'type' => 'ECS_DockerLabelsMap'
                                 },
               'User' => {
                           'type' => 'Str'
                         },
               'DisableNetworking' => {
                                        'type' => 'Bool'
                                      },
               'MountPoints' => {
                                  'class' => 'Paws::ECS::MountPoint',
                                  'type' => 'ArrayRef[ECS_MountPoint]'
                                },
               'WorkingDirectory' => {
                                       'type' => 'Str'
                                     },
               'HealthCheck' => {
                                  'class' => 'Paws::ECS::HealthCheck',
                                  'type' => 'ECS_HealthCheck'
                                },
               'DockerSecurityOptions' => {
                                            'type' => 'ArrayRef[Str|Undef]'
                                          },
               'DnsServers' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'ReadonlyRootFilesystem' => {
                                             'type' => 'Bool'
                                           },
               'Memory' => {
                             'type' => 'Int'
                           },
               'MemoryReservation' => {
                                        'type' => 'Int'
                                      },
               'EntryPoint' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'ResourceRequirements' => {
                                           'class' => 'Paws::ECS::ResourceRequirement',
                                           'type' => 'ArrayRef[ECS_ResourceRequirement]'
                                         },
               'Privileged' => {
                                 'type' => 'Bool'
                               },
               'DnsSearchDomains' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'Cpu' => {
                          'type' => 'Int'
                        },
               'PseudoTerminal' => {
                                     'type' => 'Bool'
                                   }
             },
  'NameInRequest' => {
                       'Memory' => 'memory',
                       'MemoryReservation' => 'memoryReservation',
                       'DnsServers' => 'dnsServers',
                       'DockerSecurityOptions' => 'dockerSecurityOptions',
                       'ReadonlyRootFilesystem' => 'readonlyRootFilesystem',
                       'DnsSearchDomains' => 'dnsSearchDomains',
                       'PseudoTerminal' => 'pseudoTerminal',
                       'Cpu' => 'cpu',
                       'ResourceRequirements' => 'resourceRequirements',
                       'Privileged' => 'privileged',
                       'EntryPoint' => 'entryPoint',
                       'User' => 'user',
                       'HealthCheck' => 'healthCheck',
                       'DisableNetworking' => 'disableNetworking',
                       'MountPoints' => 'mountPoints',
                       'WorkingDirectory' => 'workingDirectory',
                       'StartTimeout' => 'startTimeout',
                       'Environment' => 'environment',
                       'StopTimeout' => 'stopTimeout',
                       'Interactive' => 'interactive',
                       'Secrets' => 'secrets',
                       'Name' => 'name',
                       'Command' => 'command',
                       'Links' => 'links',
                       'DependsOn' => 'dependsOn',
                       'DockerLabels' => 'dockerLabels',
                       'Image' => 'image',
                       'VolumesFrom' => 'volumesFrom',
                       'Essential' => 'essential',
                       'LogConfiguration' => 'logConfiguration',
                       'FirelensConfiguration' => 'firelensConfiguration',
                       'PortMappings' => 'portMappings',
                       'SystemControls' => 'systemControls',
                       'RepositoryCredentials' => 'repositoryCredentials',
                       'Hostname' => 'hostname',
                       'Ulimits' => 'ulimits',
                       'LinuxParameters' => 'linuxParameters',
                       'ExtraHosts' => 'extraHosts'
                     }
}
;
    return $Params_map;
  }


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


=head2 DependsOn => ArrayRef[ECS_ContainerDependency]

  The dependencies defined for container startup and shutdown. A
container can contain multiple dependencies. When a dependency is
defined for container startup, for container shutdown it is reversed.

For tasks using the EC2 launch type, the container instances require at
least version 1.26.0 of the container agent to enable container
dependencies. However, we recommend using the latest container agent
version. For information about checking your agent version and updating
to the latest version, see Updating the Amazon ECS Container Agent
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html)
in the I<Amazon Elastic Container Service Developer Guide>. If you are
using an Amazon ECS-optimized Linux AMI, your instance needs at least
version 1.26.0-1 of the C<ecs-init> package. If your container
instances are launched from version C<20190301> or later, then they
contain the required versions of the container agent and C<ecs-init>.
For more information, see Amazon ECS-optimized Linux AMI
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html)
in the I<Amazon Elastic Container Service Developer Guide>.

This parameter is available for tasks using the Fargate launch type in
the Ohio (us-east-2) region only and the task or service requires
platform version 1.3.0 or later.


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


=head2 DockerLabels => ECS_DockerLabelsMap

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


=head2 Environment => ArrayRef[ECS_KeyValuePair]

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


=head2 ExtraHosts => ArrayRef[ECS_HostEntry]

  A list of hostnames and IP address mappings to append to the
C</etc/hosts> file on the container. This parameter maps to
C<ExtraHosts> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--add-host>
option to docker run (https://docs.docker.com/engine/reference/run/).

This parameter is not supported for Windows containers or tasks that
use the C<awsvpc> network mode.


=head2 FirelensConfiguration => ECS_FirelensConfiguration

  The FireLens configuration for the container. This is used to specify
and configure a log router for container logs. For more information,
see Custom Log Routing
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 HealthCheck => ECS_HealthCheck

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

  The C<links> parameter allows containers to communicate with each other
without the need for port mappings. This parameter is only supported if
the network mode of a task definition is C<bridge>. The
C<name:internalName> construct is analogous to C<name:alias> in Docker
links. Up to 255 letters (uppercase and lowercase), numbers, and
hyphens are allowed. For more information about linking Docker
containers, go to Legacy container links
(https://docs.docker.com/network/links/) in the Docker documentation.
This parameter maps to C<Links> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--link> option to
docker run (https://docs.docker.com/engine/reference/run/).

This parameter is not supported for Windows containers.

Containers that are collocated on a single container instance may be
able to communicate with each other without requiring links or host
port mappings. Network isolation is achieved on the container instance
using security groups and VPC settings.


=head2 LinuxParameters => ECS_LinuxParameters

  Linux-specific modifications that are applied to the container, such as
Linux kernel capabilities. For more information see KernelCapabilities.

This parameter is not supported for Windows containers.


=head2 LogConfiguration => ECS_LogConfiguration

  The log configuration specification for the container.

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

  The amount (in MiB) of memory to present to the container. If your
container attempts to exceed the memory specified here, the container
is killed. The total amount of memory reserved for all containers
within a task must be lower than the task C<memory> value, if one is
specified. This parameter maps to C<Memory> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--memory> option
to docker run (https://docs.docker.com/engine/reference/run/).

If using the Fargate launch type, this parameter is optional.

If using the EC2 launch type, you must specify either a task-level
memory value or a container-level memory value. If you specify both a
container-level C<memory> and C<memoryReservation> value, C<memory>
must be greater than C<memoryReservation>. If you specify
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

If a task-level memory value is not specified, you must specify a
non-zero integer for one or both of C<memory> or C<memoryReservation>
in a container definition. If you specify both, C<memory> must be
greater than C<memoryReservation>. If you specify C<memoryReservation>,
then that value is subtracted from the available memory resources for
the container instance on which the container is placed. Otherwise, the
value of C<memory> is used.

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


=head2 MountPoints => ArrayRef[ECS_MountPoint]

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
Up to 255 letters (uppercase and lowercase), numbers, and hyphens are
allowed. This parameter maps to C<name> in the Create a container
(https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<--name> option to
docker run (https://docs.docker.com/engine/reference/run/).


=head2 PortMappings => ArrayRef[ECS_PortMapping]

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


=head2 RepositoryCredentials => ECS_RepositoryCredentials

  The private repository authentication credentials to use.


=head2 ResourceRequirements => ArrayRef[ECS_ResourceRequirement]

  The type and amount of a resource to assign to a container. The only
supported resource is a GPU.


=head2 Secrets => ArrayRef[ECS_Secret]

  The secrets to pass to the container. For more information, see
Specifying Sensitive Data
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 StartTimeout => Int

  Time duration (in seconds) to wait before giving up on resolving
dependencies for a container. For example, you specify two containers
in a task definition with containerA having a dependency on containerB
reaching a C<COMPLETE>, C<SUCCESS>, or C<HEALTHY> status. If a
C<startTimeout> value is specified for containerB and it does not reach
the desired status within that time then containerA will give up and
not start. This results in the task transitioning to a C<STOPPED>
state.

For tasks using the EC2 launch type, the container instances require at
least version 1.26.0 of the container agent to enable a container start
timeout value. However, we recommend using the latest container agent
version. For information about checking your agent version and updating
to the latest version, see Updating the Amazon ECS Container Agent
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html)
in the I<Amazon Elastic Container Service Developer Guide>. If you are
using an Amazon ECS-optimized Linux AMI, your instance needs at least
version 1.26.0-1 of the C<ecs-init> package. If your container
instances are launched from version C<20190301> or later, then they
contain the required versions of the container agent and C<ecs-init>.
For more information, see Amazon ECS-optimized Linux AMI
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html)
in the I<Amazon Elastic Container Service Developer Guide>.

This parameter is available for tasks using the Fargate launch type in
the Ohio (us-east-2) region only and the task or service requires
platform version 1.3.0 or later.


=head2 StopTimeout => Int

  Time duration (in seconds) to wait before the container is forcefully
killed if it doesn't exit normally on its own. For tasks using the
Fargate launch type, the max C<stopTimeout> value is 2 minutes. This
parameter is available for tasks using the Fargate launch type in the
Ohio (us-east-2) region only and the task or service requires platform
version 1.3.0 or later.

For tasks using the EC2 launch type, the stop timeout value for the
container takes precedence over the C<ECS_CONTAINER_STOP_TIMEOUT>
container agent configuration parameter, if used. Container instances
require at least version 1.26.0 of the container agent to enable a
container stop timeout value. However, we recommend using the latest
container agent version. For information about checking your agent
version and updating to the latest version, see Updating the Amazon ECS
Container Agent
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html)
in the I<Amazon Elastic Container Service Developer Guide>. If you are
using an Amazon ECS-optimized Linux AMI, your instance needs at least
version 1.26.0-1 of the C<ecs-init> package. If your container
instances are launched from version C<20190301> or later, then they
contain the required versions of the container agent and C<ecs-init>.
For more information, see Amazon ECS-optimized Linux AMI
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 SystemControls => ArrayRef[ECS_SystemControl]

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


=head2 Ulimits => ArrayRef[ECS_Ulimit]

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

You can use the following formats. If specifying a UID or GID, you must
specify it as a positive integer.

=over

=item *

C<user>

=item *

C<user:group>

=item *

C<uid>

=item *

C<uid:gid>

=item *

C<user:gid>

=item *

C<uid:group>

=back

This parameter is not supported for Windows containers.


=head2 VolumesFrom => ArrayRef[ECS_VolumeFrom]

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

