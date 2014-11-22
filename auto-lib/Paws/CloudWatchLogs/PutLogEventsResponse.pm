
package Paws::CloudWatchLogs::PutLogEventsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has nextSequenceToken => (is => 'ro', isa => 'Str');

}
1;