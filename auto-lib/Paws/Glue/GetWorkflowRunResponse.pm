# Generated from json/callresult_class.tt

package Paws::Glue::GetWorkflowRunResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_WorkflowRun/;
  has Run => (is => 'ro', isa => Glue_WorkflowRun);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Run' => {
                          'class' => 'Paws::Glue::WorkflowRun',
                          'type' => 'Glue_WorkflowRun'
                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetWorkflowRunResponse

=head1 ATTRIBUTES


=head2 Run => Glue_WorkflowRun

The requested workflow run metadata.


=head2 _request_id => Str


=cut

1;