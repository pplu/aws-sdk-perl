# Generated from json/callresult_class.tt

package Paws::Glue::GetWorkflowRunsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_WorkflowRun/;
  has NextToken => (is => 'ro', isa => Str);
  has Runs => (is => 'ro', isa => ArrayRef[Glue_WorkflowRun]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Runs' => {
                           'class' => 'Paws::Glue::WorkflowRun',
                           'type' => 'ArrayRef[Glue_WorkflowRun]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetWorkflowRunsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if not all requested workflow runs have been
returned.


=head2 Runs => ArrayRef[Glue_WorkflowRun]

A list of workflow run metadata objects.


=head2 _request_id => Str


=cut

1;