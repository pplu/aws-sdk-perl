
package Paws::AutoScaling::DescribeMetricCollectionTypesAnswer {
  use Moose;
  with 'Paws::API::ResultParser';
  has Granularities => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::MetricGranularityType]');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::MetricCollectionType]');

}
1;