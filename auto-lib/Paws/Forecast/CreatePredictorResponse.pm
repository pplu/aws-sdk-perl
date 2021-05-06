
package Paws::Forecast::CreatePredictorResponse;
  use Moose;
  has PredictorArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreatePredictorResponse

=head1 ATTRIBUTES


=head2 PredictorArn => Str

The Amazon Resource Name (ARN) of the predictor.


=head2 _request_id => Str


=cut

1;