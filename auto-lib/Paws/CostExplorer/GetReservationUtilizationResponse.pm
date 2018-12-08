
package Paws::CostExplorer::GetReservationUtilizationResponse;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has Total => (is => 'ro', isa => 'Paws::CostExplorer::ReservationAggregates');
  has UtilizationsByTime => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::UtilizationByTime]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetReservationUtilizationResponse

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The token for the next set of retrievable results. AWS provides the
token when the response from a previous call has more results than the
maximum page size.


=head2 Total => L<Paws::CostExplorer::ReservationAggregates>

The total amount of time that you used your RIs.


=head2 B<REQUIRED> UtilizationsByTime => ArrayRef[L<Paws::CostExplorer::UtilizationByTime>]

The amount of time that you used your RIs.


=head2 _request_id => Str


=cut

1;