
package Paws::CodePipeline::GetPipelineOutput;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::CodePipeline::PipelineMetadata', traits => ['NameInRequest'], request_name => 'metadata' );
  has Pipeline => (is => 'ro', isa => 'Paws::CodePipeline::PipelineDeclaration', traits => ['NameInRequest'], request_name => 'pipeline' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetPipelineOutput

=head1 ATTRIBUTES


=head2 Metadata => L<Paws::CodePipeline::PipelineMetadata>

Represents the pipeline metadata information returned as part of the
output of a GetPipeline action.


=head2 Pipeline => L<Paws::CodePipeline::PipelineDeclaration>

Represents the structure of actions and stages to be performed in the
pipeline.


=head2 _request_id => Str


=cut

1;