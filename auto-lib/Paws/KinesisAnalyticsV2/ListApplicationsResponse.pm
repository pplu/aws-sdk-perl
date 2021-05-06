
package Paws::KinesisAnalyticsV2::ListApplicationsResponse;
  use Moose;
  has ApplicationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::ApplicationSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationSummaries => ArrayRef[L<Paws::KinesisAnalyticsV2::ApplicationSummary>]

A list of C<ApplicationSummary> objects.


=head2 NextToken => Str

The pagination token for the next set of results, or C<null> if there
are no additional results. Pass this token into a subsequent command to
retrieve the next set of items For more information about pagination,
see Using the AWS Command Line Interface's Pagination Options
(https://docs.aws.amazon.com/cli/latest/userguide/pagination.html).


=head2 _request_id => Str


=cut

1;