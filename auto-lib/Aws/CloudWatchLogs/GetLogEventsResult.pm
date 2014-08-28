
package Aws::CloudWatchLogs::GetLogEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has events => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::OutputLogEvent]');
  has nextBackwardToken => (is => 'ro', isa => 'Str');
  has nextForwardToken => (is => 'ro', isa => 'Str');

}
1;
