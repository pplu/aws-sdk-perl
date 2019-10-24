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
               'SourceLanguageCode' => {
                                         'type' => 'Str'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AppliedTerminologies' => {
                                           'class' => 'Paws::Translate::AppliedTerminology',
                                           'type' => 'ArrayRef[Translate_AppliedTerminology]'
                                         },
               'TargetLanguageCode' => {
                                         'type' => 'Str'
                                       },
               'TranslatedText' => {
                                     'type' => 'Str'
                                   }
             },
  'IsRequired' => {
                    'SourceLanguageCode' => 1,
                    'TargetLanguageCode' => 1,
                    'TranslatedText' => 1
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