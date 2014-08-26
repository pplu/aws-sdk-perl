package Aws::AutoScaling::MetricCollectionType {
  use Moose;
  with ('AWS::API::ResultParser');
  has Metric => (is => 'ro', isa => 'Str');
}
1
