# Generated from default/object.tt
package Paws::MediaLive::DvbSubDestinationSettings;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaLive::Types qw/MediaLive_InputLocation/;
  has Alignment => (is => 'ro', isa => Str);
  has BackgroundColor => (is => 'ro', isa => Str);
  has BackgroundOpacity => (is => 'ro', isa => Int);
  has Font => (is => 'ro', isa => MediaLive_InputLocation);
  has FontColor => (is => 'ro', isa => Str);
  has FontOpacity => (is => 'ro', isa => Int);
  has FontResolution => (is => 'ro', isa => Int);
  has FontSize => (is => 'ro', isa => Str);
  has OutlineColor => (is => 'ro', isa => Str);
  has OutlineSize => (is => 'ro', isa => Int);
  has ShadowColor => (is => 'ro', isa => Str);
  has ShadowOpacity => (is => 'ro', isa => Int);
  has ShadowXOffset => (is => 'ro', isa => Int);
  has ShadowYOffset => (is => 'ro', isa => Int);
  has TeletextGridControl => (is => 'ro', isa => Str);
  has XPosition => (is => 'ro', isa => Int);
  has YPosition => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FontSize' => {
                               'type' => 'Str'
                             },
               'YPosition' => {
                                'type' => 'Int'
                              },
               'OutlineSize' => {
                                  'type' => 'Int'
                                },
               'BackgroundOpacity' => {
                                        'type' => 'Int'
                                      },
               'OutlineColor' => {
                                   'type' => 'Str'
                                 },
               'BackgroundColor' => {
                                      'type' => 'Str'
                                    },
               'ShadowYOffset' => {
                                    'type' => 'Int'
                                  },
               'TeletextGridControl' => {
                                          'type' => 'Str'
                                        },
               'FontColor' => {
                                'type' => 'Str'
                              },
               'Font' => {
                           'class' => 'Paws::MediaLive::InputLocation',
                           'type' => 'MediaLive_InputLocation'
                         },
               'FontResolution' => {
                                     'type' => 'Int'
                                   },
               'ShadowOpacity' => {
                                    'type' => 'Int'
                                  },
               'FontOpacity' => {
                                  'type' => 'Int'
                                },
               'Alignment' => {
                                'type' => 'Str'
                              },
               'ShadowColor' => {
                                  'type' => 'Str'
                                },
               'ShadowXOffset' => {
                                    'type' => 'Int'
                                  },
               'XPosition' => {
                                'type' => 'Int'
                              }
             },
  'NameInRequest' => {
                       'FontSize' => 'fontSize',
                       'YPosition' => 'yPosition',
                       'OutlineSize' => 'outlineSize',
                       'BackgroundOpacity' => 'backgroundOpacity',
                       'OutlineColor' => 'outlineColor',
                       'BackgroundColor' => 'backgroundColor',
                       'ShadowYOffset' => 'shadowYOffset',
                       'TeletextGridControl' => 'teletextGridControl',
                       'FontColor' => 'fontColor',
                       'Font' => 'font',
                       'FontResolution' => 'fontResolution',
                       'ShadowOpacity' => 'shadowOpacity',
                       'FontOpacity' => 'fontOpacity',
                       'Alignment' => 'alignment',
                       'ShadowColor' => 'shadowColor',
                       'ShadowXOffset' => 'shadowXOffset',
                       'XPosition' => 'xPosition'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DvbSubDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::DvbSubDestinationSettings object:

  $service_obj->Method(Att1 => { Alignment => $value, ..., YPosition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::DvbSubDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Alignment

=head1 DESCRIPTION

Dvb Sub Destination Settings

=head1 ATTRIBUTES


=head2 Alignment => Str

  If no explicit xPosition or yPosition is provided, setting alignment to
centered will place the captions at the bottom center of the output.
Similarly, setting a left alignment will align captions to the bottom
left of the output. If x and y positions are given in conjunction with
the alignment parameter, the font will be justified (either left or
centered) relative to those coordinates. Selecting "smart"
justification will left-justify live subtitles and center-justify
pre-recorded subtitles. This option is not valid for source captions
that are STL or 608/embedded. These source settings are already
pre-defined by the caption stream. All burn-in and DVB-Sub font
settings must match.


=head2 BackgroundColor => Str

  Specifies the color of the rectangle behind the captions. All burn-in
and DVB-Sub font settings must match.


=head2 BackgroundOpacity => Int

  Specifies the opacity of the background rectangle. 255 is opaque; 0 is
transparent. Leaving this parameter blank is equivalent to setting it
to 0 (transparent). All burn-in and DVB-Sub font settings must match.


=head2 Font => MediaLive_InputLocation

  External font file used for caption burn-in. File extension must be
'ttf' or 'tte'. Although the user can select output fonts for many
different types of input captions, embedded, STL and teletext sources
use a strict grid system. Using external fonts with these caption
sources could cause unexpected display of proportional fonts. All
burn-in and DVB-Sub font settings must match.


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


=head2 FontSize => Str

  When set to auto fontSize will scale depending on the size of the
output. Giving a positive integer will specify the exact font size in
points. All burn-in and DVB-Sub font settings must match.


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


=head2 TeletextGridControl => Str

  Controls whether a fixed grid size will be used to generate the output
subtitles bitmap. Only applicable for Teletext inputs and
DVB-Sub/Burn-in outputs.


=head2 XPosition => Int

  Specifies the horizontal position of the caption relative to the left
side of the output in pixels. A value of 10 would result in the
captions starting 10 pixels from the left of the output. If no explicit
xPosition is provided, the horizontal caption position will be
determined by the alignment parameter. This option is not valid for
source captions that are STL, 608/embedded or teletext. These source
settings are already pre-defined by the caption stream. All burn-in and
DVB-Sub font settings must match.


=head2 YPosition => Int

  Specifies the vertical position of the caption relative to the top of
the output in pixels. A value of 10 would result in the captions
starting 10 pixels from the top of the output. If no explicit yPosition
is provided, the caption will be positioned towards the bottom of the
output. This option is not valid for source captions that are STL,
608/embedded or teletext. These source settings are already pre-defined
by the caption stream. All burn-in and DVB-Sub font settings must
match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

