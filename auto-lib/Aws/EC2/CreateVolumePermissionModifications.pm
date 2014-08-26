package Aws::EC2::CreateVolumePermissionModifications {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Add => (is => 'ro', isa => 'ArrayRef[Aws::EC2::CreateVolumePermission]');
  has Remove => (is => 'ro', isa => 'ArrayRef[Aws::EC2::CreateVolumePermission]');
}
1
