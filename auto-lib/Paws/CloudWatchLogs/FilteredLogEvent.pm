package Paws::CloudWatchLogs::FilteredLogEvent {
  use Moose;
  has eventId => (is => 'ro', isa => 'Str');
  has ingestionTime => (is => 'ro', isa => 'Num');
  has logStreamName => (is => 'ro', isa => 'Str');
  has message => (is => 'ro', isa => 'Str');
  has timestamp => (is => 'ro', isa => 'Num');
}
1;
