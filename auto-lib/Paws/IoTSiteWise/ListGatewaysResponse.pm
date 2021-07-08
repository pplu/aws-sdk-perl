
package Paws::IoTSiteWise::ListGatewaysResponse;
  use Moose;
  has GatewaySummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::GatewaySummary]', traits => ['NameInRequest'], request_name => 'gatewaySummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListGatewaysResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewaySummaries => ArrayRef[L<Paws::IoTSiteWise::GatewaySummary>]

A list that summarizes each gateway.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

