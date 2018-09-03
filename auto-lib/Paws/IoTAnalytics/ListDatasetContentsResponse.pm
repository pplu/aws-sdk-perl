
package Paws::IoTAnalytics::ListDatasetContentsResponse;
  use Moose;
  has DatasetContentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatasetContentSummary]', traits => ['NameInRequest'], request_name => 'datasetContentSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ListDatasetContentsResponse

=head1 ATTRIBUTES


=head2 DatasetContentSummaries => ArrayRef[L<Paws::IoTAnalytics::DatasetContentSummary>]

Summary information about data set contents that have been created.


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 _request_id => Str


=cut

