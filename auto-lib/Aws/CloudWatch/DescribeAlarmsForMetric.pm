
package Aws::CloudWatch::DescribeAlarmsForMetric {
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Period => (is => 'ro', isa => 'Int');
  has Statistic => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsForMetric');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatch::DescribeAlarmsForMetricResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsForMetricResult');
}
1;
