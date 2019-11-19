# Generated from default/object.tt
package Paws::MediaConvert::ColorCorrector;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_Hdr10Metadata/;
  has Brightness => (is => 'ro', isa => Int);
  has ColorSpaceConversion => (is => 'ro', isa => Str);
  has Contrast => (is => 'ro', isa => Int);
  has Hdr10Metadata => (is => 'ro', isa => MediaConvert_Hdr10Metadata);
  has Hue => (is => 'ro', isa => Int);
  has Saturation => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Contrast' => {
                               'type' => 'Int'
                             },
               'ColorSpaceConversion' => {
                                           'type' => 'Str'
                                         },
               'Brightness' => {
                                 'type' => 'Int'
                               },
               'Hue' => {
                          'type' => 'Int'
                        },
               'Hdr10Metadata' => {
                                    'type' => 'MediaConvert_Hdr10Metadata',
                                    'class' => 'Paws::MediaConvert::Hdr10Metadata'
                                  },
               'Saturation' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'Hdr10Metadata' => 'hdr10Metadata',
                       'Saturation' => 'saturation',
                       'Contrast' => 'contrast',
                       'ColorSpaceConversion' => 'colorSpaceConversion',
                       'Brightness' => 'brightness',
                       'Hue' => 'hue'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ColorCorrector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::ColorCorrector object:

  $service_obj->Method(Att1 => { Brightness => $value, ..., Saturation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::ColorCorrector object:

  $result = $service_obj->Method(...);
  $result->Att1->Brightness

=head1 DESCRIPTION

Settings for color correction.

=head1 ATTRIBUTES


=head2 Brightness => Int

  Brightness level.


=head2 ColorSpaceConversion => Str

  Specify the color space you want for this output. The service supports
conversion between HDR formats, between SDR formats, and from SDR to
HDR. The service doesn't support conversion from HDR to SDR. SDR to HDR
conversion doesn't upgrade the dynamic range. The converted video has
an HDR format, but visually appears the same as an unconverted output.


=head2 Contrast => Int

  Contrast level.


=head2 Hdr10Metadata => MediaConvert_Hdr10Metadata

  Use these settings when you convert to the HDR 10 color space. Specify
the SMPTE ST 2086 Mastering Display Color Volume static metadata that
you want signaled in the output. These values don't affect the pixel
values that are encoded in the video stream. They are intended to help
the downstream video player display content in a way that reflects the
intentions of the the content creator. When you set Color space
conversion (ColorSpaceConversion) to HDR 10 (FORCE_HDR10), these
settings are required. You must set values for Max frame average light
level (maxFrameAverageLightLevel) and Max content light level
(maxContentLightLevel); these settings don't have a default value. The
default values for the other HDR 10 metadata settings are defined by
the P3D65 color space. For more information about MediaConvert HDR
jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr.


=head2 Hue => Int

  Hue in degrees.


=head2 Saturation => Int

  Saturation level.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

