package Paws::Comprehend::SyntaxToken;
  use Moose;
  has BeginOffset => (is => 'ro', isa => 'Int');
  has EndOffset => (is => 'ro', isa => 'Int');
  has PartOfSpeech => (is => 'ro', isa => 'Paws::Comprehend::PartOfSpeechTag');
  has Text => (is => 'ro', isa => 'Str');
  has TokenId => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::SyntaxToken

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::SyntaxToken object:

  $service_obj->Method(Att1 => { BeginOffset => $value, ..., TokenId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::SyntaxToken object:

  $result = $service_obj->Method(...);
  $result->Att1->BeginOffset

=head1 DESCRIPTION

Represents a work in the input text that was recognized and assigned a
part of speech. There is one syntax token record for each word in the
source text.

=head1 ATTRIBUTES


=head2 BeginOffset => Int

  The zero-based offset from the beginning of the source text to the
first character in the word.


=head2 EndOffset => Int

  The zero-based offset from the beginning of the source text to the last
character in the word.


=head2 PartOfSpeech => L<Paws::Comprehend::PartOfSpeechTag>

  Provides the part of speech label and the confidence level that Amazon
Comprehend has that the part of speech was correctly identified. For
more information, see how-syntax.


=head2 Text => Str

  The word that was recognized in the source text.


=head2 TokenId => Int

  A unique identifier for a token.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

