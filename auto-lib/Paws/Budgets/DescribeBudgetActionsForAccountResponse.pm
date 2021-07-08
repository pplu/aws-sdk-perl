
package Paws::Budgets::DescribeBudgetActionsForAccountResponse;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::Action]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgetActionsForAccountResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[L<Paws::Budgets::Action>]

A list of the budget action resources information.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;