
package Paws::MediaConvert::ListPresetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConvert::Types qw/MediaConvert_Preset/;
  has NextToken => (is => 'ro', isa => Str);
  has Presets => (is => 'ro', isa => ArrayRef[MediaConvert_Preset]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Presets' => {
                              'type' => 'ArrayRef[MediaConvert_Preset]',
                              'class' => 'Paws::MediaConvert::Preset'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Presets' => 'presets',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListPresetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Use this string to request the next batch of presets.


=head2 Presets => ArrayRef[MediaConvert_Preset]

List of presets


=head2 _request_id => Str


=cut

