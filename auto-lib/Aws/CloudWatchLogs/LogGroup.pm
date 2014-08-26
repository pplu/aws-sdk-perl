package Aws::CloudWatchLogs::LogGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has arn => (is => 'ro', isa => 'Str');
  has creationTime => (is => 'ro', isa => 'Num');
  has logGroupName => (is => 'ro', isa => 'Str');
  has metricFilterCount => (is => 'ro', isa => 'Int');
  has retentionInDays => (is => 'ro', isa => 'Int');
  has storedBytes => (is => 'ro', isa => 'Num');
}
1
