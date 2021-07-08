
package Paws::Transcribe::UpdateMedicalVocabularyResponse;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has VocabularyName => (is => 'ro', isa => 'Str');
  has VocabularyState => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::UpdateMedicalVocabularyResponse

=head1 ATTRIBUTES


=head2 LanguageCode => Str

The language code for the language of the text file used to update the
custom vocabulary. US English (en-US) is the only language supported in
Amazon Transcribe Medical.

Valid values are: C<"af-ZA">, C<"ar-AE">, C<"ar-SA">, C<"cy-GB">, C<"da-DK">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fa-IR">, C<"fr-CA">, C<"fr-FR">, C<"ga-IE">, C<"gd-GB">, C<"he-IL">, C<"hi-IN">, C<"id-ID">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"ms-MY">, C<"nl-NL">, C<"pt-BR">, C<"pt-PT">, C<"ru-RU">, C<"ta-IN">, C<"te-IN">, C<"tr-TR">, C<"zh-CN">
=head2 LastModifiedTime => Str

The date and time that the vocabulary was updated.


=head2 VocabularyName => Str

The name of the updated vocabulary.


=head2 VocabularyState => Str

The processing state of the update to the vocabulary. When the
C<VocabularyState> field is C<READY>, the vocabulary is ready to be
used in a C<StartMedicalTranscriptionJob> request.

Valid values are: C<"PENDING">, C<"READY">, C<"FAILED">
=head2 _request_id => Str


=cut

1;