package Aws::EC2::CreateVolumePermissionModifications {
  use Moose;
  has Add => (is => 'ro', isa => 'ArrayRef[Aws::EC2::CreateVolumePermission]');
  has Remove => (is => 'ro', isa => 'ArrayRef[Aws::EC2::CreateVolumePermission]');
}
1
