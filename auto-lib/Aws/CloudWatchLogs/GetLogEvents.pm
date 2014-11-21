
package Aws::CloudWatchLogs::GetLogEvents {
  use Moose;
  has endTime => (is => 'ro', isa => 'Num');
  has limit => (is => 'ro', isa => 'Int');
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);
  has logStreamName => (is => 'ro', isa => 'Str', required => 1);
  has nextToken => (is => 'ro', isa => 'Str');
  has startFromHead => (is => 'ro', isa => 'Bool');
  has startTime => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLogEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatchLogs::GetLogEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;