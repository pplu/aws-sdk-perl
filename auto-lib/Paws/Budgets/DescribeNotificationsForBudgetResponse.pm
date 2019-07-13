
package Paws::Budgets::DescribeNotificationsForBudgetResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Notifications => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::Notification]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeNotificationsForBudgetResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token in the service response that indicates the next
set of results that you can retrieve.


=head2 Notifications => ArrayRef[L<Paws::Budgets::Notification>]

A list of notifications that are associated with a budget.


=head2 _request_id => Str


=cut

1;