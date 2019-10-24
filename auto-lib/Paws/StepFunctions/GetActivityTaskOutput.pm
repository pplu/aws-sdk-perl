# Generated from json/callresult_class.tt

package Paws::StepFunctions::GetActivityTaskOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has Input => (is => 'ro', isa => Str);
  has TaskToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Input' => {
                            'type' => 'Str'
                          },
               'TaskToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'Input' => 'input',
                       'TaskToken' => 'taskToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::GetActivityTaskOutput

=head1 ATTRIBUTES


=head2 Input => Str

The string that contains the JSON input data for the task.


=head2 TaskToken => Str

A token that identifies the scheduled task. This token must be copied
and included in subsequent calls to SendTaskHeartbeat, SendTaskSuccess
or SendTaskFailure in order to report the progress or completion of the
task.


=head2 _request_id => Str


=cut

1;