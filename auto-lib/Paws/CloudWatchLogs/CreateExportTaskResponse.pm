
package Paws::CloudWatchLogs::CreateExportTaskResponse;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::CreateExportTaskResponse

=head1 ATTRIBUTES


=head2 TaskId => Str

The ID of the export task.


=head2 _request_id => Str


=cut

1;