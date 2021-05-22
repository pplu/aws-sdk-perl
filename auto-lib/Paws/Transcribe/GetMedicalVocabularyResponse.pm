
package Paws::Transcribe::GetMedicalVocabularyResponse;
  use Moose;
  has DownloadUri => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has VocabularyName => (is => 'ro', isa => 'Str');
  has VocabularyState => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::GetMedicalVocabularyResponse

=head1 ATTRIBUTES


=head2 DownloadUri => Str

The location in Amazon S3 where the vocabulary is stored. Use this URI
to get the contents of the vocabulary. You can download your vocabulary
from the URI for a limited time.


=head2 FailureReason => Str

If the C<VocabularyState> is C<FAILED>, this field contains information
about why the job failed.


=head2 LanguageCode => Str

The valid language code for your vocabulary entries.

Valid values are: C<"af-ZA">, C<"ar-AE">, C<"ar-SA">, C<"cy-GB">, C<"da-DK">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fa-IR">, C<"fr-CA">, C<"fr-FR">, C<"ga-IE">, C<"gd-GB">, C<"he-IL">, C<"hi-IN">, C<"id-ID">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"ms-MY">, C<"nl-NL">, C<"pt-BR">, C<"pt-PT">, C<"ru-RU">, C<"ta-IN">, C<"te-IN">, C<"tr-TR">, C<"zh-CN">
=head2 LastModifiedTime => Str

The date and time that the vocabulary was last modified with a text
file different from the one that was previously used.


=head2 VocabularyName => Str

The name of the vocabulary returned by Amazon Transcribe Medical.


=head2 VocabularyState => Str

The processing state of the vocabulary. If the C<VocabularyState> is
C<READY> then you can use it in the C<StartMedicalTranscriptionJob>
operation.

Valid values are: C<"PENDING">, C<"READY">, C<"FAILED">
=head2 _request_id => Str


=cut

1;