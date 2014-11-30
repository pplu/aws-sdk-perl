
package Paws::DataPipeline::ListPipelinesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has hasMoreResults => (is => 'ro', isa => 'Bool');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineIdList => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineIdName]', required => 1);

}

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ListPipelinesOutput

=head1 ATTRIBUTES

=head2 hasMoreResults => Bool

  

If C<True>, there are more results that can be obtained by a subsequent
call to ListPipelines.









=head2 marker => Str

  

If not null, indicates the starting point for the set of pipeline
identifiers that the next call to ListPipelines will retrieve. If null,
there are no more pipeline identifiers.









=head2 B<REQUIRED> pipelineIdList => ArrayRef[Paws::DataPipeline::PipelineIdName]

  

A list of all the pipeline identifiers that your account has permission
to access. If you require additional information about the pipelines,
you can use these identifiers to call DescribePipelines and
GetPipelineDefinition.











=cut

1;