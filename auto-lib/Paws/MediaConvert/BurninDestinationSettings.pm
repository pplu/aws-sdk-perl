# Generated from default/object.tt
package Paws::MediaConvert::BurninDestinationSettings;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaConvert::Types qw//;
  has Alignment => (is => 'ro', isa => Str);
  has BackgroundColor => (is => 'ro', isa => Str);
  has BackgroundOpacity => (is => 'ro', isa => Int);
  has FontColor => (is => 'ro', isa => Str);
  has FontOpacity => (is => 'ro', isa => Int);
  has FontResolution => (is => 'ro', isa => Int);
  has FontScript => (is => 'ro', isa => Str);
  has FontSize => (is => 'ro', isa => Int);
  has OutlineColor => (is => 'ro', isa => Str);
  has OutlineSize => (is => 'ro', isa => Int);
  has ShadowColor => (is => 'ro', isa => Str);
  has ShadowOpacity => (is => 'ro', isa => Int);
  has ShadowXOffset => (is => 'ro', isa => Int);
  has ShadowYOffset => (is => 'ro', isa => Int);
  has TeletextSpacing => (is => 'ro', isa => Str);
  has XPosition => (is => 'ro', isa => Int);
  has YPosition => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'FontResolution' => 'fontResolution',
                       'FontOpacity' => 'fontOpacity',
                       'XPosition' => 'xPosition',
                       'ShadowColor' => 'shadowColor',
                       'FontSize' => 'fontSize',
                       'OutlineSize' => 'outlineSize',
                       'Alignment' => 'alignment',
                       'FontScript' => 'fontScript',
                       'BackgroundColor' => 'backgroundColor',
                       'ShadowOpacity' => 'shadowOpacity',
                       'BackgroundOpacity' => 'backgroundOpacity',
                       'FontColor' => 'fontColor',
                       'YPosition' => 'yPosition',
                       'ShadowYOffset' => 'shadowYOffset',
                       'OutlineColor' => 'outlineColor',
                       'TeletextSpacing' => 'teletextSpacing',
                       'ShadowXOffset' => 'shadowXOffset'
                     },
  'types' => {
               'ShadowColor' => {
                                  'type' => 'Str'
                                },
               'XPosition' => {
                                'type' => 'Int'
                              },
               'FontResolution' => {
                                     'type' => 'Int'
                                   },
               'FontOpacity' => {
                                  'type' => 'Int'
                                },
               'FontScript' => {
                                 'type' => 'Str'
                               },
               'Alignment' => {
                                'type' => 'Str'
                              },
               'OutlineSize' => {
                                  'type' => 'Int'
                                },
               'FontSize' => {
                               'type' => 'Int'
                             },
               'BackgroundOpacity' => {
                                        'type' => 'Int'
                                      },
               'FontColor' => {
                                'type' => 'Str'
                              },
               'ShadowOpacity' => {
                                    'type' => 'Int'
                                  },
               'BackgroundColor' => {
                                      'type' => 'Str'
                                    },
               'ShadowXOffset' => {
                                    'type' => 'Int'
                                  },
               'TeletextSpacing' => {
                                      'type' => 'Str'
                                    },
               'OutlineColor' => {
                                   'type' => 'Str'
                                 },
               'ShadowYOffset' => {
                                    'type' => 'Int'
                                  },
               'YPosition' => {
                                'type' => 'Int'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::BurninDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::BurninDestinationSettings object:

  $service_obj->Method(Att1 => { Alignment => $value, ..., YPosition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::BurninDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Alignment

=head1 DESCRIPTION

Burn-In Destination Settings.

=head1 ATTRIBUTES


=head2 Alignment => Str

  If no explicit x_position or y_position is provided, setting alignment
to centered will place the captions at the bottom center of the output.
Similarly, setting a left alignment will align captions to the bottom
left of the output. If x and y positions are given in conjunction with
the alignment parameter, the font will be justified (either left or
centered) relative to those coordinates. This option is not valid for
source captions that are STL, 608/embedded or teletext. These source
settings are already pre-defined by the caption stream. All burn-in and
DVB-Sub font settings must match.


=head2 BackgroundColor => Str

  Specifies the color of the rectangle behind the captions. All burn-in
and DVB-Sub font settings must match.


=head2 BackgroundOpacity => Int

  Specifies the opacity of the background rectangle. 255 is opaque; 0 is
transparent. Leaving this parameter blank is equivalent to setting it
to 0 (transparent). All burn-in and DVB-Sub font settings must match.


=head2 FontColor => Str

  Specifies the color of the burned-in captions. This option is not valid
for source captions that are STL, 608/embedded or teletext. These
source settings are already pre-defined by the caption stream. All
burn-in and DVB-Sub font settings must match.


=head2 FontOpacity => Int

  Specifies the opacity of the burned-in captions. 255 is opaque; 0 is
transparent. All burn-in and DVB-Sub font settings must match.


=head2 FontResolution => Int

  Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in
and DVB-Sub font settings must match.


=head2 FontScript => Str

  Provide the font script, using an ISO 15924 script code, if the
LanguageCode is not sufficient for determining the script type. Where
LanguageCode or CustomLanguageCode is sufficient, use "AUTOMATIC" or
leave unset. This is used to help determine the appropriate font for
rendering burn-in captions.


=head2 FontSize => Int

  A positive integer indicates the exact font size in points. Set to 0
for automatic font size selection. All burn-in and DVB-Sub font
settings must match.


=head2 OutlineColor => Str

  Specifies font outline color. This option is not valid for source
captions that are either 608/embedded or teletext. These source
settings are already pre-defined by the caption stream. All burn-in and
DVB-Sub font settings must match.


=head2 OutlineSize => Int

  Specifies font outline size in pixels. This option is not valid for
source captions that are either 608/embedded or teletext. These source
settings are already pre-defined by the caption stream. All burn-in and
DVB-Sub font settings must match.


=head2 ShadowColor => Str

  Specifies the color of the shadow cast by the captions. All burn-in and
DVB-Sub font settings must match.


=head2 ShadowOpacity => Int

  Specifies the opacity of the shadow. 255 is opaque; 0 is transparent.
Leaving this parameter blank is equivalent to setting it to 0
(transparent). All burn-in and DVB-Sub font settings must match.


=head2 ShadowXOffset => Int

  Specifies the horizontal offset of the shadow relative to the captions
in pixels. A value of -2 would result in a shadow offset 2 pixels to
the left. All burn-in and DVB-Sub font settings must match.


=head2 ShadowYOffset => Int

  Specifies the vertical offset of the shadow relative to the captions in
pixels. A value of -2 would result in a shadow offset 2 pixels above
the text. All burn-in and DVB-Sub font settings must match.


=head2 TeletextSpacing => Str

  Only applies to jobs with input captions in Teletext or STL formats.
Specify whether the spacing between letters in your captions is set by
the captions grid or varies depending on letter width. Choose fixed
grid to conform to the spacing specified in the captions file more
accurately. Choose proportional to make the text easier to read if the
captions are closed caption.


=head2 XPosition => Int

  Specifies the horizontal position of the caption relative to the left
side of the output in pixels. A value of 10 would result in the
captions starting 10 pixels from the left of the output. If no explicit
x_position is provided, the horizontal caption position will be
determined by the alignment parameter. This option is not valid for
source captions that are STL, 608/embedded or teletext. These source
settings are already pre-defined by the caption stream. All burn-in and
DVB-Sub font settings must match.


=head2 YPosition => Int

  Specifies the vertical position of the caption relative to the top of
the output in pixels. A value of 10 would result in the captions
starting 10 pixels from the top of the output. If no explicit
y_position is provided, the caption will be positioned towards the
bottom of the output. This option is not valid for source captions that
are STL, 608/embedded or teletext. These source settings are already
pre-defined by the caption stream. All burn-in and DVB-Sub font
settings must match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

