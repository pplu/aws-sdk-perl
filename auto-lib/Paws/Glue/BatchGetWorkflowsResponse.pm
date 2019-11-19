# Generated from json/callresult_class.tt

package Paws::Glue::BatchGetWorkflowsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Glue::Types qw/Glue_Workflow/;
  has MissingWorkflows => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Workflows => (is => 'ro', isa => ArrayRef[Glue_Workflow]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Workflows' => {
                                'class' => 'Paws::Glue::Workflow',
                                'type' => 'ArrayRef[Glue_Workflow]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MissingWorkflows' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetWorkflowsResponse

=head1 ATTRIBUTES


=head2 MissingWorkflows => ArrayRef[Str|Undef]

A list of names of workflows not found.


=head2 Workflows => ArrayRef[Glue_Workflow]

A list of workflow resource metadata.


=head2 _request_id => Str


=cut

1;