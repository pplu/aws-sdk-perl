# Generated from json/callresult_class.tt

package Paws::CodePipeline::ListPipelineExecutionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_PipelineExecutionSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has PipelineExecutionSummaries => (is => 'ro', isa => ArrayRef[CodePipeline_PipelineExecutionSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'PipelineExecutionSummaries' => 'pipelineExecutionSummaries'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PipelineExecutionSummaries' => {
                                                 'type' => 'ArrayRef[CodePipeline_PipelineExecutionSummary]',
                                                 'class' => 'Paws::CodePipeline::PipelineExecutionSummary'
                                               },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListPipelineExecutionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used in the next C<ListPipelineExecutions> call. To
view all items in the list, continue to call this operation with each
subsequent token until no more nextToken values are returned.


=head2 PipelineExecutionSummaries => ArrayRef[CodePipeline_PipelineExecutionSummary]

A list of executions in the history of a pipeline.


=head2 _request_id => Str


=cut

1;