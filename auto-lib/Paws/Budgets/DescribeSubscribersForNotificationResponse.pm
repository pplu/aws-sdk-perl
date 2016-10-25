
package Paws::Budgets::DescribeSubscribersForNotificationResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Subscribers => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::Subscriber]');


### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeSubscribersForNotificationResponse

=head1 ATTRIBUTES


=head2 NextToken => Str





=head2 Subscribers => ArrayRef[L<Paws::Budgets::Subscriber>]






=cut

1;