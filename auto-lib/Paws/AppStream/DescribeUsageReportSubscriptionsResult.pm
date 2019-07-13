
package Paws::AppStream::DescribeUsageReportSubscriptionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UsageReportSubscriptions => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::UsageReportSubscription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeUsageReportSubscriptionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 UsageReportSubscriptions => ArrayRef[L<Paws::AppStream::UsageReportSubscription>]

Information about the usage report subscription.


=head2 _request_id => Str


=cut

1;