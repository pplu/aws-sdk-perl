
package Paws::ServiceCatalog::DescribePortfolioSharesOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has PortfolioShareDetails => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::PortfolioShareDetail]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribePortfolioSharesOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 PortfolioShareDetails => ArrayRef[L<Paws::ServiceCatalog::PortfolioShareDetail>]

Summaries about each of the portfolio shares.


=head2 _request_id => Str


=cut

1;