# Generated from json/callresult_class.tt

package Paws::DataPipeline::PollForTaskOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataPipeline::Types qw/DataPipeline_TaskObject/;
  has TaskObject => (is => 'ro', isa => DataPipeline_TaskObject);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskObject' => {
                                 'class' => 'Paws::DataPipeline::TaskObject',
                                 'type' => 'DataPipeline_TaskObject'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TaskObject' => 'taskObject'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::PollForTaskOutput

=head1 ATTRIBUTES


=head2 TaskObject => DataPipeline_TaskObject

The information needed to complete the task that is being assigned to
the task runner. One of the fields returned in this object is
C<taskId>, which contains an identifier for the task being assigned.
The calling task runner uses C<taskId> in subsequent calls to
ReportTaskProgress and SetTaskStatus.


=head2 _request_id => Str


=cut

1;