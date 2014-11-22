
package Paws::StorageGateway::DescribeCachediSCSIVolumesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has CachediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::CachediSCSIVolume]');

}
1;