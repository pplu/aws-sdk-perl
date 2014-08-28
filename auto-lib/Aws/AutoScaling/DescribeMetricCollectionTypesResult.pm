
package Aws::AutoScaling::DescribeMetricCollectionTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Granularities => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::MetricGranularityType]');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::MetricCollectionType]');

}
1;