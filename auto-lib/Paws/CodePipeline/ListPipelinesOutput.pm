
package Paws::CodePipeline::ListPipelinesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Pipelines => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::PipelineSummary]', traits => ['NameInRequest'], request_name => 'pipelines' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListPipelinesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the amount of returned information is significantly large, an
identifier is also returned which can be used in a subsequent list
pipelines call to return the next set of pipelines in the list.


=head2 Pipelines => ArrayRef[L<Paws::CodePipeline::PipelineSummary>]

The list of pipelines.


=head2 _request_id => Str


=cut

1;