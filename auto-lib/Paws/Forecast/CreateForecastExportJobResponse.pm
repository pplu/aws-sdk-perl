
package Paws::Forecast::CreateForecastExportJobResponse;
  use Moose;
  has ForecastExportJobArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateForecastExportJobResponse

=head1 ATTRIBUTES


=head2 ForecastExportJobArn => Str

The Amazon Resource Name (ARN) of the export job.


=head2 _request_id => Str


=cut

1;