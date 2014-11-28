
package Paws::ElasticTranscoder::ListPipelinesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextPageToken => (is => 'ro', isa => 'Str');
  has Pipelines => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::Pipeline]');

}
1;