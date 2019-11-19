# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::CreateExportTaskResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchLogs::Types qw//;
  has TaskId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskId' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TaskId' => 'taskId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::CreateExportTaskResponse

=head1 ATTRIBUTES


=head2 TaskId => Str

The ID of the export task.


=head2 _request_id => Str


=cut

1;