
package Aws::CloudWatchLogs::DescribeLogGroupsResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has logGroups => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::LogGroup]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;