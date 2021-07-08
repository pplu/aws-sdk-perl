
package Paws::Config::ListStoredQueriesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StoredQueryMetadata => (is => 'ro', isa => 'ArrayRef[Paws::Config::StoredQueryMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::ListStoredQueriesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the previous paginated request didn't return all of the remaining
results, the response object's C<NextToken> parameter value is set to a
token. To retrieve the next set of results, call this action again and
assign that token to the request object's C<NextToken> parameter. If
there are no remaining results, the previous response object's
C<NextToken> parameter is set to C<null>.


=head2 StoredQueryMetadata => ArrayRef[L<Paws::Config::StoredQueryMetadata>]

A list of C<StoredQueryMetadata> objects.


=head2 _request_id => Str


=cut

1;