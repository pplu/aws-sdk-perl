
package Paws::ServiceCatalog::ListPortfoliosOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has PortfolioDetails => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::PortfolioDetail]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListPortfoliosOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 PortfolioDetails => ArrayRef[L<Paws::ServiceCatalog::PortfolioDetail>]

Information about the portfolios.


=head2 _request_id => Str


=cut

1;