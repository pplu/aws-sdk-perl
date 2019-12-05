
package Paws::Quicksight::ListDashboardVersionsResponse;
  use Moose;
  has DashboardVersionSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::DashboardVersionSummary]');
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListDashboardVersionsResponse

=head1 ATTRIBUTES


=head2 DashboardVersionSummaryList => ArrayRef[L<Paws::Quicksight::DashboardVersionSummary>]

A structure that contains information about each version of the
dashboard.


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

