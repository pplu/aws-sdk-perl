
package Paws::Health::DescribeAffectedEntitiesForOrganizationResponse;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::Health::AffectedEntity]', traits => ['NameInRequest'], request_name => 'entities' );
  has FailedSet => (is => 'ro', isa => 'ArrayRef[Paws::Health::OrganizationAffectedEntitiesErrorItem]', traits => ['NameInRequest'], request_name => 'failedSet' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeAffectedEntitiesForOrganizationResponse

=head1 ATTRIBUTES


=head2 Entities => ArrayRef[L<Paws::Health::AffectedEntity>]

A JSON set of elements including the C<awsAccountId> and its
C<entityArn>, C<entityValue> and its C<entityArn>, C<lastUpdatedTime>,
and C<statusCode>.


=head2 FailedSet => ArrayRef[L<Paws::Health::OrganizationAffectedEntitiesErrorItem>]

A JSON set of elements of the failed response, including the
C<awsAccountId>, C<errorMessage>, C<errorName>, and C<eventArn>.


=head2 NextToken => Str

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next batch of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.


=head2 _request_id => Str


=cut

1;