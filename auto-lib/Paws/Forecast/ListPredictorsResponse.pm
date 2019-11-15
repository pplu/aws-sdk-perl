
package Paws::Forecast::ListPredictorsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Predictors => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::PredictorSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListPredictorsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Forecast returns this token. To
retrieve the next set of results, use the token in the next request.


=head2 Predictors => ArrayRef[L<Paws::Forecast::PredictorSummary>]

An array of objects that summarize each predictor's properties.


=head2 _request_id => Str


=cut

1;