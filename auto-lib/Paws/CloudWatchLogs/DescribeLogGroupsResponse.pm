
package Paws::CloudWatchLogs::DescribeLogGroupsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has logGroups => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::LogGroup]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;