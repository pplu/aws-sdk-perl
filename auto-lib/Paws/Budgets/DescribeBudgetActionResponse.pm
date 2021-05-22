
package Paws::Budgets::DescribeBudgetActionResponse;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has Action => (is => 'ro', isa => 'Paws::Budgets::Action', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgetActionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str




=head2 B<REQUIRED> Action => L<Paws::Budgets::Action>

A budget action resource.


=head2 B<REQUIRED> BudgetName => Str




=head2 _request_id => Str


=cut

1;