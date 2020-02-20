
package Paws::Transcribe::UpdateVocabularyFilterResponse;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has VocabularyFilterName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::UpdateVocabularyFilterResponse

=head1 ATTRIBUTES


=head2 LanguageCode => Str

The language code of the words in the vocabulary filter.

Valid values are: C<"en-US">, C<"es-US">, C<"en-AU">, C<"fr-CA">, C<"en-GB">, C<"de-DE">, C<"pt-BR">, C<"fr-FR">, C<"it-IT">, C<"ko-KR">, C<"es-ES">, C<"en-IN">, C<"hi-IN">, C<"ar-SA">, C<"ru-RU">, C<"zh-CN">, C<"nl-NL">, C<"id-ID">, C<"ta-IN">, C<"fa-IR">, C<"en-IE">, C<"en-AB">, C<"en-WL">, C<"pt-PT">, C<"te-IN">, C<"tr-TR">, C<"de-CH">, C<"he-IL">, C<"ms-MY">, C<"ja-JP">, C<"ar-AE">
=head2 LastModifiedTime => Str

The date and time that the vocabulary filter was updated.


=head2 VocabularyFilterName => Str

The name of the updated vocabulary filter.


=head2 _request_id => Str


=cut

1;