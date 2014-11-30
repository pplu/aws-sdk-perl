
package Paws::ElasticTranscoder::ReadPresetResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Preset => (is => 'ro', isa => 'Paws::ElasticTranscoder::Preset');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::ReadPresetResponse

=head1 ATTRIBUTES

=head2 Preset => Paws::ElasticTranscoder::Preset

  

A section of the response body that provides information about the
preset.











=cut

