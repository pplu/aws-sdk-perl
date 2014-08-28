
package Aws::AutoScaling::DescribeAdjustmentTypes {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAdjustmentTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeAdjustmentTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAdjustmentTypesResult');
}
1;
  