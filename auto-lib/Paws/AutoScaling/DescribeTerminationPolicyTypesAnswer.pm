
package Paws::AutoScaling::DescribeTerminationPolicyTypesAnswer {
  use Moose;
  with 'Paws::API::ResultParser';
  has TerminationPolicyTypes => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;