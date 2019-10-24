
package Paws::ElasticTranscoder::ListPresetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticTranscoder::Types qw/ElasticTranscoder_Preset/;
  has NextPageToken => (is => 'ro', isa => Str);
  has Presets => (is => 'ro', isa => ArrayRef[ElasticTranscoder_Preset]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Presets' => {
                              'class' => 'Paws::ElasticTranscoder::Preset',
                              'type' => 'ArrayRef[ElasticTranscoder_Preset]'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::ListPresetsResponse

=head1 ATTRIBUTES


=head2 NextPageToken => Str

A value that you use to access the second and subsequent pages of
results, if any. When the presets fit on one page or when you've
reached the last page of results, the value of C<NextPageToken> is
C<null>.


=head2 Presets => ArrayRef[ElasticTranscoder_Preset]

An array of C<Preset> objects.


=head2 _request_id => Str


=cut

