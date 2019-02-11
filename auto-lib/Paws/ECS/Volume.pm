package Paws::ECS::Volume;
  use Moose;
  has DockerVolumeConfiguration => (is => 'ro', isa => 'Paws::ECS::DockerVolumeConfiguration', request_name => 'dockerVolumeConfiguration', traits => ['NameInRequest']);
  has Host => (is => 'ro', isa => 'Paws::ECS::HostVolumeProperties', request_name => 'host', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Volume

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Volume object:

  $service_obj->Method(Att1 => { DockerVolumeConfiguration => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Volume object:

  $result = $service_obj->Method(...);
  $result->Att1->DockerVolumeConfiguration

=head1 DESCRIPTION

A data volume used in a task definition. For tasks that use a Docker
volume, specify a C<DockerVolumeConfiguration>. For tasks that use a
bind mount host volume, specify a C<host> and optional C<sourcePath>.
For more information, see Using Data Volumes in Tasks
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html).

=head1 ATTRIBUTES


=head2 DockerVolumeConfiguration => L<Paws::ECS::DockerVolumeConfiguration>

  This parameter is specified when you are using Docker volumes. Docker
volumes are only supported when you are using the EC2 launch type.
Windows containers only support the use of the C<local> driver. To use
bind mounts, specify a C<host> instead.


=head2 Host => L<Paws::ECS::HostVolumeProperties>

  This parameter is specified when you are using bind mount host volumes.
Bind mount host volumes are supported when you are using either the EC2
or Fargate launch types. The contents of the C<host> parameter
determine whether your bind mount host volume persists on the host
container instance and where it is stored. If the C<host> parameter is
empty, then the Docker daemon assigns a host path for your data volume.
However, the data is not guaranteed to persist after the containers
associated with it stop running.

Windows containers can mount whole directories on the same drive as
C<$env:ProgramData>. Windows containers cannot mount directories on a
different drive, and mount point cannot be across drives. For example,
you can mount C<C:\my\path:C:\my\path> and C<D:\:D:\>, but not
C<D:\my\path:C:\my\path> or C<D:\:C:\my\path>.


=head2 Name => Str

  The name of the volume. Up to 255 letters (uppercase and lowercase),
numbers, hyphens, and underscores are allowed. This name is referenced
in the C<sourceVolume> parameter of container definition
C<mountPoints>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

