package Paws::RedShift::UpdateTarget;
  use Moose;
  has DatabaseVersion => (is => 'ro', isa => 'Str');
  has MaintenanceTrackName => (is => 'ro', isa => 'Str');
  has SupportedOperations => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::SupportedOperation]', request_name => 'SupportedOperation', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::UpdateTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::UpdateTarget object:

  $service_obj->Method(Att1 => { DatabaseVersion => $value, ..., SupportedOperations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::UpdateTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseVersion

=head1 DESCRIPTION

A maintenance track that you can switch the current track to.

=head1 ATTRIBUTES


=head2 DatabaseVersion => Str

  The cluster version for the new maintenance track.


=head2 MaintenanceTrackName => Str

  The name of the new maintenance track.


=head2 SupportedOperations => ArrayRef[L<Paws::RedShift::SupportedOperation>]

  A list of operations supported by the maintenance track.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

