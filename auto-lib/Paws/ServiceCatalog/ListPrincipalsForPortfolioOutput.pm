
package Paws::ServiceCatalog::ListPrincipalsForPortfolioOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has Principals => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Principal]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListPrincipalsForPortfolioOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 Principals => ArrayRef[L<Paws::ServiceCatalog::Principal>]

The IAM principals (users or roles) associated with the portfolio.


=head2 _request_id => Str


=cut

1;