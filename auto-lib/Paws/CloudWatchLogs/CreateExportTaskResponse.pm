
package Paws::CloudWatchLogs::CreateExportTaskResponse;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId' );


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::CreateExportTaskResponse

=head1 ATTRIBUTES


=head2 TaskId => Str

Id of the export task that got created.




=cut

1;