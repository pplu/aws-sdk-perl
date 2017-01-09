
package Paws::ServiceCatalog::ListConstraintsForPortfolioOutput;
  use Moose;
  has ConstraintDetails => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ConstraintDetail]');
  has NextPageToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListConstraintsForPortfolioOutput

=head1 ATTRIBUTES


=head2 ConstraintDetails => ArrayRef[L<Paws::ServiceCatalog::ConstraintDetail>]

List of detailed constraint information objects.


=head2 NextPageToken => Str

The page token to use to retrieve the next page of results for this
operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

1;