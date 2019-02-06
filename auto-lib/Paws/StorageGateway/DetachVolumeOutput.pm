
package Paws::StorageGateway::DetachVolumeOutput;
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DetachVolumeOutput

=head1 ATTRIBUTES


=head2 VolumeARN => Str

The Amazon Resource Name (ARN) of the volume that was detached.


=head2 _request_id => Str


=cut

1;