
package Paws::DataPipeline::CreatePipelineOutput;
  use Moose;
  has PipelineId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::CreatePipelineOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineId => Str

The ID that AWS Data Pipeline assigns the newly created pipeline. For
example, C<df-06372391ZG65EXAMPLE>.


=head2 _request_id => Str


=cut

1;