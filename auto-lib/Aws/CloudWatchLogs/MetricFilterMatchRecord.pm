package Aws::CloudWatchLogs::MetricFilterMatchRecord {
  use Moose;
  with ('AWS::API::ResultParser');
  has eventMessage => (is => 'ro', isa => 'Str');
  has eventNumber => (is => 'ro', isa => 'Num');
  has extractedValues => (is => 'ro', isa => 'Aws::CloudWatchLogs::ExtractedValues');
}
1
