
package Paws::StorageGateway::ListGatewaysOutput;
  use Moose;
  has Gateways => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::GatewayInfo]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListGatewaysOutput

=head1 ATTRIBUTES


=head2 Gateways => ArrayRef[L<Paws::StorageGateway::GatewayInfo>]




=head2 Marker => Str




=head2 _request_id => Str


=cut

1;