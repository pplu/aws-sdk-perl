
package Aws::AutoScaling::DescribeScalingProcessTypes {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingProcessTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::ProcessesType');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScalingProcessTypesResult');
}
1;