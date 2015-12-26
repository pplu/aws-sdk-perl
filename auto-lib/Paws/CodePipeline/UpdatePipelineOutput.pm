
package Paws::CodePipeline::UpdatePipelineOutput;
  use Moose;
  has Pipeline => (is => 'ro', isa => 'Paws::CodePipeline::PipelineDeclaration', traits => ['Unwrapped'], xmlname => 'pipeline' );


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::UpdatePipelineOutput

=head1 ATTRIBUTES


=head2 Pipeline => L<Paws::CodePipeline::PipelineDeclaration>

The structure of the updated pipeline.




=cut

1;