package Paws::Batch::ContainerDetail;
  use Moose;
  has Command => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'command', traits => ['NameInRequest']);
  has ContainerInstanceArn => (is => 'ro', isa => 'Str', request_name => 'containerInstanceArn', traits => ['NameInRequest']);
  has Environment => (is => 'ro', isa => 'ArrayRef[Paws::Batch::KeyValuePair]', request_name => 'environment', traits => ['NameInRequest']);
  has ExitCode => (is => 'ro', isa => 'Int', request_name => 'exitCode', traits => ['NameInRequest']);
  has Image => (is => 'ro', isa => 'Str', request_name => 'image', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has JobRoleArn => (is => 'ro', isa => 'Str', request_name => 'jobRoleArn', traits => ['NameInRequest']);
  has LogStreamName => (is => 'ro', isa => 'Str', request_name => 'logStreamName', traits => ['NameInRequest']);
  has Memory => (is => 'ro', isa => 'Int', request_name => 'memory', traits => ['NameInRequest']);
  has MountPoints => (is => 'ro', isa => 'ArrayRef[Paws::Batch::MountPoint]', request_name => 'mountPoints', traits => ['NameInRequest']);
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::Batch::NetworkInterface]', request_name => 'networkInterfaces', traits => ['NameInRequest']);
  has Privileged => (is => 'ro', isa => 'Bool', request_name => 'privileged', traits => ['NameInRequest']);
  has ReadonlyRootFilesystem => (is => 'ro', isa => 'Bool', request_name => 'readonlyRootFilesystem', traits => ['NameInRequest']);
  has Reason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);
  has TaskArn => (is => 'ro', isa => 'Str', request_name => 'taskArn', traits => ['NameInRequest']);
  has Ulimits => (is => 'ro', isa => 'ArrayRef[Paws::Batch::Ulimit]', request_name => 'ulimits', traits => ['NameInRequest']);
  has User => (is => 'ro', isa => 'Str', request_name => 'user', traits => ['NameInRequest']);
  has Vcpus => (is => 'ro', isa => 'Int', request_name => 'vcpus', traits => ['NameInRequest']);
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::Batch::Volume]', request_name => 'volumes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ContainerDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::ContainerDetail object:

  $service_obj->Method(Att1 => { Command => $value, ..., Volumes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::ContainerDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Command

=head1 DESCRIPTION

An object representing the details of a container that is part of a
job.

=head1 ATTRIBUTES


=head2 Command => ArrayRef[Str|Undef]

  The command that is passed to the container.


=head2 ContainerInstanceArn => Str

  The Amazon Resource Name (ARN) of the container instance on which the
container is running.


=head2 Environment => ArrayRef[L<Paws::Batch::KeyValuePair>]

  The environment variables to pass to a container.

Environment variables must not start with C<AWS_BATCH>; this naming
convention is reserved for variables that are set by the AWS Batch
service.


=head2 ExitCode => Int

  The exit code to return upon completion.


=head2 Image => Str

  The image used to start the container.


=head2 InstanceType => Str

  The instance type of the underlying host infrastructure of a multi-node
parallel job.


=head2 JobRoleArn => Str

  The Amazon Resource Name (ARN) associated with the job upon execution.


=head2 LogStreamName => Str

  The name of the CloudWatch Logs log stream associated with the
container. The log group for AWS Batch jobs is C</aws/batch/job>. Each
container attempt receives a log stream name when they reach the
C<RUNNING> status.


=head2 Memory => Int

  The number of MiB of memory reserved for the job.


=head2 MountPoints => ArrayRef[L<Paws::Batch::MountPoint>]

  The mount points for data volumes in your container.


=head2 NetworkInterfaces => ArrayRef[L<Paws::Batch::NetworkInterface>]

  The network interfaces associated with the job.


=head2 Privileged => Bool

  When this parameter is true, the container is given elevated privileges
on the host container instance (similar to the C<root> user).


=head2 ReadonlyRootFilesystem => Bool

  When this parameter is true, the container is given read-only access to
its root file system.


=head2 Reason => Str

  A short (255 max characters) human-readable string to provide
additional details about a running or stopped container.


=head2 TaskArn => Str

  The Amazon Resource Name (ARN) of the Amazon ECS task that is
associated with the container job. Each container attempt receives a
task ARN when they reach the C<STARTING> status.


=head2 Ulimits => ArrayRef[L<Paws::Batch::Ulimit>]

  A list of C<ulimit> values to set in the container.


=head2 User => Str

  The user name to use inside the container.


=head2 Vcpus => Int

  The number of VCPUs allocated for the job.


=head2 Volumes => ArrayRef[L<Paws::Batch::Volume>]

  A list of volumes associated with the job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

