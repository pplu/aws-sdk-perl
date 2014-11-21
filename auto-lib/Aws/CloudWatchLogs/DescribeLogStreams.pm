
package Aws::CloudWatchLogs::DescribeLogStreams {
  use Moose;
  has limit => (is => 'ro', isa => 'Int');
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);
  has logStreamNamePrefix => (is => 'ro', isa => 'Str');
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLogStreams');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatchLogs::DescribeLogStreamsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;