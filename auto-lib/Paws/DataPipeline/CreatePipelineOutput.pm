
package Paws::DataPipeline::CreatePipelineOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

}

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::CreatePipelineOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> pipelineId => Str

  

The ID that AWS Data Pipeline assigns the newly created pipeline. The
ID is a string of the form: df-06372391ZG65EXAMPLE.











=cut

1;