package Paws::Batch::ContainerDetail;
  use Moose;
  has Command => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'command', request_name => 'command', traits => ['Unwrapped','NameInRequest']);
  has ContainerInstanceArn => (is => 'ro', isa => 'Str', xmlname => 'containerInstanceArn', request_name => 'containerInstanceArn', traits => ['Unwrapped','NameInRequest']);
  has Environment => (is => 'ro', isa => 'ArrayRef[Paws::Batch::KeyValuePair]', xmlname => 'environment', request_name => 'environment', traits => ['Unwrapped','NameInRequest']);
  has ExitCode => (is => 'ro', isa => 'Int', xmlname => 'exitCode', request_name => 'exitCode', traits => ['Unwrapped','NameInRequest']);
  has Image => (is => 'ro', isa => 'Str', xmlname => 'image', request_name => 'image', traits => ['Unwrapped','NameInRequest']);
  has JobRoleArn => (is => 'ro', isa => 'Str', xmlname => 'jobRoleArn', request_name => 'jobRoleArn', traits => ['Unwrapped','NameInRequest']);
  has Memory => (is => 'ro', isa => 'Int', xmlname => 'memory', request_name => 'memory', traits => ['Unwrapped','NameInRequest']);
  has MountPoints => (is => 'ro', isa => 'ArrayRef[Paws::Batch::MountPoint]', xmlname => 'mountPoints', request_name => 'mountPoints', traits => ['Unwrapped','NameInRequest']);
  has Privileged => (is => 'ro', isa => 'Bool', xmlname => 'privileged', request_name => 'privileged', traits => ['Unwrapped','NameInRequest']);
  has ReadonlyRootFilesystem => (is => 'ro', isa => 'Bool', xmlname => 'readonlyRootFilesystem', request_name => 'readonlyRootFilesystem', traits => ['Unwrapped','NameInRequest']);
  has Reason => (is => 'ro', isa => 'Str', xmlname => 'reason', request_name => 'reason', traits => ['Unwrapped','NameInRequest']);
  has Ulimits => (is => 'ro', isa => 'ArrayRef[Paws::Batch::Ulimit]', xmlname => 'ulimits', request_name => 'ulimits', traits => ['Unwrapped','NameInRequest']);
  has User => (is => 'ro', isa => 'Str', xmlname => 'user', request_name => 'user', traits => ['Unwrapped','NameInRequest']);
  has Vcpus => (is => 'ro', isa => 'Int', xmlname => 'vcpus', request_name => 'vcpus', traits => ['Unwrapped','NameInRequest']);
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::Batch::Volume]', xmlname => 'volumes', request_name => 'volumes', traits => ['Unwrapped','NameInRequest']);
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


=head2 ExitCode => Int

  The exit code to return upon completion.


=head2 Image => Str

  The image used to start the container.


=head2 JobRoleArn => Str

  The Amazon Resource Name (ARN) associated with the job upon execution.


=head2 Memory => Int

  The number of MiB of memory reserved for the job.


=head2 MountPoints => ArrayRef[L<Paws::Batch::MountPoint>]

  The mount points for data volumes in your container.


=head2 Privileged => Bool

  When this parameter is true, the container is given elevated privileges
on the host container instance (similar to the C<root> user).


=head2 ReadonlyRootFilesystem => Bool

  When this parameter is true, the container is given read-only access to
its root file system.


=head2 Reason => Str

  A short (255 max characters) human-readable string to provide
additional details about a running or stopped container.


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

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

