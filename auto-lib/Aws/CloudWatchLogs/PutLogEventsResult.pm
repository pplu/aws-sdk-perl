
package Aws::CloudWatchLogs::PutLogEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has nextSequenceToken => (is => 'ro', isa => 'Str');

}
1;
