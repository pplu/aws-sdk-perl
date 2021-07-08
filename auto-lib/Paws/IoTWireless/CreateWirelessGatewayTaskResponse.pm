
package Paws::IoTWireless::CreateWirelessGatewayTaskResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');
  has WirelessGatewayTaskDefinitionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::CreateWirelessGatewayTaskResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status of the request.

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"FIRST_RETRY">, C<"SECOND_RETRY">, C<"COMPLETED">, C<"FAILED">
=head2 WirelessGatewayTaskDefinitionId => Str

The ID of the WirelessGatewayTaskDefinition.


=head2 _request_id => Str


=cut

