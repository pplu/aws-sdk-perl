# Generated from default/object.tt
package Paws::ECS::Container;
  use Moo;
  use Types::Standard qw/Str Int Undef ArrayRef/;
  use Paws::ECS::Types qw/ECS_NetworkInterface ECS_NetworkBinding/;
  has ContainerArn => (is => 'ro', isa => Str);
  has Cpu => (is => 'ro', isa => Str);
  has ExitCode => (is => 'ro', isa => Int);
  has GpuIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has HealthStatus => (is => 'ro', isa => Str);
  has Image => (is => 'ro', isa => Str);
  has ImageDigest => (is => 'ro', isa => Str);
  has LastStatus => (is => 'ro', isa => Str);
  has Memory => (is => 'ro', isa => Str);
  has MemoryReservation => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has NetworkBindings => (is => 'ro', isa => ArrayRef[ECS_NetworkBinding]);
  has NetworkInterfaces => (is => 'ro', isa => ArrayRef[ECS_NetworkInterface]);
  has Reason => (is => 'ro', isa => Str);
  has RuntimeId => (is => 'ro', isa => Str);
  has TaskArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HealthStatus' => {
                                   'type' => 'Str'
                                 },
               'TaskArn' => {
                              'type' => 'Str'
                            },
               'ContainerArn' => {
                                   'type' => 'Str'
                                 },
               'NetworkInterfaces' => {
                                        'type' => 'ArrayRef[ECS_NetworkInterface]',
                                        'class' => 'Paws::ECS::NetworkInterface'
                                      },
               'LastStatus' => {
                                 'type' => 'Str'
                               },
               'Reason' => {
                             'type' => 'Str'
                           },
               'MemoryReservation' => {
                                        'type' => 'Str'
                                      },
               'NetworkBindings' => {
                                      'class' => 'Paws::ECS::NetworkBinding',
                                      'type' => 'ArrayRef[ECS_NetworkBinding]'
                                    },
               'ExitCode' => {
                               'type' => 'Int'
                             },
               'Memory' => {
                             'type' => 'Str'
                           },
               'ImageDigest' => {
                                  'type' => 'Str'
                                },
               'Cpu' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'RuntimeId' => {
                                'type' => 'Str'
                              },
               'Image' => {
                            'type' => 'Str'
                          },
               'GpuIds' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           }
             },
  'NameInRequest' => {
                       'Cpu' => 'cpu',
                       'Name' => 'name',
                       'RuntimeId' => 'runtimeId',
                       'Image' => 'image',
                       'GpuIds' => 'gpuIds',
                       'MemoryReservation' => 'memoryReservation',
                       'ExitCode' => 'exitCode',
                       'NetworkBindings' => 'networkBindings',
                       'Memory' => 'memory',
                       'ImageDigest' => 'imageDigest',
                       'NetworkInterfaces' => 'networkInterfaces',
                       'LastStatus' => 'lastStatus',
                       'Reason' => 'reason',
                       'HealthStatus' => 'healthStatus',
                       'TaskArn' => 'taskArn',
                       'ContainerArn' => 'containerArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Container

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Container object:

  $service_obj->Method(Att1 => { ContainerArn => $value, ..., TaskArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Container object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerArn

=head1 DESCRIPTION

A Docker container that is part of a task.

=head1 ATTRIBUTES


=head2 ContainerArn => Str

  The Amazon Resource Name (ARN) of the container.


=head2 Cpu => Str

  The number of CPU units set for the container. The value will be C<0>
if no value was specified in the container definition when the task
definition was registered.


=head2 ExitCode => Int

  The exit code returned from the container.


=head2 GpuIds => ArrayRef[Str|Undef]

  The IDs of each GPU assigned to the container.


=head2 HealthStatus => Str

  The health status of the container. If health checks are not configured
for this container in its task definition, then it reports the health
status as C<UNKNOWN>.


=head2 Image => Str

  The image used for the container.


=head2 ImageDigest => Str

  The container image manifest digest.

The C<imageDigest> is only returned if the container is using an image
hosted in Amazon ECR, otherwise it is omitted.


=head2 LastStatus => Str

  The last known status of the container.


=head2 Memory => Str

  The hard limit (in MiB) of memory set for the container.


=head2 MemoryReservation => Str

  The soft limit (in MiB) of memory set for the container.


=head2 Name => Str

  The name of the container.


=head2 NetworkBindings => ArrayRef[ECS_NetworkBinding]

  The network bindings associated with the container.


=head2 NetworkInterfaces => ArrayRef[ECS_NetworkInterface]

  The network interfaces associated with the container.


=head2 Reason => Str

  A short (255 max characters) human-readable string to provide
additional details about a running or stopped container.


=head2 RuntimeId => Str

  The ID of the Docker container.


=head2 TaskArn => Str

  The ARN of the task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

