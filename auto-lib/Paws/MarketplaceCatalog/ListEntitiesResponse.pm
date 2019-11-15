
package Paws::MarketplaceCatalog::ListEntitiesResponse;
  use Moose;
  has EntitySummaryList => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceCatalog::EntitySummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::ListEntitiesResponse

=head1 ATTRIBUTES


=head2 EntitySummaryList => ArrayRef[L<Paws::MarketplaceCatalog::EntitySummary>]

Array of C<EntitySummary> object.


=head2 NextToken => Str

The value of the next token if it exists. Null if there is no more
result.


=head2 _request_id => Str


=cut

