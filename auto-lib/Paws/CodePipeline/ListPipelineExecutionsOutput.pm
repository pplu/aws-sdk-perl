
package Paws::CodePipeline::ListPipelineExecutionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PipelineExecutionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::PipelineExecutionSummary]', traits => ['NameInRequest'], request_name => 'pipelineExecutionSummaries' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListPipelineExecutionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used in the next ListPipelineExecutions call. To
view all items in the list, continue to call this operation with each
subsequent token until no more nextToken values are returned.


=head2 PipelineExecutionSummaries => ArrayRef[L<Paws::CodePipeline::PipelineExecutionSummary>]

A list of executions in the history of a pipeline.


=head2 _request_id => Str


=cut

1;