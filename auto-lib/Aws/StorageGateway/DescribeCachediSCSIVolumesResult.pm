
package Aws::StorageGateway::DescribeCachediSCSIVolumesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CachediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::CachediSCSIVolumeInformation]');

}
1;
