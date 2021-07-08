
package Paws::SageMaker::DescribePipelineDefinitionForExecutionResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has PipelineDefinition => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribePipelineDefinitionForExecutionResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time when the pipeline was created.


=head2 PipelineDefinition => Str

The JSON pipeline definition.


=head2 _request_id => Str


=cut

1;