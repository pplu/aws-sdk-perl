package Aws::EC2::InstanceStateChange {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has CurrentState => (is => 'ro', isa => 'Aws::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'currentState');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has PreviousState => (is => 'ro', isa => 'Aws::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'previousState');
}
1
