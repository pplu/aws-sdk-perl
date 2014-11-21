package Aws::EC2::LaunchPermission {
  use Moose;
  has Group => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'group');
  has UserId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'userId');
}
1;
