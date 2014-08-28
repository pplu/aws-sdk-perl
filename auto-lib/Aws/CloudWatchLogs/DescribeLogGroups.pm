
package Aws::CloudWatchLogs::DescribeLogGroups {
  use Moose;
  has limit => (is => 'ro', isa => 'Int');
  has logGroupNamePrefix => (is => 'ro', isa => 'Str');
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLogGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatchLogs::DescribeLogGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
