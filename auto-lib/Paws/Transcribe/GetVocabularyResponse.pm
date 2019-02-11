
package Paws::Transcribe::GetVocabularyResponse;
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

Paws::Transcribe::GetVocabularyResponse

=head1 ATTRIBUTES


=head2 DownloadUri => Str

The S3 location where the vocabulary is stored. Use this URI to get the
contents of the vocabulary. The URI is available for a limited time.


=head2 FailureReason => Str

If the C<VocabularyState> field is C<FAILED>, this field contains
information about why the job failed.


=head2 LanguageCode => Str

The language code of the vocabulary entries.

Valid values are: C<"en-US">, C<"es-US">, C<"en-AU">, C<"fr-CA">, C<"en-GB">, C<"de-DE">, C<"pt-BR">, C<"fr-FR">, C<"it-IT">
=head2 LastModifiedTime => Str

The date and time that the vocabulary was last modified.


=head2 VocabularyName => Str

The name of the vocabulary to return.


=head2 VocabularyState => Str

The processing state of the vocabulary.

Valid values are: C<"PENDING">, C<"READY">, C<"FAILED">
=head2 _request_id => Str


=cut

1;