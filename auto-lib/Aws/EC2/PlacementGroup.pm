package Aws::EC2::PlacementGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Strategy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'strategy');
}
1
