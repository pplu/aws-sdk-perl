package Paws::MediaConvert::VideoCodecSettings;
  use Moose;
  has Codec => (is => 'ro', isa => 'Str', request_name => 'codec', traits => ['NameInRequest']);
  has FrameCaptureSettings => (is => 'ro', isa => 'Paws::MediaConvert::FrameCaptureSettings', request_name => 'frameCaptureSettings', traits => ['NameInRequest']);
  has H264Settings => (is => 'ro', isa => 'Paws::MediaConvert::H264Settings', request_name => 'h264Settings', traits => ['NameInRequest']);
  has H265Settings => (is => 'ro', isa => 'Paws::MediaConvert::H265Settings', request_name => 'h265Settings', traits => ['NameInRequest']);
  has Mpeg2Settings => (is => 'ro', isa => 'Paws::MediaConvert::Mpeg2Settings', request_name => 'mpeg2Settings', traits => ['NameInRequest']);
  has ProresSettings => (is => 'ro', isa => 'Paws::MediaConvert::ProresSettings', request_name => 'proresSettings', traits => ['NameInRequest']);
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
in this group vary depending on the value you choose for Video codec
(Codec). For each codec enum you choose, define the corresponding
settings object. The following lists the codec enum, settings object
pairs. * H_264, H264Settings * H_265, H265Settings * MPEG2,
Mpeg2Settings * PRORES, ProresSettings * FRAME_CAPTURE,
FrameCaptureSettings

=head1 ATTRIBUTES


=head2 Codec => Str

  Specifies the video codec. This must be equal to one of the enum values
defined by the object VideoCodec.


=head2 FrameCaptureSettings => L<Paws::MediaConvert::FrameCaptureSettings>

  


=head2 H264Settings => L<Paws::MediaConvert::H264Settings>

  


=head2 H265Settings => L<Paws::MediaConvert::H265Settings>

  


=head2 Mpeg2Settings => L<Paws::MediaConvert::Mpeg2Settings>

  


=head2 ProresSettings => L<Paws::MediaConvert::ProresSettings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

