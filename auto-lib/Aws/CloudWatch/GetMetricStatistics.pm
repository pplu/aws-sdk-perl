
package Aws::CloudWatch::GetMetricStatistics {
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Dimension]');
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Period => (is => 'ro', isa => 'Int', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has Statistics => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Unit => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetricStatistics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatch::GetMetricStatisticsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetMetricStatisticsResult');
}
1;
  