
package Paws::DataPipeline::PollForTaskOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has taskObject => (is => 'ro', isa => 'Paws::DataPipeline::TaskObject');

}

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::PollForTaskOutput

=head1 ATTRIBUTES

=head2 taskObject => Paws::DataPipeline::TaskObject

  

An instance of TaskObject. The returned object contains all the
information needed to complete the task that is being assigned to the
task runner. One of the fields returned in this object is taskId, which
contains an identifier for the task being assigned. The calling task
runner uses taskId in subsequent calls to ReportTaskProgress and
SetTaskStatus.











=cut

1;