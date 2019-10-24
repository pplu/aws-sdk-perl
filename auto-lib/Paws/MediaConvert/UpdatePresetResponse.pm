
package Paws::MediaConvert::UpdatePresetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_Preset/;
  has Preset => (is => 'ro', isa => MediaConvert_Preset);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Preset' => {
                             'class' => 'Paws::MediaConvert::Preset',
                             'type' => 'MediaConvert_Preset'
                           }
             },
  'NameInRequest' => {
                       'Preset' => 'preset'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::UpdatePresetResponse

=head1 ATTRIBUTES


=head2 Preset => MediaConvert_Preset

A preset is a collection of preconfigured media conversion settings
that you want MediaConvert to apply to the output during the conversion
process.


=head2 _request_id => Str


=cut

