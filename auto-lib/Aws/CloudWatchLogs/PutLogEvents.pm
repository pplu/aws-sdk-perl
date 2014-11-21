
package Aws::CloudWatchLogs::PutLogEvents {
  use Moose;
  has logEvents => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::InputLogEvent]', required => 1);
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);
  has logStreamName => (is => 'ro', isa => 'Str', required => 1);
  has sequenceToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLogEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatchLogs::PutLogEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;