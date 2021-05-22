
package Paws::IoTWireless::ListWirelessGatewaysResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WirelessGatewayList => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::WirelessGatewayStatistics]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListWirelessGatewaysResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next set of results, or B<null> if there
are no additional results.


=head2 WirelessGatewayList => ArrayRef[L<Paws::IoTWireless::WirelessGatewayStatistics>]

The ID of the wireless gateway.


=head2 _request_id => Str


=cut

