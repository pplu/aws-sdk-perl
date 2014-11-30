
package Paws::StorageGateway::AddWorkingStorageOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::AddWorkingStorageOutput

=head1 ATTRIBUTES

=head2 GatewayARN => Str

  


=cut

1;