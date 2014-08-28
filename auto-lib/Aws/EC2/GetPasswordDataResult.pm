
package Aws::EC2::GetPasswordDataResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has PasswordData => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'passwordData');
  has Timestamp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'timestamp');

}
1;