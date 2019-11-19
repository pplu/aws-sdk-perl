# Generated from json/callresult_class.tt

package Paws::Transcribe::UpdateVocabularyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Transcribe::Types qw//;
  has LanguageCode => (is => 'ro', isa => Str);
  has LastModifiedTime => (is => 'ro', isa => Str);
  has VocabularyName => (is => 'ro', isa => Str);
  has VocabularyState => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VocabularyState' => {
                                      'type' => 'Str'
                                    },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     },
               'LanguageCode' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VocabularyName' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::UpdateVocabularyResponse

=head1 ATTRIBUTES


=head2 LanguageCode => Str

The language code of the vocabulary entries.

Valid values are: C<"en-US">, C<"es-US">, C<"en-AU">, C<"fr-CA">, C<"en-GB">, C<"de-DE">, C<"pt-BR">, C<"fr-FR">, C<"it-IT">, C<"ko-KR">, C<"es-ES">, C<"en-IN">, C<"hi-IN">, C<"ar-SA">, C<"ru-RU">, C<"zh-CN">, C<"nl-NL">, C<"id-ID">, C<"ta-IN">, C<"fa-IR">, C<"en-IE">, C<"en-AB">, C<"en-WL">, C<"pt-PT">
=head2 LastModifiedTime => Str

The date and time that the vocabulary was updated.


=head2 VocabularyName => Str

The name of the vocabulary that was updated.


=head2 VocabularyState => Str

The processing state of the vocabulary. When the C<VocabularyState>
field contains C<READY> the vocabulary is ready to be used in a
C<StartTranscriptionJob> request.

Valid values are: C<"PENDING">, C<"READY">, C<"FAILED">
=head2 _request_id => Str


=cut

1;