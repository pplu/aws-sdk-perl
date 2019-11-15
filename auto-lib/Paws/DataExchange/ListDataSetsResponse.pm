
package Paws::DataExchange::ListDataSetsResponse;
  use Moose;
  has DataSets => (is => 'ro', isa => 'ArrayRef[Paws::DataExchange::DataSetEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ListDataSetsResponse

=head1 ATTRIBUTES


=head2 DataSets => ArrayRef[L<Paws::DataExchange::DataSetEntry>]

The data set objects listed by the request.


=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.


=head2 _request_id => Str


=cut

