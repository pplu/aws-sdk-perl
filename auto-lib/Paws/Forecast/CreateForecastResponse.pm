
package Paws::Forecast::CreateForecastResponse;
  use Moose;
  has ForecastArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateForecastResponse

=head1 ATTRIBUTES


=head2 ForecastArn => Str

The Amazon Resource Name (ARN) of the forecast.


=head2 _request_id => Str


=cut

1;