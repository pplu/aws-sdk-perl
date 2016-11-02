
package Paws::StorageGateway::StartGatewayOutput;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::StartGatewayOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str




=head2 _request_id => Str


=cut

1;