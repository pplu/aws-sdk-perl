
package Paws::Kendra::ListDataSourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SummaryItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DataSourceSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListDataSourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Kendra returns this token that you
can use in the subsequent request to retrieve the next set of data
sources.


=head2 SummaryItems => ArrayRef[L<Paws::Kendra::DataSourceSummary>]

An array of summary information for one or more data sources.


=head2 _request_id => Str


=cut

1;