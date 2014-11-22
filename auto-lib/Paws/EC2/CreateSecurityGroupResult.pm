
package Paws::EC2::CreateSecurityGroupResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');

}
1;