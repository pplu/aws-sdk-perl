
package Paws::CloudWatchLogs::DescribeLogStreamsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has logStreams => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::LogStream]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;