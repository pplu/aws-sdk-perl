
package Paws::CostExplorer::GetReservationCoverageResponse;
  use Moose;
  has CoveragesByTime => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::CoverageByTime]', required => 1);
  has NextPageToken => (is => 'ro', isa => 'Str');
  has Total => (is => 'ro', isa => 'Paws::CostExplorer::Coverage');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetReservationCoverageResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CoveragesByTime => ArrayRef[L<Paws::CostExplorer::CoverageByTime>]

The amount of time that your reservations covered.


=head2 NextPageToken => Str

The token for the next set of retrievable results. AWS provides the
token when the response from a previous call has more results than the
maximum page size.


=head2 Total => L<Paws::CostExplorer::Coverage>

The total amount of instance usage that a reservation covered.


=head2 _request_id => Str


=cut

1;