
package Paws::ServiceCatalog::ListPortfoliosForProductOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has PortfolioDetails => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::PortfolioDetail]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListPortfoliosForProductOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next page of results for this
operation. If there are no more pages, this value is null.


=head2 PortfolioDetails => ArrayRef[L<Paws::ServiceCatalog::PortfolioDetail>]

List of detailed portfolio information objects.


=head2 _request_id => Str


=cut

1;