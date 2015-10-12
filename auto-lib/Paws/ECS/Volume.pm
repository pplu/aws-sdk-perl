package Paws::ECS::Volume;
  use Moose;
  has host => (is => 'ro', isa => 'Paws::ECS::HostVolumeProperties');
  has name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Volume

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Volume object:

  $service_obj->Method(Att1 => { host => $value, ..., name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Volume object:

  $result = $service_obj->Method(...);
  $result->Att1->host

=head1 ATTRIBUTES

=head2 host => L<Paws::ECS::HostVolumeProperties>

  The path on the host container instance that is presented to the
containers which access the volume. If this parameter is empty, then
the Docker daemon assigns a host path for you.

=head2 name => Str

  The name of the volume. This name is referenced in the C<sourceVolume>
parameter of container definition C<mountPoints>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

