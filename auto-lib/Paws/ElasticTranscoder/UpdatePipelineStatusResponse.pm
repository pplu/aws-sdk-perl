
package Paws::ElasticTranscoder::UpdatePipelineStatusResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Pipeline => (is => 'ro', isa => 'Paws::ElasticTranscoder::Pipeline');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::UpdatePipelineStatusResponse

=head1 ATTRIBUTES

=head2 Pipeline => Paws::ElasticTranscoder::Pipeline

  

A section of the response body that provides information about the
pipeline.











=cut

