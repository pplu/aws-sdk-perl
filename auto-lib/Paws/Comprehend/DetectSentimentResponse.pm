
package Paws::Comprehend::DetectSentimentResponse;
  use Moose;
  has Sentiment => (is => 'ro', isa => 'Str');
  has SentimentScore => (is => 'ro', isa => 'Paws::Comprehend::SentimentScore');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectSentimentResponse

=head1 ATTRIBUTES


=head2 Sentiment => Str

The inferred sentiment that Amazon Comprehend has the highest level of
confidence in.

Valid values are: C<"POSITIVE">, C<"NEGATIVE">, C<"NEUTRAL">, C<"MIXED">
=head2 SentimentScore => L<Paws::Comprehend::SentimentScore>

An object that lists the sentiments, and their corresponding confidence
levels.


=head2 _request_id => Str


=cut

1;