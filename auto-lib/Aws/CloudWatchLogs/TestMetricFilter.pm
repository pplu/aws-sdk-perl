
package Aws::CloudWatchLogs::TestMetricFilter {
  use Moose;
  has filterPattern => (is => 'ro', isa => 'Str', required => 1);
  has logEventMessages => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestMetricFilter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatchLogs::TestMetricFilterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;