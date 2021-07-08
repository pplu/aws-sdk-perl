
package Paws::AutoScaling::GetPredictiveScalingForecastAnswer;
  use Moose;
  has CapacityForecast => (is => 'ro', isa => 'Paws::AutoScaling::CapacityForecast', required => 1);
  has LoadForecast => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::LoadForecast]', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::GetPredictiveScalingForecastAnswer

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityForecast => L<Paws::AutoScaling::CapacityForecast>

The capacity forecast.


=head2 B<REQUIRED> LoadForecast => ArrayRef[L<Paws::AutoScaling::LoadForecast>]

The load forecast.


=head2 B<REQUIRED> UpdateTime => Str

The time the forecast was made.


=head2 _request_id => Str


=cut

