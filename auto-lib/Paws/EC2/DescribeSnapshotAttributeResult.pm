
package Paws::EC2::DescribeSnapshotAttributeResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has CreateVolumePermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CreateVolumePermission]', traits => ['Unwrapped'], xmlname => 'createVolumePermission');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');

}
1;