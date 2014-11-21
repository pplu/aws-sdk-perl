package Aws::EC2::UserIdGroupPair {
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has UserId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'userId');
}
1;
