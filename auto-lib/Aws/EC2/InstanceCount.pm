package Aws::EC2::InstanceCount {
  use Moose;
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'instanceCount');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
}
1
