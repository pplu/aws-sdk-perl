
package Paws::DataPipeline::DescribePipelinesOutput;
  use Moose;
  has PipelineDescriptionList => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineDescription]', traits => ['NameInRequest'], request_name => 'pipelineDescriptionList' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::DescribePipelinesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineDescriptionList => ArrayRef[L<Paws::DataPipeline::PipelineDescription>]

An array of descriptions for the specified pipelines.


=head2 _request_id => Str


=cut

1;