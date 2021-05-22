
package Paws::IoTWireless::GetWirelessGatewayTaskResponse;
  use Moose;
  has LastUplinkReceivedAt => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TaskCreatedAt => (is => 'ro', isa => 'Str');
  has WirelessGatewayId => (is => 'ro', isa => 'Str');
  has WirelessGatewayTaskDefinitionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetWirelessGatewayTaskResponse

=head1 ATTRIBUTES


=head2 LastUplinkReceivedAt => Str

The date and time when the most recent uplink was received.


=head2 Status => Str

The status of the request.

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"FIRST_RETRY">, C<"SECOND_RETRY">, C<"COMPLETED">, C<"FAILED">
=head2 TaskCreatedAt => Str

The date and time when the task was created.


=head2 WirelessGatewayId => Str

The ID of the wireless gateway.


=head2 WirelessGatewayTaskDefinitionId => Str

The ID of the WirelessGatewayTask.


=head2 _request_id => Str


=cut

