
package Paws::AutoScaling::DescribeTerminationPolicyTypes {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTerminationPolicyTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::DescribeTerminationPolicyTypesAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTerminationPolicyTypesResult');
}
1;