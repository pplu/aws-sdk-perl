
package Paws::StorageGateway::DescribeStorediSCSIVolumesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has StorediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::StorediSCSIVolume]');

}
1;