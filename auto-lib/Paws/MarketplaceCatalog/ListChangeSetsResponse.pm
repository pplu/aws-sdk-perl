
package Paws::MarketplaceCatalog::ListChangeSetsResponse;
  use Moose;
  has ChangeSetSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceCatalog::ChangeSetSummaryListItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::ListChangeSetsResponse

=head1 ATTRIBUTES


=head2 ChangeSetSummaryList => ArrayRef[L<Paws::MarketplaceCatalog::ChangeSetSummaryListItem>]

Array of C<ChangeSetSummaryListItem> objects.


=head2 NextToken => Str

The value of the next token, if it exists. Null if there are no more
results.


=head2 _request_id => Str


=cut

