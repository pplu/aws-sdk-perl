# Generated from json/callresult_class.tt

package Paws::Translate::TranslateTextResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Translate::Types qw/Translate_AppliedTerminology/;
  has AppliedTerminologies => (is => 'ro', isa => ArrayRef[Translate_AppliedTerminology]);
  has SourceLanguageCode => (is => 'ro', isa => Str, required => 1);
  has TargetLanguageCode => (is => 'ro', isa => Str, required => 1);
  has TranslatedText => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TargetLanguageCode' => {
                                         'type' => 'Str'
                                       },
               'TranslatedText' => {
                                     'type' => 'Str'
                                   },
               'SourceLanguageCode' => {
                                         'type' => 'Str'
                                       },
               'AppliedTerminologies' => {
                                           'type' => 'ArrayRef[Translate_AppliedTerminology]',
                                           'class' => 'Paws::Translate::AppliedTerminology'
                                         }
             },
  'IsRequired' => {
                    'TargetLanguageCode' => 1,
                    'TranslatedText' => 1,
                    'SourceLanguageCode' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Translate::TranslateTextResponse

=head1 ATTRIBUTES


=head2 AppliedTerminologies => ArrayRef[Translate_AppliedTerminology]

The names of the custom terminologies applied to the input text by
Amazon Translate for the translated text response.


=head2 B<REQUIRED> SourceLanguageCode => Str

The language code for the language of the source text.


=head2 B<REQUIRED> TargetLanguageCode => Str

The language code for the language of the target text.


=head2 B<REQUIRED> TranslatedText => Str

The the translated text. The maximum length of this text is 5kb.


=head2 _request_id => Str


=cut

1;