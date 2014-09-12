package Aws::CloudWatchLogs::LogStream {
  use Moose;
  has arn => (is => 'ro', isa => 'Str');
  has creationTime => (is => 'ro', isa => 'Num');
  has firstEventTimestamp => (is => 'ro', isa => 'Num');
  has lastEventTimestamp => (is => 'ro', isa => 'Num');
  has lastIngestionTime => (is => 'ro', isa => 'Num');
  has logStreamName => (is => 'ro', isa => 'Str');
  has storedBytes => (is => 'ro', isa => 'Num');
  has uploadSequenceToken => (is => 'ro', isa => 'Str');
}
1
