
package Paws::Budgets::DescribeBudgetActionHistoriesResponse;
  use Moose;
  has ActionHistories => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::ActionHistory]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgetActionHistoriesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionHistories => ArrayRef[L<Paws::Budgets::ActionHistory>]

The historical record of the budget action resource.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;