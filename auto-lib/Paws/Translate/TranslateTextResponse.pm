
package Paws::Translate::TranslateTextResponse;
  use Moose;
  has SourceLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TargetLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TranslatedText => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::TranslateTextResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceLanguageCode => Str

The language code for the language of the input text.


=head2 B<REQUIRED> TargetLanguageCode => Str

The language code for the language of the translated text.


=head2 B<REQUIRED> TranslatedText => Str

The text translated into the target language.


=head2 _request_id => Str


=cut

1;