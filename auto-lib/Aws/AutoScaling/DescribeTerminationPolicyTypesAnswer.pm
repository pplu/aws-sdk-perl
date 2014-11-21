
package Aws::AutoScaling::DescribeTerminationPolicyTypesAnswer {
  use Moose;
  with 'AWS::API::ResultParser';
  has TerminationPolicyTypes => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;