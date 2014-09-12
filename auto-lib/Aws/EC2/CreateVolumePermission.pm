package Aws::EC2::CreateVolumePermission {
  use Moose;
  has Group => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');
}
1
