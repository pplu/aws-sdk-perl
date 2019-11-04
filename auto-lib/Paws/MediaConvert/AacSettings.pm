# Generated from default/object.tt
package Paws::MediaConvert::AacSettings;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaConvert::Types qw//;
  has AudioDescriptionBroadcasterMix => (is => 'ro', isa => Str);
  has Bitrate => (is => 'ro', isa => Int);
  has CodecProfile => (is => 'ro', isa => Str);
  has CodingMode => (is => 'ro', isa => Str);
  has RateControlMode => (is => 'ro', isa => Str);
  has RawFormat => (is => 'ro', isa => Str);
  has SampleRate => (is => 'ro', isa => Int);
  has Specification => (is => 'ro', isa => Str);
  has VbrQuality => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RawFormat' => {
                                'type' => 'Str'
                              },
               'SampleRate' => {
                                 'type' => 'Int'
                               },
               'Specification' => {
                                    'type' => 'Str'
                                  },
               'CodecProfile' => {
                                   'type' => 'Str'
                                 },
               'CodingMode' => {
                                 'type' => 'Str'
                               },
               'AudioDescriptionBroadcasterMix' => {
                                                     'type' => 'Str'
                                                   },
               'VbrQuality' => {
                                 'type' => 'Str'
                               },
               'RateControlMode' => {
                                      'type' => 'Str'
                                    },
               'Bitrate' => {
                              'type' => 'Int'
                            }
             },
  'NameInRequest' => {
                       'RawFormat' => 'rawFormat',
                       'SampleRate' => 'sampleRate',
                       'Specification' => 'specification',
                       'CodecProfile' => 'codecProfile',
                       'CodingMode' => 'codingMode',
                       'AudioDescriptionBroadcasterMix' => 'audioDescriptionBroadcasterMix',
                       'VbrQuality' => 'vbrQuality',
                       'RateControlMode' => 'rateControlMode',
                       'Bitrate' => 'bitrate'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::AacSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::AacSettings object:

  $service_obj->Method(Att1 => { AudioDescriptionBroadcasterMix => $value, ..., VbrQuality => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AacSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioDescriptionBroadcasterMix

=head1 DESCRIPTION

Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value AAC. The service
accepts one of two mutually exclusive groups of AAC settings--VBR and
CBR. To select one of these modes, set the value of Bitrate control
mode (rateControlMode) to "VBR" or "CBR". In VBR mode, you control the
audio quality with the setting VBR quality (vbrQuality). In CBR mode,
you use the setting Bitrate (bitrate). Defaults and valid values depend
on the rate control mode.

=head1 ATTRIBUTES


=head2 AudioDescriptionBroadcasterMix => Str

  Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main
audio + audio description (AD) as a stereo pair. The value for
AudioType will be set to 3, which signals to downstream systems that
this stream contains "broadcaster mixed AD". Note that the input
received by the encoder must contain pre-mixed audio; the encoder does
not perform the mixing. When you choose BROADCASTER_MIXED_AD, the
encoder ignores any values you provide in AudioType and
FollowInputAudioType. Choose NORMAL when the input does not contain
pre-mixed audio + audio description (AD). In this case, the encoder
will use any values you provide for AudioType and FollowInputAudioType.


=head2 Bitrate => Int

  Specify the average bitrate in bits per second. The set of valid values
for this setting is: 6000, 8000, 10000, 12000, 14000, 16000, 20000,
24000, 28000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000,
128000, 160000, 192000, 224000, 256000, 288000, 320000, 384000, 448000,
512000, 576000, 640000, 768000, 896000, 1024000. The value you set is
also constrained by the values that you choose for Profile
(codecProfile), Bitrate control mode (codingMode), and Sample rate
(sampleRate). Default values depend on Bitrate control mode and
Profile.


=head2 CodecProfile => Str

  AAC Profile.


=head2 CodingMode => Str

  Mono (Audio Description), Mono, Stereo, or 5.1 channel layout. Valid
values depend on rate control mode and profile. "1.0 - Audio
Description (Receiver Mix)" setting receives a stereo description plus
control track and emits a mono AAC encode of the description track,
with control data emitted in the PES header as per ETSI TS 101 154
Annex E.


=head2 RateControlMode => Str

  Rate Control Mode.


=head2 RawFormat => Str

  Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in an
output, you must choose "No container" for the output container.


=head2 SampleRate => Int

  Sample rate in Hz. Valid values depend on rate control mode and
profile.


=head2 Specification => Str

  Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport
Stream containers.


=head2 VbrQuality => Str

  VBR Quality Level - Only used if rate_control_mode is VBR.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

