
package Paws::CodePipeline::PutActionRevisionOutput;
  use Moose;
  has NewRevision => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'newRevision' );
  has PipelineExecutionId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'pipelineExecutionId' );


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PutActionRevisionOutput

=head1 ATTRIBUTES

=head2 NewRevision => Bool

  The new revision number or ID for the revision after the action
completes.
=head2 PipelineExecutionId => Str

  The ID of the current workflow state of the pipeline.


=cut

1;