# Generated from json/callresult_class.tt

package Paws::Comprehend::DetectSentimentResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw/Comprehend_SentimentScore/;
  has Sentiment => (is => 'ro', isa => Str);
  has SentimentScore => (is => 'ro', isa => Comprehend_SentimentScore);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SentimentScore' => {
                                     'type' => 'Comprehend_SentimentScore',
                                     'class' => 'Paws::Comprehend::SentimentScore'
                                   },
               'Sentiment' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectSentimentResponse

=head1 ATTRIBUTES


=head2 Sentiment => Str

The inferred sentiment that Amazon Comprehend has the highest level of
confidence in.

Valid values are: C<"POSITIVE">, C<"NEGATIVE">, C<"NEUTRAL">, C<"MIXED">
=head2 SentimentScore => Comprehend_SentimentScore

An object that lists the sentiments, and their corresponding confidence
levels.


=head2 _request_id => Str


=cut

1;