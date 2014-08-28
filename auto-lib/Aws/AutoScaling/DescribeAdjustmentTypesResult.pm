
package Aws::AutoScaling::DescribeAdjustmentTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AdjustmentTypes => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::AdjustmentType]');

}
1;