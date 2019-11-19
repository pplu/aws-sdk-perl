# Generated from default/object.tt
package Paws::MediaConvert::Eac3Settings;
  use Moo;
  use Types::Standard qw/Str Int Num/;
  use Paws::MediaConvert::Types qw//;
  has AttenuationControl => (is => 'ro', isa => Str);
  has Bitrate => (is => 'ro', isa => Int);
  has BitstreamMode => (is => 'ro', isa => Str);
  has CodingMode => (is => 'ro', isa => Str);
  has DcFilter => (is => 'ro', isa => Str);
  has Dialnorm => (is => 'ro', isa => Int);
  has DynamicRangeCompressionLine => (is => 'ro', isa => Str);
  has DynamicRangeCompressionRf => (is => 'ro', isa => Str);
  has LfeControl => (is => 'ro', isa => Str);
  has LfeFilter => (is => 'ro', isa => Str);
  has LoRoCenterMixLevel => (is => 'ro', isa => Num);
  has LoRoSurroundMixLevel => (is => 'ro', isa => Num);
  has LtRtCenterMixLevel => (is => 'ro', isa => Num);
  has LtRtSurroundMixLevel => (is => 'ro', isa => Num);
  has MetadataControl => (is => 'ro', isa => Str);
  has PassthroughControl => (is => 'ro', isa => Str);
  has PhaseControl => (is => 'ro', isa => Str);
  has SampleRate => (is => 'ro', isa => Int);
  has StereoDownmix => (is => 'ro', isa => Str);
  has SurroundExMode => (is => 'ro', isa => Str);
  has SurroundMode => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Dialnorm' => 'dialnorm',
                       'SampleRate' => 'sampleRate',
                       'SurroundExMode' => 'surroundExMode',
                       'Bitrate' => 'bitrate',
                       'AttenuationControl' => 'attenuationControl',
                       'LtRtCenterMixLevel' => 'ltRtCenterMixLevel',
                       'DynamicRangeCompressionRf' => 'dynamicRangeCompressionRf',
                       'LfeControl' => 'lfeControl',
                       'StereoDownmix' => 'stereoDownmix',
                       'MetadataControl' => 'metadataControl',
                       'LtRtSurroundMixLevel' => 'ltRtSurroundMixLevel',
                       'LfeFilter' => 'lfeFilter',
                       'PassthroughControl' => 'passthroughControl',
                       'DynamicRangeCompressionLine' => 'dynamicRangeCompressionLine',
                       'LoRoCenterMixLevel' => 'loRoCenterMixLevel',
                       'SurroundMode' => 'surroundMode',
                       'BitstreamMode' => 'bitstreamMode',
                       'DcFilter' => 'dcFilter',
                       'LoRoSurroundMixLevel' => 'loRoSurroundMixLevel',
                       'PhaseControl' => 'phaseControl',
                       'CodingMode' => 'codingMode'
                     },
  'types' => {
               'LoRoCenterMixLevel' => {
                                         'type' => 'Num'
                                       },
               'DynamicRangeCompressionLine' => {
                                                  'type' => 'Str'
                                                },
               'PhaseControl' => {
                                   'type' => 'Str'
                                 },
               'LoRoSurroundMixLevel' => {
                                           'type' => 'Num'
                                         },
               'CodingMode' => {
                                 'type' => 'Str'
                               },
               'SurroundMode' => {
                                   'type' => 'Str'
                                 },
               'BitstreamMode' => {
                                    'type' => 'Str'
                                  },
               'DcFilter' => {
                               'type' => 'Str'
                             },
               'LtRtCenterMixLevel' => {
                                         'type' => 'Num'
                                       },
               'DynamicRangeCompressionRf' => {
                                                'type' => 'Str'
                                              },
               'LfeControl' => {
                                 'type' => 'Str'
                               },
               'SurroundExMode' => {
                                     'type' => 'Str'
                                   },
               'Bitrate' => {
                              'type' => 'Int'
                            },
               'AttenuationControl' => {
                                         'type' => 'Str'
                                       },
               'Dialnorm' => {
                               'type' => 'Int'
                             },
               'SampleRate' => {
                                 'type' => 'Int'
                               },
               'LfeFilter' => {
                                'type' => 'Str'
                              },
               'PassthroughControl' => {
                                         'type' => 'Str'
                                       },
               'LtRtSurroundMixLevel' => {
                                           'type' => 'Num'
                                         },
               'StereoDownmix' => {
                                    'type' => 'Str'
                                  },
               'MetadataControl' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Eac3Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Eac3Settings object:

  $service_obj->Method(Att1 => { AttenuationControl => $value, ..., SurroundMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Eac3Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->AttenuationControl

=head1 DESCRIPTION

Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value EAC3.

=head1 ATTRIBUTES


=head2 AttenuationControl => Str

  If set to ATTENUATE_3_DB, applies a 3 dB attenuation to the surround
channels. Only used for 3/2 coding mode.


=head2 Bitrate => Int

  Specify the average bitrate in bits per second. Valid bitrates depend
on the coding mode.


=head2 BitstreamMode => Str

  Specify the bitstream mode for the E-AC-3 stream that the encoder
emits. For more information about the EAC3 bitstream mode, see ATSC
A/52-2012 (Annex E).


=head2 CodingMode => Str

  Dolby Digital Plus coding mode. Determines number of channels.


=head2 DcFilter => Str

  Activates a DC highpass filter for all input channels.


=head2 Dialnorm => Int

  Sets the dialnorm for the output. If blank and input audio is Dolby
Digital Plus, dialnorm will be passed through.


=head2 DynamicRangeCompressionLine => Str

  Specify the absolute peak level for a signal with dynamic range
compression.


=head2 DynamicRangeCompressionRf => Str

  Specify how the service limits the audio dynamic range when compressing
the audio.


=head2 LfeControl => Str

  When encoding 3/2 audio, controls whether the LFE channel is enabled


=head2 LfeFilter => Str

  Applies a 120Hz lowpass filter to the LFE channel prior to encoding.
Only valid with 3_2_LFE coding mode.


=head2 LoRoCenterMixLevel => Num

  Specify a value for the following Dolby Digital Plus setting: Left
only/Right only center mix (Lo/Ro center). MediaConvert uses this value
for downmixing. How the service uses this value depends on the value
that you choose for Stereo downmix (Eac3StereoDownmix). Valid values:
3.0, 1.5, 0.0, -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the
channel. This setting applies only if you keep the default value of 3/2
- L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode
(Eac3CodingMode). If you choose a different value for Coding mode, the
service ignores Left only/Right only center (loRoCenterMixLevel).


=head2 LoRoSurroundMixLevel => Num

  Specify a value for the following Dolby Digital Plus setting: Left
only/Right only (Lo/Ro surround). MediaConvert uses this value for
downmixing. How the service uses this value depends on the value that
you choose for Stereo downmix (Eac3StereoDownmix). Valid values: -1.5,
-3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This
setting applies only if you keep the default value of 3/2 - L, R, C,
Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode).
If you choose a different value for Coding mode, the service ignores
Left only/Right only surround (loRoSurroundMixLevel).


=head2 LtRtCenterMixLevel => Num

  Specify a value for the following Dolby Digital Plus setting: Left
total/Right total center mix (Lt/Rt center). MediaConvert uses this
value for downmixing. How the service uses this value depends on the
value that you choose for Stereo downmix (Eac3StereoDownmix). Valid
values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, -6.0, and -60. The value -60
mutes the channel. This setting applies only if you keep the default
value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding
mode (Eac3CodingMode). If you choose a different value for Coding mode,
the service ignores Left total/Right total center (ltRtCenterMixLevel).


=head2 LtRtSurroundMixLevel => Num

  Specify a value for the following Dolby Digital Plus setting: Left
total/Right total surround mix (Lt/Rt surround). MediaConvert uses this
value for downmixing. How the service uses this value depends on the
value that you choose for Stereo downmix (Eac3StereoDownmix). Valid
values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the
channel. This setting applies only if you keep the default value of 3/2
- L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode
(Eac3CodingMode). If you choose a different value for Coding mode, the
service ignores Left total/Right total surround (ltRtSurroundMixLevel).


=head2 MetadataControl => Str

  When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD,
DD+, or DolbyE decoder that supplied this audio data. If audio was not
supplied from one of these streams, then the static metadata settings
will be used.


=head2 PassthroughControl => Str

  When set to WHEN_POSSIBLE, input DD+ audio will be passed through if it
is present on the input. this detection is dynamic over the life of the
transcode. Inputs that alternate between DD+ and non-DD+ content will
have a consistent DD+ output as the system alternates between
passthrough and encoding.


=head2 PhaseControl => Str

  Controls the amount of phase-shift applied to the surround channels.
Only used for 3/2 coding mode.


=head2 SampleRate => Int

  This value is always 48000. It represents the sample rate in Hz.


=head2 StereoDownmix => Str

  Choose how the service does stereo downmixing. This setting only
applies if you keep the default value of 3/2 - L, R, C, Ls, Rs
(CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you
choose a different value for Coding mode, the service ignores Stereo
downmix (Eac3StereoDownmix).


=head2 SurroundExMode => Str

  When encoding 3/2 audio, sets whether an extra center back surround
channel is matrix encoded into the left and right surround channels.


=head2 SurroundMode => Str

  When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded
into the two channels.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

