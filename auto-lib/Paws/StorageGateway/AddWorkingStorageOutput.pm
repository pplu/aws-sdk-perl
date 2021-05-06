
package Paws::StorageGateway::AddWorkingStorageOutput;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::AddWorkingStorageOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str




=head2 _request_id => Str


=cut

1;