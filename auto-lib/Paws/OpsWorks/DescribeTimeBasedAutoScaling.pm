
package Paws::OpsWorks::DescribeTimeBasedAutoScaling {
  use Moose;
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTimeBasedAutoScaling');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeTimeBasedAutoScalingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;