package Paws::ECS::PlatformDevice;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::PlatformDevice

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::PlatformDevice object:

  $service_obj->Method(Att1 => { Id => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::PlatformDevice object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

The devices that are available on the container instance. The only
supported device type is a GPU.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  The ID for the GPU(s) on the container instance. The available GPU IDs
can also be obtained on the container instance in the
C</var/lib/ecs/gpu/nvidia_gpu_info.json> file.


=head2 B<REQUIRED> Type => Str

  The type of device that is available on the container instance. The
only supported value is C<GPU>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

