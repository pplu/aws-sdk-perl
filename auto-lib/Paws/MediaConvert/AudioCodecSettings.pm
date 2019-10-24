# Generated from default/object.tt
package Paws::MediaConvert::AudioCodecSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_AacSettings MediaConvert_WavSettings MediaConvert_Mp2Settings MediaConvert_Eac3Settings MediaConvert_Ac3Settings MediaConvert_AiffSettings/;
  has AacSettings => (is => 'ro', isa => MediaConvert_AacSettings);
  has Ac3Settings => (is => 'ro', isa => MediaConvert_Ac3Settings);
  has AiffSettings => (is => 'ro', isa => MediaConvert_AiffSettings);
  has Codec => (is => 'ro', isa => Str);
  has Eac3Settings => (is => 'ro', isa => MediaConvert_Eac3Settings);
  has Mp2Settings => (is => 'ro', isa => MediaConvert_Mp2Settings);
  has WavSettings => (is => 'ro', isa => MediaConvert_WavSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Codec' => {
                            'type' => 'Str'
                          },
               'WavSettings' => {
                                  'class' => 'Paws::MediaConvert::WavSettings',
                                  'type' => 'MediaConvert_WavSettings'
                                },
               'Eac3Settings' => {
                                   'class' => 'Paws::MediaConvert::Eac3Settings',
                                   'type' => 'MediaConvert_Eac3Settings'
                                 },
               'Mp2Settings' => {
                                  'class' => 'Paws::MediaConvert::Mp2Settings',
                                  'type' => 'MediaConvert_Mp2Settings'
                                },
               'AiffSettings' => {
                                   'class' => 'Paws::MediaConvert::AiffSettings',
                                   'type' => 'MediaConvert_AiffSettings'
                                 },
               'Ac3Settings' => {
                                  'class' => 'Paws::MediaConvert::Ac3Settings',
                                  'type' => 'MediaConvert_Ac3Settings'
                                },
               'AacSettings' => {
                                  'class' => 'Paws::MediaConvert::AacSettings',
                                  'type' => 'MediaConvert_AacSettings'
                                }
             },
  'NameInRequest' => {
                       'Codec' => 'codec',
                       'WavSettings' => 'wavSettings',
                       'Eac3Settings' => 'eac3Settings',
                       'Mp2Settings' => 'mp2Settings',
                       'AiffSettings' => 'aiffSettings',
                       'Ac3Settings' => 'ac3Settings',
                       'AacSettings' => 'aacSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::AudioCodecSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::AudioCodecSettings object:

  $service_obj->Method(Att1 => { AacSettings => $value, ..., WavSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AudioCodecSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AacSettings

=head1 DESCRIPTION

Audio codec settings (CodecSettings) under (AudioDescriptions) contains
the group of settings related to audio encoding. The settings in this
group vary depending on the value you choose for Audio codec (Codec).
For each codec enum you choose, define the corresponding settings
object. The following lists the codec enum, settings object pairs. *
AAC, AacSettings * MP2, Mp2Settings * WAV, WavSettings * AIFF,
AiffSettings * AC3, Ac3Settings * EAC3, Eac3Settings

=head1 ATTRIBUTES


=head2 AacSettings => MediaConvert_AacSettings

  Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value AAC. The service
accepts one of two mutually exclusive groups of AAC settings--VBR and
CBR. To select one of these modes, set the value of Bitrate control
mode (rateControlMode) to "VBR" or "CBR". In VBR mode, you control the
audio quality with the setting VBR quality (vbrQuality). In CBR mode,
you use the setting Bitrate (bitrate). Defaults and valid values depend
on the rate control mode.


=head2 Ac3Settings => MediaConvert_Ac3Settings

  Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value AC3.


=head2 AiffSettings => MediaConvert_AiffSettings

  Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value AIFF.


=head2 Codec => Str

  Type of Audio codec.


=head2 Eac3Settings => MediaConvert_Eac3Settings

  Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value EAC3.


=head2 Mp2Settings => MediaConvert_Mp2Settings

  Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value MP2.


=head2 WavSettings => MediaConvert_WavSettings

  Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value WAV.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

