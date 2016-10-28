
package Paws::Budgets::DescribeBudgetResponse;
  use Moose;
  has Budget => (is => 'ro', isa => 'Paws::Budgets::Budget');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgetResponse

=head1 ATTRIBUTES


=head2 Budget => L<Paws::Budgets::Budget>






=cut

1;