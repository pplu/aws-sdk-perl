package Paws::CloudWatchLogs::ExportTaskExecutionInfo;
  use Moose;
  has completionTime => (is => 'ro', isa => 'Int');
  has creationTime => (is => 'ro', isa => 'Int');
1;
