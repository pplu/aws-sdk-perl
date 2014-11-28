
package Paws::ElasticTranscoder::ListJobsByPipelineResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::Job]');
  has NextPageToken => (is => 'ro', isa => 'Str');

}
1;