
package Paws::SageMaker::StartPipelineExecutionResponse;
  use Moose;
  has PipelineExecutionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::StartPipelineExecutionResponse

=head1 ATTRIBUTES


=head2 PipelineExecutionArn => Str

The Amazon Resource Name (ARN) of the pipeline execution.


=head2 _request_id => Str


=cut

1;