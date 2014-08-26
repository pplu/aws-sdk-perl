package Aws::AutoScaling::AdjustmentType {
  use Moose;
  with ('AWS::API::ResultParser');
  has AdjustmentType => (is => 'ro', isa => 'Str');
}
1
