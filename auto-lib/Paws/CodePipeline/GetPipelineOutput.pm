
package Paws::CodePipeline::GetPipelineOutput;
  use Moose;
  has Pipeline => (is => 'ro', isa => 'Paws::CodePipeline::PipelineDeclaration', traits => ['NameInRequest'], request_name => 'pipeline' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetPipelineOutput

=head1 ATTRIBUTES


=head2 Pipeline => L<Paws::CodePipeline::PipelineDeclaration>




=head2 _request_id => Str


=cut

1;