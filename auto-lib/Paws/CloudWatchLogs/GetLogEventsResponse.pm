
package Paws::CloudWatchLogs::GetLogEventsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has events => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::OutputLogEvent]');
  has nextBackwardToken => (is => 'ro', isa => 'Str');
  has nextForwardToken => (is => 'ro', isa => 'Str');

}
1;