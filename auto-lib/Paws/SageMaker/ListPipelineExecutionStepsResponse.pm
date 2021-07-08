
package Paws::SageMaker::ListPipelineExecutionStepsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PipelineExecutionSteps => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::PipelineExecutionStep]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListPipelineExecutionStepsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the result of the previous C<ListPipelineExecutionSteps> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of pipeline execution steps, use the token in the next request.


=head2 PipelineExecutionSteps => ArrayRef[L<Paws::SageMaker::PipelineExecutionStep>]

A list of C<PipeLineExecutionStep> objects. Each
C<PipeLineExecutionStep> consists of StepName, StartTime, EndTime,
StepStatus, and Metadata. Metadata is an object with properties for
each job that contains relevant information about the job created by
the step.


=head2 _request_id => Str


=cut

1;