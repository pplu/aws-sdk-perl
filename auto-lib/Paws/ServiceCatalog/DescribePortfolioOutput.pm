
package Paws::ServiceCatalog::DescribePortfolioOutput;
  use Moose;
  has Budgets => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::BudgetDetail]');
  has PortfolioDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::PortfolioDetail');
  has TagOptions => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::TagOptionDetail]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribePortfolioOutput

=head1 ATTRIBUTES


=head2 Budgets => ArrayRef[L<Paws::ServiceCatalog::BudgetDetail>]

Information about the associated budgets.


=head2 PortfolioDetail => L<Paws::ServiceCatalog::PortfolioDetail>

Information about the portfolio.


=head2 TagOptions => ArrayRef[L<Paws::ServiceCatalog::TagOptionDetail>]

Information about the TagOptions associated with the portfolio.


=head2 Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

Information about the tags associated with the portfolio.


=head2 _request_id => Str


=cut

1;