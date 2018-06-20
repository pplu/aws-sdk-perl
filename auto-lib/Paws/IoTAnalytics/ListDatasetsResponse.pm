
package Paws::IoTAnalytics::ListDatasetsResponse;
  use Moose;
  has DatasetSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatasetSummary]', traits => ['NameInRequest'], request_name => 'datasetSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ListDatasetsResponse

=head1 ATTRIBUTES


=head2 DatasetSummaries => ArrayRef[L<Paws::IoTAnalytics::DatasetSummary>]

A list of "DatasetSummary" objects.


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 _request_id => Str


=cut

