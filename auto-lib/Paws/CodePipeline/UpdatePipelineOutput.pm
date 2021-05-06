
package Paws::CodePipeline::UpdatePipelineOutput;
  use Moose;
  has Pipeline => (is => 'ro', isa => 'Paws::CodePipeline::PipelineDeclaration', traits => ['NameInRequest'], request_name => 'pipeline' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::UpdatePipelineOutput

=head1 ATTRIBUTES


=head2 Pipeline => L<Paws::CodePipeline::PipelineDeclaration>

The structure of the updated pipeline.


=head2 _request_id => Str


=cut

1;