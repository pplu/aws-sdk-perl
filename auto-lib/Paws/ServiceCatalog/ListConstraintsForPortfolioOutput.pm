
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

Information about the constraints.


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 _request_id => Str


=cut

1;