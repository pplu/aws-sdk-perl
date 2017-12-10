
package Paws::ServiceCatalog::CreatePortfolioOutput;
  use Moose;
  has PortfolioDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::PortfolioDetail');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreatePortfolioOutput

=head1 ATTRIBUTES


=head2 PortfolioDetail => L<Paws::ServiceCatalog::PortfolioDetail>

Information about the portfolio.


=head2 Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

Information about the tags associated with the portfolio.


=head2 _request_id => Str


=cut

1;