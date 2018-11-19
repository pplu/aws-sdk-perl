package Paws::ECS::DockerVolumeConfiguration;
  use Moose;
  has Autoprovision => (is => 'ro', isa => 'Bool', request_name => 'autoprovision', traits => ['NameInRequest']);
  has Driver => (is => 'ro', isa => 'Str', request_name => 'driver', traits => ['NameInRequest']);
  has DriverOpts => (is => 'ro', isa => 'Paws::ECS::StringMap', request_name => 'driverOpts', traits => ['NameInRequest']);
  has Labels => (is => 'ro', isa => 'Paws::ECS::StringMap', request_name => 'labels', traits => ['NameInRequest']);
  has Scope => (is => 'ro', isa => 'Str', request_name => 'scope', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DockerVolumeConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::DockerVolumeConfiguration object:

  $service_obj->Method(Att1 => { Autoprovision => $value, ..., Scope => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::DockerVolumeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Autoprovision

=head1 DESCRIPTION

This parameter is specified when you are using Docker volumes. Docker
volumes are only supported when you are using the EC2 launch type.
Windows containers only support the use of the C<local> driver. To use
bind mounts, specify a C<host> instead.

=head1 ATTRIBUTES


=head2 Autoprovision => Bool

  If this value is C<true>, the Docker volume is created if it does not
already exist.

This field is only used if the C<scope> is C<shared>.


=head2 Driver => Str

  The Docker volume driver to use. The driver value must match the driver
name provided by Docker because it is used for task placement. If the
driver was installed using the Docker plugin CLI, use C<docker plugin
ls> to retrieve the driver name from your container instance. If the
driver was installed using another method, use Docker plugin discovery
to retrieve the driver name. For more information, see Docker plugin
discovery
(https://docs.docker.com/engine/extend/plugin_api/#plugin-discovery).
This parameter maps to C<Driver> in the Create a volume
(https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<xxdriver> option
to C<docker volume create>
(https://docs.docker.com/engine/reference/commandline/volume_create/).


=head2 DriverOpts => L<Paws::ECS::StringMap>

  A map of Docker driver-specific options passed through. This parameter
maps to C<DriverOpts> in the Create a volume
(https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<xxopt> option to
C<docker volume create>
(https://docs.docker.com/engine/reference/commandline/volume_create/).


=head2 Labels => L<Paws::ECS::StringMap>

  Custom metadata to add to your Docker volume. This parameter maps to
C<Labels> in the Create a volume
(https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate)
section of the Docker Remote API
(https://docs.docker.com/engine/api/v1.35/) and the C<xxlabel> option
to C<docker volume create>
(https://docs.docker.com/engine/reference/commandline/volume_create/).


=head2 Scope => Str

  The scope for the Docker volume that determines its lifecycle. Docker
volumes that are scoped to a C<task> are automatically provisioned when
the task starts and destroyed when the task stops. Docker volumes that
are scoped as C<shared> persist after the task stops.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

