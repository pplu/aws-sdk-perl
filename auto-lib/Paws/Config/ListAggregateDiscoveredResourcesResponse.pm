
package Paws::Config::ListAggregateDiscoveredResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::Config::AggregateResourceIdentifier]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::ListAggregateDiscoveredResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 ResourceIdentifiers => ArrayRef[L<Paws::Config::AggregateResourceIdentifier>]

Returns a list of C<ResourceIdentifiers> objects.


=head2 _request_id => Str


=cut

1;