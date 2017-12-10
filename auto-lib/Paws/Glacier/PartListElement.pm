package Paws::Glacier::PartListElement;
  use Moose;
  has RangeInBytes => (is => 'ro', isa => 'Str');
  has SHA256TreeHash => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::PartListElement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::PartListElement object:

  $service_obj->Method(Att1 => { RangeInBytes => $value, ..., SHA256TreeHash => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::PartListElement object:

  $result = $service_obj->Method(...);
  $result->Att1->RangeInBytes

=head1 DESCRIPTION

A list of the part sizes of the multipart upload.

=head1 ATTRIBUTES


=head2 RangeInBytes => Str

  The byte range of a part, inclusive of the upper value of the range.


=head2 SHA256TreeHash => Str

  The SHA256 tree hash value that Amazon Glacier calculated for the part.
This field is never C<null>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

