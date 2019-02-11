package Paws::Batch::ContainerProperties;
  use Moose;
  has Command => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'command', traits => ['NameInRequest']);
  has Environment => (is => 'ro', isa => 'ArrayRef[Paws::Batch::KeyValuePair]', request_name => 'environment', traits => ['NameInRequest']);
  has Image => (is => 'ro', isa => 'Str', request_name => 'image', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has JobRoleArn => (is => 'ro', isa => 'Str', request_name => 'jobRoleArn', traits => ['NameInRequest']);
  has Memory => (is => 'ro', isa => 'Int', request_name => 'memory', traits => ['NameInRequest']);
  has MountPoints => (is => 'ro', isa => 'ArrayRef[Paws::Batch::MountPoint]', request_name => 'mountPoints', traits => ['NameInRequest']);
  has Privileged => (is => 'ro', isa => 'Bool', request_name => 'privileged', traits => ['NameInRequest']);
  has ReadonlyRootFilesystem => (is => 'ro', isa => 'Bool', request_name => 'readonlyRootFilesystem', traits => ['NameInRequest']);
  has Ulimits => (is => 'ro', isa => 'ArrayRef[Paws::Batch::Ulimit]', request_name => 'ulimits', traits => ['NameInRequest']);
  has User => (is => 'ro', isa => 'Str', request_name => 'user', traits => ['NameInRequest']);
  has Vcpus => (is => 'ro', isa => 'Int', request_name => 'vcpus', traits => ['NameInRequest']);
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::Batch::Volume]', request_name => 'volumes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ContainerProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::ContainerProperties object:

  $service_obj->Method(Att1 => { Command => $value, ..., Volumes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::ContainerProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->Command

=head1 DESCRIPTION

Container properties are used in job definitions to describe the
container that is launched as part of a job.

=head1 ATTRIBUTES


=head2 Command => ArrayRef[Str|Undef]

  The command that is passed to the container. This parameter maps to
C<Cmd> in the Create a container
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container)
section of the Docker Remote API
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/)
and the C<COMMAND> parameter to docker run
(https://docs.docker.com/engine/reference/run/). For more information,
see https://docs.docker.com/engine/reference/builder/#cmd
(https://docs.docker.com/engine/reference/builder/#cmd).


=head2 Environment => ArrayRef[L<Paws::Batch::KeyValuePair>]

  The environment variables to pass to a container. This parameter maps
to C<Env> in the Create a container
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container)
section of the Docker Remote API
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/)
and the C<--env> option to docker run
(https://docs.docker.com/engine/reference/run/).

We do not recommend using plaintext environment variables for sensitive
information, such as credential data.

Environment variables must not start with C<AWS_BATCH>; this naming
convention is reserved for variables that are set by the AWS Batch
service.


=head2 Image => Str

  The image used to start a container. This string is passed directly to
the Docker daemon. Images in the Docker Hub registry are available by
default. Other repositories are specified with C<
I<repository-url>/I<image>:I<tag> >. Up to 255 letters (uppercase and
lowercase), numbers, hyphens, underscores, colons, periods, forward
slashes, and number signs are allowed. This parameter maps to C<Image>
in the Create a container
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container)
section of the Docker Remote API
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/)
and the C<IMAGE> parameter of docker run
(https://docs.docker.com/engine/reference/run/).

=over

=item *

Images in Amazon ECR repositories use the full registry and repository
URI (for example,
C<012345678910.dkr.ecr.E<lt>region-nameE<gt>.amazonaws.com/E<lt>repository-nameE<gt>>).

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



=head2 InstanceType => Str

  The instance type to use for a multi-node parallel job. Currently all
node groups in a multi-node parallel job must use the same instance
type. This parameter is not valid for single-node container jobs.


=head2 JobRoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role that the container can
assume for AWS permissions.


=head2 Memory => Int

  The hard limit (in MiB) of memory to present to the container. If your
container attempts to exceed the memory specified here, the container
is killed. This parameter maps to C<Memory> in the Create a container
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container)
section of the Docker Remote API
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/)
and the C<--memory> option to docker run
(https://docs.docker.com/engine/reference/run/). You must specify at
least 4 MiB of memory for a job.

If you are trying to maximize your resource utilization by providing
your jobs as much memory as possible for a particular instance type,
see Memory Management
(http://docs.aws.amazon.com/batch/latest/userguide/memory-management.html)
in the I<AWS Batch User Guide>.


=head2 MountPoints => ArrayRef[L<Paws::Batch::MountPoint>]

  The mount points for data volumes in your container. This parameter
maps to C<Volumes> in the Create a container
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container)
section of the Docker Remote API
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/)
and the C<--volume> option to docker run
(https://docs.docker.com/engine/reference/run/).


=head2 Privileged => Bool

  When this parameter is true, the container is given elevated privileges
on the host container instance (similar to the C<root> user). This
parameter maps to C<Privileged> in the Create a container
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container)
section of the Docker Remote API
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/)
and the C<--privileged> option to docker run
(https://docs.docker.com/engine/reference/run/).


=head2 ReadonlyRootFilesystem => Bool

  When this parameter is true, the container is given read-only access to
its root file system. This parameter maps to C<ReadonlyRootfs> in the
Create a container
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container)
section of the Docker Remote API
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/)
and the C<--read-only> option to C<docker run>.


=head2 Ulimits => ArrayRef[L<Paws::Batch::Ulimit>]

  A list of C<ulimits> to set in the container. This parameter maps to
C<Ulimits> in the Create a container
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container)
section of the Docker Remote API
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/)
and the C<--ulimit> option to docker run
(https://docs.docker.com/engine/reference/run/).


=head2 User => Str

  The user name to use inside the container. This parameter maps to
C<User> in the Create a container
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container)
section of the Docker Remote API
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/)
and the C<--user> option to docker run
(https://docs.docker.com/engine/reference/run/).


=head2 Vcpus => Int

  The number of vCPUs reserved for the container. This parameter maps to
C<CpuShares> in the Create a container
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container)
section of the Docker Remote API
(https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/)
and the C<--cpu-shares> option to docker run
(https://docs.docker.com/engine/reference/run/). Each vCPU is
equivalent to 1,024 CPU shares. You must specify at least one vCPU.


=head2 Volumes => ArrayRef[L<Paws::Batch::Volume>]

  A list of data volumes used in a job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

