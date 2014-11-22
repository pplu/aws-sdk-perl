
package Paws::CloudWatchLogs::PutMetricFilter {
  use Moose;
  has filterName => (is => 'ro', isa => 'Str', required => 1);
  has filterPattern => (is => 'ro', isa => 'Str', required => 1);
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);
  has metricTransformations => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::MetricTransformation]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricFilter');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;