
package Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SubscriptionFilters => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::SubscriptionFilter]', traits => ['NameInRequest'], request_name => 'subscriptionFilters' );


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str





=head2 SubscriptionFilters => ArrayRef[L<Paws::CloudWatchLogs::SubscriptionFilter>]






=cut

1;