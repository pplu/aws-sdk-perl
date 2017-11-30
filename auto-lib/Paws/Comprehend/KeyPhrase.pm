package Paws::Comprehend::KeyPhrase;
  use Moose;
  has BeginOffset => (is => 'ro', isa => 'Int');
  has EndOffset => (is => 'ro', isa => 'Int');
  has Score => (is => 'ro', isa => 'Num');
  has Text => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::KeyPhrase

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::KeyPhrase object:

  $service_obj->Method(Att1 => { BeginOffset => $value, ..., Text => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::KeyPhrase object:

  $result = $service_obj->Method(...);
  $result->Att1->BeginOffset

=head1 DESCRIPTION

Describes a key noun phrase.

=head1 ATTRIBUTES


=head2 BeginOffset => Int

  A character offset in the input text that shows where the key phrase
begins (the first character is at position 0). The offset returns the
position of each UTF-8 code point in the string. A I<code point> is the
abstract character from a particular graphical representation. For
example, a multi-byte UTF-8 character maps to a single code point.


=head2 EndOffset => Int

  A character offset in the input text where the key phrase ends. The
offset returns the position of each UTF-8 code point in the string. A
C<code point> is the abstract character from a particular graphical
representation. For example, a multi-byte UTF-8 character maps to a
single code point.


=head2 Score => Num

  The level of confidence that Amazon Comprehend has in the accuracy of
the detection.


=head2 Text => Str

  The text of a key noun phrase.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

