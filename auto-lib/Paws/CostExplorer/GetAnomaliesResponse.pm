
package Paws::CostExplorer::GetAnomaliesResponse;
  use Moose;
  has Anomalies => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::Anomaly]', required => 1);
  has NextPageToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetAnomaliesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Anomalies => ArrayRef[L<Paws::CostExplorer::Anomaly>]

A list of cost anomalies.


=head2 NextPageToken => Str

The token to retrieve the next set of results. AWS provides the token
when the response from a previous call has more results than the
maximum page size.


=head2 _request_id => Str


=cut

1;