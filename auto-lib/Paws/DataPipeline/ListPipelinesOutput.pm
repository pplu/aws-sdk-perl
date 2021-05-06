
package Paws::DataPipeline::ListPipelinesOutput;
  use Moose;
  has HasMoreResults => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'hasMoreResults' );
  has Marker => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'marker' );
  has PipelineIdList => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineIdName]', traits => ['NameInRequest'], request_name => 'pipelineIdList' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ListPipelinesOutput

=head1 ATTRIBUTES


=head2 HasMoreResults => Bool

Indicates whether there are more results that can be obtained by a
subsequent call.


=head2 Marker => Str

The starting point for the next page of results. To view the next page
of results, call C<ListPipelinesOutput> again with this marker value.
If the value is null, there are no more results.


=head2 B<REQUIRED> PipelineIdList => ArrayRef[L<Paws::DataPipeline::PipelineIdName>]

The pipeline identifiers. If you require additional information about
the pipelines, you can use these identifiers to call DescribePipelines
and GetPipelineDefinition.


=head2 _request_id => Str


=cut

1;