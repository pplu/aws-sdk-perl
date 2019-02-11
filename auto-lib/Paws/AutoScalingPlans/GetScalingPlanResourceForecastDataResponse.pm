
package Paws::AutoScalingPlans::GetScalingPlanResourceForecastDataResponse;
  use Moose;
  has Datapoints => (is => 'ro', isa => 'ArrayRef[Paws::AutoScalingPlans::Datapoint]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::GetScalingPlanResourceForecastDataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Datapoints => ArrayRef[L<Paws::AutoScalingPlans::Datapoint>]

The data points to return.


=head2 _request_id => Str


=cut

1;