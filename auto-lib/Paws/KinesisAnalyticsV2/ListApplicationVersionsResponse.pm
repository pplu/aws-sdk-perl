
package Paws::KinesisAnalyticsV2::ListApplicationVersionsResponse;
  use Moose;
  has ApplicationVersionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::ApplicationVersionSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ListApplicationVersionsResponse

=head1 ATTRIBUTES


=head2 ApplicationVersionSummaries => ArrayRef[L<Paws::KinesisAnalyticsV2::ApplicationVersionSummary>]

A list of the application versions and the associated configuration
summaries. The list includes application versions that were rolled
back.

To get the complete description of a specific application version,
invoke the DescribeApplicationVersion operation.


=head2 NextToken => Str

The pagination token for the next set of results, or C<null> if there
are no additional results. To retrieve the next set of items, pass this
token into a subsequent invocation of this operation. For more
information about pagination, see Using the AWS Command Line
Interface's Pagination Options
(https://docs.aws.amazon.com/cli/latest/userguide/pagination.html).


=head2 _request_id => Str


=cut

1;