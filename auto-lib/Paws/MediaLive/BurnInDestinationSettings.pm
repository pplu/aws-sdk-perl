package Paws::MediaLive::BurnInDestinationSettings;
  use Moose;
  has Alignment => (is => 'ro', isa => 'Str', request_name => 'alignment', traits => ['NameInRequest']);
  has BackgroundColor => (is => 'ro', isa => 'Str', request_name => 'backgroundColor', traits => ['NameInRequest']);
  has BackgroundOpacity => (is => 'ro', isa => 'Int', request_name => 'backgroundOpacity', traits => ['NameInRequest']);
  has Font => (is => 'ro', isa => 'Paws::MediaLive::InputLocation', request_name => 'font', traits => ['NameInRequest']);
  has FontColor => (is => 'ro', isa => 'Str', request_name => 'fontColor', traits => ['NameInRequest']);
  has FontOpacity => (is => 'ro', isa => 'Int', request_name => 'fontOpacity', traits => ['NameInRequest']);
  has FontResolution => (is => 'ro', isa => 'Int', request_name => 'fontResolution', traits => ['NameInRequest']);
  has FontSize => (is => 'ro', isa => 'Str', request_name => 'fontSize', traits => ['NameInRequest']);
  has OutlineColor => (is => 'ro', isa => 'Str', request_name => 'outlineColor', traits => ['NameInRequest']);
  has OutlineSize => (is => 'ro', isa => 'Int', request_name => 'outlineSize', traits => ['NameInRequest']);
  has ShadowColor => (is => 'ro', isa => 'Str', request_name => 'shadowColor', traits => ['NameInRequest']);
  has ShadowOpacity => (is => 'ro', isa => 'Int', request_name => 'shadowOpacity', traits => ['NameInRequest']);
  has ShadowXOffset => (is => 'ro', isa => 'Int', request_name => 'shadowXOffset', traits => ['NameInRequest']);
  has ShadowYOffset => (is => 'ro', isa => 'Int', request_name => 'shadowYOffset', traits => ['NameInRequest']);
  has TeletextGridControl => (is => 'ro', isa => 'Str', request_name => 'teletextGridControl', traits => ['NameInRequest']);
  has XPosition => (is => 'ro', isa => 'Int', request_name => 'xPosition', traits => ['NameInRequest']);
  has YPosition => (is => 'ro', isa => 'Int', request_name => 'yPosition', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::BurnInDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::BurnInDestinationSettings object:

  $service_obj->Method(Att1 => { Alignment => $value, ..., YPosition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::BurnInDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Alignment

=head1 DESCRIPTION

Placeholder documentation for BurnInDestinationSettings

=head1 ATTRIBUTES


=head2 Alignment => Str

  If no explicit xPosition or yPosition is provided, setting alignment to
centered will place the captions at the bottom center of the output.
Similarly, setting a left alignment will align captions to the bottom
left of the output. If x and y positions are given in conjunction with
the alignment parameter, the font will be justified (either left or
centered) relative to those coordinates. Selecting "smart"
justification will left-justify live subtitles and center-justify
pre-recorded subtitles. All burn-in and DVB-Sub font settings must
match.


=head2 BackgroundColor => Str

  Specifies the color of the rectangle behind the captions. All burn-in
and DVB-Sub font settings must match.


=head2 BackgroundOpacity => Int

  Specifies the opacity of the background rectangle. 255 is opaque; 0 is
transparent. Leaving this parameter out is equivalent to setting it to
0 (transparent). All burn-in and DVB-Sub font settings must match.


=head2 Font => L<Paws::MediaLive::InputLocation>

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

  When set to 'auto' fontSize will scale depending on the size of the
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
Leaving this parameter out is equivalent to setting it to 0
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
determined by the alignment parameter. All burn-in and DVB-Sub font
settings must match.


=head2 YPosition => Int

  Specifies the vertical position of the caption relative to the top of
the output in pixels. A value of 10 would result in the captions
starting 10 pixels from the top of the output. If no explicit yPosition
is provided, the caption will be positioned towards the bottom of the
output. All burn-in and DVB-Sub font settings must match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

