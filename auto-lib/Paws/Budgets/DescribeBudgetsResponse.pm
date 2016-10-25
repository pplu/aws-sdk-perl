
package Paws::Budgets::DescribeBudgetsResponse;
  use Moose;
  has Budgets => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::Budget]');
  has NextToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgetsResponse

=head1 ATTRIBUTES


=head2 Budgets => ArrayRef[L<Paws::Budgets::Budget>]





=head2 NextToken => Str






=cut

1;