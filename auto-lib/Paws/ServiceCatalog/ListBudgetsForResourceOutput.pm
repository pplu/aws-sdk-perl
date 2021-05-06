
package Paws::ServiceCatalog::ListBudgetsForResourceOutput;
  use Moose;
  has Budgets => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::BudgetDetail]');
  has NextPageToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListBudgetsForResourceOutput

=head1 ATTRIBUTES


=head2 Budgets => ArrayRef[L<Paws::ServiceCatalog::BudgetDetail>]

Information about the associated budgets.


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 _request_id => Str


=cut

1;