package Paws::ECS::Device;
  use Moose;
  has ContainerPath => (is => 'ro', isa => 'Str', request_name => 'containerPath', traits => ['NameInRequest']);
  has HostPath => (is => 'ro', isa => 'Str', request_name => 'hostPath', traits => ['NameInRequest'], required => 1);
  has Permissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'permissions', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Device

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Device object:

  $service_obj->Method(Att1 => { ContainerPath => $value, ..., Permissions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Device object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerPath

=head1 DESCRIPTION

An object representing a container instance host device.

=head1 ATTRIBUTES


=head2 ContainerPath => Str

  The path inside the container at which to expose the host device.


=head2 B<REQUIRED> HostPath => Str

  The path for the device on the host container instance.


=head2 Permissions => ArrayRef[Str|Undef]

  The explicit permissions to provide to the container for the device. By
default, the container has permissions for C<read>, C<write>, and
C<mknod> for the device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

