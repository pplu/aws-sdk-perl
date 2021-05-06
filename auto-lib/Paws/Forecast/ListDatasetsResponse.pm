
package Paws::Forecast::ListDatasetsResponse;
  use Moose;
  has Datasets => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::DatasetSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListDatasetsResponse

=head1 ATTRIBUTES


=head2 Datasets => ArrayRef[L<Paws::Forecast::DatasetSummary>]

An array of objects that summarize each dataset's properties.


=head2 NextToken => Str

If the response is truncated, Amazon Forecast returns this token. To
retrieve the next set of results, use the token in the next request.


=head2 _request_id => Str


=cut

1;