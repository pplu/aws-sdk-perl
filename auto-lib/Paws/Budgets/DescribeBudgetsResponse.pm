
package Paws::Budgets::DescribeBudgetsResponse;
  use Moose;
  has Budgets => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::Budget]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgetsResponse

=head1 ATTRIBUTES


=head2 Budgets => ArrayRef[L<Paws::Budgets::Budget>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;