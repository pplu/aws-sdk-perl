
package Paws::IoTSiteWise::ListPortalsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PortalSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::PortalSummary]', traits => ['NameInRequest'], request_name => 'portalSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListPortalsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 PortalSummaries => ArrayRef[L<Paws::IoTSiteWise::PortalSummary>]

A list that summarizes each portal.


=head2 _request_id => Str


=cut

