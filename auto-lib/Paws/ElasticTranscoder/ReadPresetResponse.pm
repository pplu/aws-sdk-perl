
package Paws::ElasticTranscoder::ReadPresetResponse;
  use Moose;
  has Preset => (is => 'ro', isa => 'Paws::ElasticTranscoder::Preset');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::ReadPresetResponse

=head1 ATTRIBUTES


=head2 Preset => L<Paws::ElasticTranscoder::Preset>

A section of the response body that provides information about the
preset.


=head2 _request_id => Str


=cut

