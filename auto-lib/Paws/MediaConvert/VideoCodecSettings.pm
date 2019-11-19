# Generated from default/object.tt
package Paws::MediaConvert::VideoCodecSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_H264Settings MediaConvert_H265Settings MediaConvert_Mpeg2Settings MediaConvert_FrameCaptureSettings MediaConvert_ProresSettings/;
  has Codec => (is => 'ro', isa => Str);
  has FrameCaptureSettings => (is => 'ro', isa => MediaConvert_FrameCaptureSettings);
  has H264Settings => (is => 'ro', isa => MediaConvert_H264Settings);
  has H265Settings => (is => 'ro', isa => MediaConvert_H265Settings);
  has Mpeg2Settings => (is => 'ro', isa => MediaConvert_Mpeg2Settings);
  has ProresSettings => (is => 'ro', isa => MediaConvert_ProresSettings);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Codec' => 'codec',
                       'ProresSettings' => 'proresSettings',
                       'FrameCaptureSettings' => 'frameCaptureSettings',
                       'Mpeg2Settings' => 'mpeg2Settings',
                       'H265Settings' => 'h265Settings',
                       'H264Settings' => 'h264Settings'
                     },
  'types' => {
               'Mpeg2Settings' => {
                                    'class' => 'Paws::MediaConvert::Mpeg2Settings',
                                    'type' => 'MediaConvert_Mpeg2Settings'
                                  },
               'H264Settings' => {
                                   'class' => 'Paws::MediaConvert::H264Settings',
                                   'type' => 'MediaConvert_H264Settings'
                                 },
               'H265Settings' => {
                                   'class' => 'Paws::MediaConvert::H265Settings',
                                   'type' => 'MediaConvert_H265Settings'
                                 },
               'FrameCaptureSettings' => {
                                           'type' => 'MediaConvert_FrameCaptureSettings',
                                           'class' => 'Paws::MediaConvert::FrameCaptureSettings'
                                         },
               'ProresSettings' => {
                                     'class' => 'Paws::MediaConvert::ProresSettings',
                                     'type' => 'MediaConvert_ProresSettings'
                                   },
               'Codec' => {
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

Paws::MediaConvert::VideoCodecSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::VideoCodecSettings object:

  $service_obj->Method(Att1 => { Codec => $value, ..., ProresSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::VideoCodecSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Codec

=head1 DESCRIPTION

Video codec settings, (CodecSettings) under (VideoDescription),
contains the group of settings related to video encoding. The settings
in this group vary depending on the value that you choose for Video
codec (Codec). For each codec enum that you choose, define the
corresponding settings object. The following lists the codec enum,
settings object pairs. * H_264, H264Settings * H_265, H265Settings *
MPEG2, Mpeg2Settings * PRORES, ProresSettings * FRAME_CAPTURE,
FrameCaptureSettings

=head1 ATTRIBUTES


=head2 Codec => Str

  Specifies the video codec. This must be equal to one of the enum values
defined by the object VideoCodec.


=head2 FrameCaptureSettings => MediaConvert_FrameCaptureSettings

  Required when you set (Codec) under
(VideoDescription)E<gt>(CodecSettings) to the value FRAME_CAPTURE.


=head2 H264Settings => MediaConvert_H264Settings

  Required when you set (Codec) under
(VideoDescription)E<gt>(CodecSettings) to the value H_264.


=head2 H265Settings => MediaConvert_H265Settings

  Settings for H265 codec


=head2 Mpeg2Settings => MediaConvert_Mpeg2Settings

  Required when you set (Codec) under
(VideoDescription)E<gt>(CodecSettings) to the value MPEG2.


=head2 ProresSettings => MediaConvert_ProresSettings

  Required when you set (Codec) under
(VideoDescription)E<gt>(CodecSettings) to the value PRORES.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

