
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

An array of GatewayInfo objects.


=head2 Marker => Str

Use the marker in your next request to fetch the next set of gateways
in the list. If there are no more gateways to list, this field does not
appear in the response.


=head2 _request_id => Str


=cut

1;