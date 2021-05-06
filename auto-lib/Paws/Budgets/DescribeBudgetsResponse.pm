
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

A list of budgets.


=head2 NextToken => Str

The pagination token in the service response that indicates the next
set of results that you can retrieve.


=head2 _request_id => Str


=cut

1;