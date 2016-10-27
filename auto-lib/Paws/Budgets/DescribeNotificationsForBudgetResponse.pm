
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





=head2 Notifications => ArrayRef[L<Paws::Budgets::Notification>]






=cut

1;