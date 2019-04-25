package Paws::ECS::VolumeFrom;
  use Moose;
  has ReadOnly => (is => 'ro', isa => 'Bool', request_name => 'readOnly', traits => ['NameInRequest']);
  has SourceContainer => (is => 'ro', isa => 'Str', request_name => 'sourceContainer', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::VolumeFrom

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::VolumeFrom object:

  $service_obj->Method(Att1 => { ReadOnly => $value, ..., SourceContainer => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::VolumeFrom object:

  $result = $service_obj->Method(...);
  $result->Att1->ReadOnly

=head1 DESCRIPTION

Details on a data volume from another container in the same task
definition.

=head1 ATTRIBUTES


=head2 ReadOnly => Bool

  If this value is C<true>, the container has read-only access to the
volume. If this value is C<false>, then the container can write to the
volume. The default value is C<false>.


=head2 SourceContainer => Str

  The name of another container within the same task definition from
which to mount volumes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

