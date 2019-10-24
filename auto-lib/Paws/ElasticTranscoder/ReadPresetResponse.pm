
package Paws::ElasticTranscoder::ReadPresetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticTranscoder::Types qw/ElasticTranscoder_Preset/;
  has Preset => (is => 'ro', isa => ElasticTranscoder_Preset);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Preset' => {
                             'class' => 'Paws::ElasticTranscoder::Preset',
                             'type' => 'ElasticTranscoder_Preset'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::ReadPresetResponse

=head1 ATTRIBUTES


=head2 Preset => ElasticTranscoder_Preset

A section of the response body that provides information about the
preset.


=head2 _request_id => Str


=cut

