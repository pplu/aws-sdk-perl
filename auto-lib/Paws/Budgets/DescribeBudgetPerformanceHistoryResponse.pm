
package Paws::Budgets::DescribeBudgetPerformanceHistoryResponse;
  use Moose;
  has BudgetPerformanceHistory => (is => 'ro', isa => 'Paws::Budgets::BudgetPerformanceHistory');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgetPerformanceHistoryResponse

=head1 ATTRIBUTES


=head2 BudgetPerformanceHistory => L<Paws::Budgets::BudgetPerformanceHistory>

The history of how often the budget has gone into an C<ALARM> state.

For C<DAILY> budgets, the history saves the state of the budget for the
last 60 days. For C<MONTHLY> budgets, the history saves the state of
the budget for the current month plus the last 12 months. For
C<QUARTERLY> budgets, the history saves the state of the budget for the
last four quarters.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;