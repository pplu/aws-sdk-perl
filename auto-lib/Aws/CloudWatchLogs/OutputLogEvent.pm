package Aws::CloudWatchLogs::OutputLogEvent {
  use Moose;
  has ingestionTime => (is => 'ro', isa => 'Num');
  has message => (is => 'ro', isa => 'Str');
  has timestamp => (is => 'ro', isa => 'Num');
}
1;
