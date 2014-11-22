
package Paws::AutoScaling::DescribeAdjustmentTypesAnswer {
  use Moose;
  with 'Paws::API::ResultParser';
  has AdjustmentTypes => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::AdjustmentType]');

}
1;