package Paws::SES::Content;
  use Moose;
  has Charset => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::Content

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::Content object:

  $service_obj->Method(Att1 => { Charset => $value, ..., Data => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::Content object:

  $result = $service_obj->Method(...);
  $result->Att1->Charset

=head1 DESCRIPTION

Represents textual data, plus an optional character set specification.

By default, the text must be 7-bit ASCII, due to the constraints of the
SMTP protocol. If the text must contain any other characters, then you
must also specify a character set. Examples include UTF-8, ISO-8859-1,
and Shift_JIS.

=head1 ATTRIBUTES


=head2 Charset => Str

  The character set of the content.


=head2 B<REQUIRED> Data => Str

  The textual data of the content.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

