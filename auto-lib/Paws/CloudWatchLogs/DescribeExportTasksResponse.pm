
package Paws::CloudWatchLogs::DescribeExportTasksResponse;
  use Moose;
  has exportTasks => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::ExportTask]');
  has nextToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeExportTasksResponse

=head1 ATTRIBUTES

=head2 exportTasks => ArrayRef[Paws::CloudWatchLogs::ExportTask]

  
=head2 nextToken => Str

  


=cut

1;