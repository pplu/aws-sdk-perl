
package Paws::ElasticTranscoder::UpdatePipelineStatusResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Pipeline => (is => 'ro', isa => 'Paws::ElasticTranscoder::Pipeline');

}
1;