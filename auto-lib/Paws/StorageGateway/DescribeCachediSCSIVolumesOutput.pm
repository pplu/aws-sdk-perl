
package Paws::StorageGateway::DescribeCachediSCSIVolumesOutput;
  use Moose;
  has CachediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::CachediSCSIVolume]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeCachediSCSIVolumesOutput

=head1 ATTRIBUTES


=head2 CachediSCSIVolumes => ArrayRef[L<Paws::StorageGateway::CachediSCSIVolume>]

An array of objects where each object contains metadata about one
cached volume.


=head2 _request_id => Str


=cut

1;