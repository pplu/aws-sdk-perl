
package Paws::IoTWireless::ListWirelessGatewayTaskDefinitionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TaskDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::UpdateWirelessGatewayTaskEntry]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListWirelessGatewayTaskDefinitionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next set of results, or B<null> if there
are no additional results.


=head2 TaskDefinitions => ArrayRef[L<Paws::IoTWireless::UpdateWirelessGatewayTaskEntry>]

The list of task definitions.


=head2 _request_id => Str


=cut

