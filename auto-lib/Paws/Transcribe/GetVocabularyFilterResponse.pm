
package Paws::Transcribe::GetVocabularyFilterResponse;
  use Moose;
  has DownloadUri => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has VocabularyFilterName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::GetVocabularyFilterResponse

=head1 ATTRIBUTES


=head2 DownloadUri => Str

The URI of the list of words in the vocabulary filter. You can use this
URI to get the list of words.


=head2 LanguageCode => Str

The language code of the words in the vocabulary filter.

Valid values are: C<"en-US">, C<"es-US">, C<"en-AU">, C<"fr-CA">, C<"en-GB">, C<"de-DE">, C<"pt-BR">, C<"fr-FR">, C<"it-IT">, C<"ko-KR">, C<"es-ES">, C<"en-IN">, C<"hi-IN">, C<"ar-SA">, C<"ru-RU">, C<"zh-CN">, C<"nl-NL">, C<"id-ID">, C<"ta-IN">, C<"fa-IR">, C<"en-IE">, C<"en-AB">, C<"en-WL">, C<"pt-PT">, C<"te-IN">, C<"tr-TR">, C<"de-CH">, C<"he-IL">, C<"ms-MY">, C<"ja-JP">, C<"ar-AE">
=head2 LastModifiedTime => Str

The date and time that the contents of the vocabulary filter were
updated.


=head2 VocabularyFilterName => Str

The name of the vocabulary filter.


=head2 _request_id => Str


=cut

1;