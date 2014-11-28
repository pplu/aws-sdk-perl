
package Paws::ElasticTranscoder::CreateJobResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Job => (is => 'ro', isa => 'Paws::ElasticTranscoder::Job');

}
1;