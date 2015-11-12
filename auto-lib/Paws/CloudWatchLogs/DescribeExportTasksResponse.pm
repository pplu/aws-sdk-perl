
package Paws::CloudWatchLogs::DescribeExportTasksResponse;
  use Moose;
  has ExportTasks => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::ExportTask]', traits => ['Unwrapped'], xmlname => 'exportTasks' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeExportTasksResponse

=head1 ATTRIBUTES


=head2 ExportTasks => ArrayRef[L<Paws::CloudWatchLogs::ExportTask>]

  

=head2 NextToken => Str

  


=cut

1;