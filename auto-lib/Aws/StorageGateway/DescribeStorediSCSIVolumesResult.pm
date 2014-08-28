
package Aws::StorageGateway::DescribeStorediSCSIVolumesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StorediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::StorediSCSIVolumeInformation]');

}
1;
