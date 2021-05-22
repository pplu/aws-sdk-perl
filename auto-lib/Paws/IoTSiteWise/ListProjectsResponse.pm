
package Paws::IoTSiteWise::ListProjectsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ProjectSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::ProjectSummary]', traits => ['NameInRequest'], request_name => 'projectSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListProjectsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 B<REQUIRED> ProjectSummaries => ArrayRef[L<Paws::IoTSiteWise::ProjectSummary>]

A list that summarizes each project in the portal.


=head2 _request_id => Str


=cut

