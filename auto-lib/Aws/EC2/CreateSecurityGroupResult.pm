
package Aws::EC2::CreateSecurityGroupResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');

}
1;