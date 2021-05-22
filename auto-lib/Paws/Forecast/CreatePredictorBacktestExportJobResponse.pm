
package Paws::Forecast::CreatePredictorBacktestExportJobResponse;
  use Moose;
  has PredictorBacktestExportJobArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreatePredictorBacktestExportJobResponse

=head1 ATTRIBUTES


=head2 PredictorBacktestExportJobArn => Str

The Amazon Resource Name (ARN) of the predictor backtest export job
that you want to export.


=head2 _request_id => Str


=cut

1;