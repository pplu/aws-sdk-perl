
package Paws::DataPipeline::DescribePipelinesOutput;
  use Moose;
  has PipelineDescriptionList => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineDescription]', traits => ['Unwrapped'], xmlname => 'pipelineDescriptionList' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::DescribePipelinesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineDescriptionList => ArrayRef[L<Paws::DataPipeline::PipelineDescription>]

  An array of descriptions for the specified pipelines.


=cut

1;