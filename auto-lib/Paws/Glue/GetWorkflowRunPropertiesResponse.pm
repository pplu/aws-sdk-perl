# Generated from json/callresult_class.tt

package Paws::Glue::GetWorkflowRunPropertiesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_WorkflowRunProperties/;
  has RunProperties => (is => 'ro', isa => Glue_WorkflowRunProperties);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RunProperties' => {
                                    'class' => 'Paws::Glue::WorkflowRunProperties',
                                    'type' => 'Glue_WorkflowRunProperties'
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

Paws::Glue::GetWorkflowRunPropertiesResponse

=head1 ATTRIBUTES


=head2 RunProperties => Glue_WorkflowRunProperties

The workflow run properties which were set during the specified run.


=head2 _request_id => Str


=cut

1;