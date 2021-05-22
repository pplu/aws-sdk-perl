
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

Valid values are: C<"af-ZA">, C<"ar-AE">, C<"ar-SA">, C<"cy-GB">, C<"da-DK">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fa-IR">, C<"fr-CA">, C<"fr-FR">, C<"ga-IE">, C<"gd-GB">, C<"he-IL">, C<"hi-IN">, C<"id-ID">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"ms-MY">, C<"nl-NL">, C<"pt-BR">, C<"pt-PT">, C<"ru-RU">, C<"ta-IN">, C<"te-IN">, C<"tr-TR">, C<"zh-CN">
=head2 LastModifiedTime => Str

The date and time that the contents of the vocabulary filter were
updated.


=head2 VocabularyFilterName => Str

The name of the vocabulary filter.


=head2 _request_id => Str


=cut

1;