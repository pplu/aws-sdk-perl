
package Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has SubscriptionFilters => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::SubscriptionFilter]', traits => ['Unwrapped'], xmlname => 'subscriptionFilters' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str





=head2 SubscriptionFilters => ArrayRef[L<Paws::CloudWatchLogs::SubscriptionFilter>]






=cut

1;