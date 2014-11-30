
package Paws::StorageGateway::StartGatewayOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::StartGatewayOutput

=head1 ATTRIBUTES

=head2 GatewayARN => Str

  


=cut

1;