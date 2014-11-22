
package Paws::EC2::DescribeSecurityGroupsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SecurityGroup]', traits => ['Unwrapped'], xmlname => 'securityGroupInfo');

}
1;