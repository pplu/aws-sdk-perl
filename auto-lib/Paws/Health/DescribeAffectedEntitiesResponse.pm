
package Paws::Health::DescribeAffectedEntitiesResponse;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::Health::AffectedEntity]', traits => ['NameInRequest'], request_name => 'entities' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeAffectedEntitiesResponse

=head1 ATTRIBUTES


=head2 Entities => ArrayRef[L<Paws::Health::AffectedEntity>]

The entities that match the filter criteria.


=head2 NextToken => Str

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next batch of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.


=head2 _request_id => Str


=cut

1;