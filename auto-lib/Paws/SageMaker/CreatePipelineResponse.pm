
package Paws::SageMaker::CreatePipelineResponse;
  use Moose;
  has PipelineArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreatePipelineResponse

=head1 ATTRIBUTES


=head2 PipelineArn => Str

The Amazon Resource Name (ARN) of the created pipeline.


=head2 _request_id => Str


=cut

1;