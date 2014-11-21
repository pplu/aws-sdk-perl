
package Aws::StorageGateway::DescribeStorediSCSIVolumesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has StorediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::StorediSCSIVolume]');

}
1;