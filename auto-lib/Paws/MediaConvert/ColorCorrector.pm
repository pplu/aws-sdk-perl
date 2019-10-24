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
               'Saturation' => {
                                 'type' => 'Int'
                               },
               'Brightness' => {
                                 'type' => 'Int'
                               },
               'Hue' => {
                          'type' => 'Int'
                        },
               'Contrast' => {
                               'type' => 'Int'
                             },
               'Hdr10Metadata' => {
                                    'class' => 'Paws::MediaConvert::Hdr10Metadata',
                                    'type' => 'MediaConvert_Hdr10Metadata'
                                  },
               'ColorSpaceConversion' => {
                                           'type' => 'Str'
                                         }
             },
  'NameInRequest' => {
                       'Saturation' => 'saturation',
                       'Brightness' => 'brightness',
                       'Hue' => 'hue',
                       'Contrast' => 'contrast',
                       'Hdr10Metadata' => 'hdr10Metadata',
                       'ColorSpaceConversion' => 'colorSpaceConversion'
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

  Determines if colorspace conversion will be performed. If set to
_None_, no conversion will be performed. If _Force 601_ or _Force 709_
are selected, conversion will be performed for inputs with differing
colorspaces. An input's colorspace can be specified explicitly in the
"Video Selector":#inputs-video_selector if necessary.


=head2 Contrast => Int

  Contrast level.


=head2 Hdr10Metadata => MediaConvert_Hdr10Metadata

  Use the HDR master display (Hdr10Metadata) settings to correct HDR
metadata or to provide missing metadata. Note that these settings are
not color correction.


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

