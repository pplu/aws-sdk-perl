
package Paws::ElasticTranscoder::ListPresetsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextPageToken => (is => 'ro', isa => 'Str');
  has Presets => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::Preset]');

}
1;