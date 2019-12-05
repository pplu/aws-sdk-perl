
package Paws::Quicksight::ListDashboardsResponse;
  use Moose;
  has DashboardSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::DashboardSummary]');
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListDashboardsResponse

=head1 ATTRIBUTES


=head2 DashboardSummaryList => ArrayRef[L<Paws::Quicksight::DashboardSummary>]

A structure that contains all of the dashboards shared with the user.
Provides basic information about the dashboards.


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

