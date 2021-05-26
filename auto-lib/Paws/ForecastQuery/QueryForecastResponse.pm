
package Paws::ForecastQuery::QueryForecastResponse;
  use Moose;
  has Forecast => (is => 'ro', isa => 'Paws::ForecastQuery::Forecast');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ForecastQuery::QueryForecastResponse

=head1 ATTRIBUTES


=head2 Forecast => L<Paws::ForecastQuery::Forecast>

The forecast.


=head2 _request_id => Str


=cut

1;