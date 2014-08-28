
package Aws::CloudWatch::PutMetricData {
  use Moose;
  has MetricData => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::MetricDatum]', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricData');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
