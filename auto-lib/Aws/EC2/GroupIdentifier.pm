package Aws::EC2::GroupIdentifier {
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
}
1;
