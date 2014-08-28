
package Aws::AutoScaling::DescribeTerminationPolicyTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TerminationPolicyTypes => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;