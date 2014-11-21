
package Aws::StorageGateway::DescribeCachediSCSIVolumesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has CachediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::CachediSCSIVolume]');

}
1;