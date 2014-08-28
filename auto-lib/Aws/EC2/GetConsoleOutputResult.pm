
package Aws::EC2::GetConsoleOutputResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Output => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'output');
  has Timestamp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'timestamp');

}
1;