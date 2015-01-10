
package Paws::StorageGateway::UpdateVTLDeviceTypeOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has VTLDeviceARN => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateVTLDeviceTypeOutput

=head1 ATTRIBUTES

=head2 VTLDeviceARN => Str

  

The Amazon Resource Name (ARN) of the medium changer you have selected.











=cut

1;