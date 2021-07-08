
package Paws::IoTWireless::GetWirelessGatewayTaskDefinitionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AutoCreateTasks => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has Update => (is => 'ro', isa => 'Paws::IoTWireless::UpdateWirelessGatewayTaskCreate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetWirelessGatewayTaskDefinitionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name of the resource.


=head2 AutoCreateTasks => Bool

Whether to automatically create tasks using this task definition for
all gateways with the specified current version. If C<false>, the task
must me created by calling C<CreateWirelessGatewayTask>.


=head2 Name => Str

The name of the resource.


=head2 Update => L<Paws::IoTWireless::UpdateWirelessGatewayTaskCreate>

Information about the gateways to update.


=head2 _request_id => Str


=cut

