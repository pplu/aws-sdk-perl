# Generated from default/object.tt
package Paws::Batch::ContainerDetail;
  use Moo;
  use Types::Standard qw/Undef ArrayRef Str Int Bool/;
  use Paws::Batch::Types qw/Batch_Volume Batch_ResourceRequirement Batch_KeyValuePair Batch_Ulimit Batch_LinuxParameters Batch_NetworkInterface Batch_MountPoint/;
  has Command => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ContainerInstanceArn => (is => 'ro', isa => Str);
  has Environment => (is => 'ro', isa => ArrayRef[Batch_KeyValuePair]);
  has ExitCode => (is => 'ro', isa => Int);
  has Image => (is => 'ro', isa => Str);
  has InstanceType => (is => 'ro', isa => Str);
  has JobRoleArn => (is => 'ro', isa => Str);
  has LinuxParameters => (is => 'ro', isa => Batch_LinuxParameters);
  has LogStreamName => (is => 'ro', isa => Str);
  has Memory => (is => 'ro', isa => Int);
  has MountPoints => (is => 'ro', isa => ArrayRef[Batch_MountPoint]);
  has NetworkInterfaces => (is => 'ro', isa => ArrayRef[Batch_NetworkInterface]);
  has Privileged => (is => 'ro', isa => Bool);
  has ReadonlyRootFilesystem => (is => 'ro', isa => Bool);
  has Reason => (is => 'ro', isa => Str);
  has ResourceRequirements => (is => 'ro', isa => ArrayRef[Batch_ResourceRequirement]);
  has TaskArn => (is => 'ro', isa => Str);
  has Ulimits => (is => 'ro', isa => ArrayRef[Batch_Ulimit]);
  has User => (is => 'ro', isa => Str);
  has Vcpus => (is => 'ro', isa => Int);
  has Volumes => (is => 'ro', isa => ArrayRef[Batch_Volume]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReadonlyRootFilesystem' => {
                                             'type' => 'Bool'
                                           },
               'Environment' => {
                                  'class' => 'Paws::Batch::KeyValuePair',
                                  'type' => 'ArrayRef[Batch_KeyValuePair]'
                                },
               'Memory' => {
                             'type' => 'Int'
                           },
               'ExitCode' => {
                               'type' => 'Int'
                             },
               'Image' => {
                            'type' => 'Str'
                          },
               'ResourceRequirements' => {
                                           'type' => 'ArrayRef[Batch_ResourceRequirement]',
                                           'class' => 'Paws::Batch::ResourceRequirement'
                                         },
               'Privileged' => {
                                 'type' => 'Bool'
                               },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'ContainerInstanceArn' => {
                                           'type' => 'Str'
                                         },
               'JobRoleArn' => {
                                 'type' => 'Str'
                               },
               'Command' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'LogStreamName' => {
                                    'type' => 'Str'
                                  },
               'User' => {
                           'type' => 'Str'
                         },
               'Vcpus' => {
                            'type' => 'Int'
                          },
               'TaskArn' => {
                              'type' => 'Str'
                            },
               'Reason' => {
                             'type' => 'Str'
                           },
               'MountPoints' => {
                                  'type' => 'ArrayRef[Batch_MountPoint]',
                                  'class' => 'Paws::Batch::MountPoint'
                                },
               'NetworkInterfaces' => {
                                        'class' => 'Paws::Batch::NetworkInterface',
                                        'type' => 'ArrayRef[Batch_NetworkInterface]'
                                      },
               'Volumes' => {
                              'type' => 'ArrayRef[Batch_Volume]',
                              'class' => 'Paws::Batch::Volume'
                            },
               'LinuxParameters' => {
                                      'class' => 'Paws::Batch::LinuxParameters',
                                      'type' => 'Batch_LinuxParameters'
                                    },
               'Ulimits' => {
                              'type' => 'ArrayRef[Batch_Ulimit]',
                              'class' => 'Paws::Batch::Ulimit'
                            }
             },
  'NameInRequest' => {
                       'Reason' => 'reason',
                       'Volumes' => 'volumes',
                       'LinuxParameters' => 'linuxParameters',
                       'Ulimits' => 'ulimits',
                       'NetworkInterfaces' => 'networkInterfaces',
                       'MountPoints' => 'mountPoints',
                       'Vcpus' => 'vcpus',
                       'User' => 'user',
                       'TaskArn' => 'taskArn',
                       'LogStreamName' => 'logStreamName',
                       'JobRoleArn' => 'jobRoleArn',
                       'Command' => 'command',
                       'Image' => 'image',
                       'ContainerInstanceArn' => 'containerInstanceArn',
                       'ResourceRequirements' => 'resourceRequirements',
                       'Privileged' => 'privileged',
                       'InstanceType' => 'instanceType',
                       'ExitCode' => 'exitCode',
                       'Memory' => 'memory',
                       'ReadonlyRootFilesystem' => 'readonlyRootFilesystem',
                       'Environment' => 'environment'
                     }
}
;
    return $Params_map;
  }


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


=head2 Environment => ArrayRef[Batch_KeyValuePair]

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


=head2 LinuxParameters => Batch_LinuxParameters

  Linux-specific modifications that are applied to the container, such as
details for device mappings.


=head2 LogStreamName => Str

  The name of the CloudWatch Logs log stream associated with the
container. The log group for AWS Batch jobs is C</aws/batch/job>. Each
container attempt receives a log stream name when they reach the
C<RUNNING> status.


=head2 Memory => Int

  The number of MiB of memory reserved for the job.


=head2 MountPoints => ArrayRef[Batch_MountPoint]

  The mount points for data volumes in your container.


=head2 NetworkInterfaces => ArrayRef[Batch_NetworkInterface]

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


=head2 ResourceRequirements => ArrayRef[Batch_ResourceRequirement]

  The type and amount of a resource to assign to a container. Currently,
the only supported resource is C<GPU>.


=head2 TaskArn => Str

  The Amazon Resource Name (ARN) of the Amazon ECS task that is
associated with the container job. Each container attempt receives a
task ARN when they reach the C<STARTING> status.


=head2 Ulimits => ArrayRef[Batch_Ulimit]

  A list of C<ulimit> values to set in the container.


=head2 User => Str

  The user name to use inside the container.


=head2 Vcpus => Int

  The number of VCPUs allocated for the job.


=head2 Volumes => ArrayRef[Batch_Volume]

  A list of volumes associated with the job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

