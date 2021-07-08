
package Paws::Budgets::UpdateBudgetActionResponse;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has NewAction => (is => 'ro', isa => 'Paws::Budgets::Action', required => 1);
  has OldAction => (is => 'ro', isa => 'Paws::Budgets::Action', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::UpdateBudgetActionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str




=head2 B<REQUIRED> BudgetName => Str




=head2 B<REQUIRED> NewAction => L<Paws::Budgets::Action>

The updated action resource information.


=head2 B<REQUIRED> OldAction => L<Paws::Budgets::Action>

The previous action resource information.


=head2 _request_id => Str


=cut

1;