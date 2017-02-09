
package Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SubscriptionFilters => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::SubscriptionFilter]', traits => ['NameInRequest'], request_name => 'subscriptionFilters' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 SubscriptionFilters => ArrayRef[L<Paws::CloudWatchLogs::SubscriptionFilter>]

The subscription filters.


=head2 _request_id => Str


=cut

1;