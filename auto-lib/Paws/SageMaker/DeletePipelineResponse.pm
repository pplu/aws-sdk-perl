
package Paws::SageMaker::DeletePipelineResponse;
  use Moose;
  has PipelineArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeletePipelineResponse

=head1 ATTRIBUTES


=head2 PipelineArn => Str

The Amazon Resource Name (ARN) of the pipeline to delete.


=head2 _request_id => Str


=cut

1;