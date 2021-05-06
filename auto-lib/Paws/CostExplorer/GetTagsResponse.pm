
package Paws::CostExplorer::GetTagsResponse;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ReturnSize => (is => 'ro', isa => 'Int', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TotalSize => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetTagsResponse

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The token for the next set of retrievable results. AWS provides the
token when the response from a previous call has more results than the
maximum page size.


=head2 B<REQUIRED> ReturnSize => Int

The number of query results that AWS returns at a time.


=head2 B<REQUIRED> Tags => ArrayRef[Str|Undef]

The tags that match your request.


=head2 B<REQUIRED> TotalSize => Int

The total number of query results.


=head2 _request_id => Str


=cut

1;