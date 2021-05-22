
package Paws::SageMaker::ListPipelineParametersForExecutionResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PipelineParameters => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Parameter]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListPipelineParametersForExecutionResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the result of the previous C<ListPipelineParametersForExecution>
request was truncated, the response includes a C<NextToken>. To
retrieve the next set of parameters, use the token in the next request.


=head2 PipelineParameters => ArrayRef[L<Paws::SageMaker::Parameter>]

Contains a list of pipeline parameters. This list can be empty.


=head2 _request_id => Str


=cut

1;