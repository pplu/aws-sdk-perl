# Generated from json/callresult_class.tt

package Paws::Glue::GetWorkflowResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_Workflow/;
  has Workflow => (is => 'ro', isa => Glue_Workflow);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Workflow' => {
                               'type' => 'Glue_Workflow',
                               'class' => 'Paws::Glue::Workflow'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetWorkflowResponse

=head1 ATTRIBUTES


=head2 Workflow => Glue_Workflow

The resource metadata for the workflow.


=head2 _request_id => Str


=cut

1;