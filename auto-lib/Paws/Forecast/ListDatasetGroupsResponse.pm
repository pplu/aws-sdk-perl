
package Paws::Forecast::ListDatasetGroupsResponse;
  use Moose;
  has DatasetGroups => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::DatasetGroupSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListDatasetGroupsResponse

=head1 ATTRIBUTES


=head2 DatasetGroups => ArrayRef[L<Paws::Forecast::DatasetGroupSummary>]

An array of objects that summarize each dataset group's properties.


=head2 NextToken => Str

If the response is truncated, Amazon Forecast returns this token. To
retrieve the next set of results, use the token in the next request.


=head2 _request_id => Str


=cut

1;