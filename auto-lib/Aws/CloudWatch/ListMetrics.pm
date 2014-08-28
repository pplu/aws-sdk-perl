
package Aws::CloudWatch::ListMetrics {
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::DimensionFilter]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMetrics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatch::ListMetricsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListMetricsResult');
}
1;
  