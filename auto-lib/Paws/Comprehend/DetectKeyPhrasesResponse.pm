# Generated from json/callresult_class.tt

package Paws::Comprehend::DetectKeyPhrasesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_KeyPhrase/;
  has KeyPhrases => (is => 'ro', isa => ArrayRef[Comprehend_KeyPhrase]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'KeyPhrases' => {
                                 'type' => 'ArrayRef[Comprehend_KeyPhrase]',
                                 'class' => 'Paws::Comprehend::KeyPhrase'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectKeyPhrasesResponse

=head1 ATTRIBUTES


=head2 KeyPhrases => ArrayRef[Comprehend_KeyPhrase]

A collection of key phrases that Amazon Comprehend identified in the
input text. For each key phrase, the response provides the text of the
key phrase, where the key phrase begins and ends, and the level of
confidence that Amazon Comprehend has in the accuracy of the detection.


=head2 _request_id => Str


=cut

1;