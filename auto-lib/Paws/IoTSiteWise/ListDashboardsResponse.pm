
package Paws::IoTSiteWise::ListDashboardsResponse;
  use Moose;
  has DashboardSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::DashboardSummary]', traits => ['NameInRequest'], request_name => 'dashboardSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListDashboardsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardSummaries => ArrayRef[L<Paws::IoTSiteWise::DashboardSummary>]

A list that summarizes each dashboard in the project.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

