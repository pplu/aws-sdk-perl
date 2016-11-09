
package Paws::StorageGateway::UpdateVTLDeviceTypeOutput;
  use Moose;
  has VTLDeviceARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateVTLDeviceTypeOutput

=head1 ATTRIBUTES


=head2 VTLDeviceARN => Str

The Amazon Resource Name (ARN) of the medium changer you have selected.


=head2 _request_id => Str


=cut

1;