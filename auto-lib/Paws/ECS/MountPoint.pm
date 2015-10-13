package Paws::ECS::MountPoint;
  use Moose;
  has containerPath => (is => 'ro', isa => 'Str');
  has readOnly => (is => 'ro', isa => 'Bool');
  has sourceVolume => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::MountPoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::MountPoint object:

  $service_obj->Method(Att1 => { containerPath => $value, ..., sourceVolume => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::MountPoint object:

  $result = $service_obj->Method(...);
  $result->Att1->containerPath

=head1 DESCRIPTION

Details on a volume mount point that is used in a container definition.

=head1 ATTRIBUTES

=head2 containerPath => Str

  The path on the container to mount the host volume at.

=head2 readOnly => Bool

  If this value is C<true>, the container has read-only access to the
volume. If this value is C<false>, then the container can write to the
volume. The default value is C<false>.

=head2 sourceVolume => Str

  The name of the volume to mount.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

