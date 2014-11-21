
package Aws::CloudWatchLogs::DescribeLogStreamsResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has logStreams => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::LogStream]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;