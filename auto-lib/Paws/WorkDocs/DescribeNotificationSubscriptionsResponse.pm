
package Paws::WorkDocs::DescribeNotificationSubscriptionsResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::Subscription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeNotificationSubscriptionsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 Subscriptions => ArrayRef[L<Paws::WorkDocs::Subscription>]

The subscriptions.


=head2 _request_id => Str


=cut

