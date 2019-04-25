package Paws::SecurityHub::Note;
  use Moose;
  has Text => (is => 'ro', isa => 'Str', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', required => 1);
  has UpdatedBy => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Note

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Note object:

  $service_obj->Method(Att1 => { Text => $value, ..., UpdatedBy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Note object:

  $result = $service_obj->Method(...);
  $result->Att1->Text

=head1 DESCRIPTION

A user-defined note added to a finding.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Text => Str

  The text of a note.


=head2 B<REQUIRED> UpdatedAt => Str

  The timestamp of when the note was updated.


=head2 B<REQUIRED> UpdatedBy => Str

  The principal that created a note.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

