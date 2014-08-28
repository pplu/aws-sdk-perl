
package Aws::EC2::DescribeSecurityGroupsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::SecurityGroup]', traits => ['Unwrapped'], xmlname => 'securityGroupInfo');

}
1;