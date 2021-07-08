
package Paws::Budgets::ExecuteBudgetActionResponse;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has ActionId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has ExecutionType => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::ExecuteBudgetActionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str




=head2 B<REQUIRED> ActionId => Str

A system-generated universally unique identifier (UUID) for the action.


=head2 B<REQUIRED> BudgetName => Str




=head2 B<REQUIRED> ExecutionType => Str

The type of execution.

Valid values are: C<"APPROVE_BUDGET_ACTION">, C<"RETRY_BUDGET_ACTION">, C<"REVERSE_BUDGET_ACTION">, C<"RESET_BUDGET_ACTION">
=head2 _request_id => Str


=cut

1;