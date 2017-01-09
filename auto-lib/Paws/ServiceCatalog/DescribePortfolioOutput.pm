
package Paws::ServiceCatalog::DescribePortfolioOutput;
  use Moose;
  has PortfolioDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::PortfolioDetail');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribePortfolioOutput

=head1 ATTRIBUTES


=head2 PortfolioDetail => L<Paws::ServiceCatalog::PortfolioDetail>

Detailed portfolio information.


=head2 Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

Tags associated with the portfolio.


=head2 _request_id => Str


=cut

1;