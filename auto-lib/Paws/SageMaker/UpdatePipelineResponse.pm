
package Paws::SageMaker::UpdatePipelineResponse;
  use Moose;
  has PipelineArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdatePipelineResponse

=head1 ATTRIBUTES


=head2 PipelineArn => Str

The Amazon Resource Name (ARN) of the updated pipeline.


=head2 _request_id => Str


=cut

1;