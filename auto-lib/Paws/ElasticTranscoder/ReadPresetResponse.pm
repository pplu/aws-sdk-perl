
package Paws::ElasticTranscoder::ReadPresetResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Preset => (is => 'ro', isa => 'Paws::ElasticTranscoder::Preset');

}
1;