package Paws::ElasticTranscoder::PresetWatermark;
  use Moose;
  has HorizontalAlign => (is => 'ro', isa => 'Str');
  has HorizontalOffset => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has MaxHeight => (is => 'ro', isa => 'Str');
  has MaxWidth => (is => 'ro', isa => 'Str');
  has Opacity => (is => 'ro', isa => 'Str');
  has SizingPolicy => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Str');
  has VerticalAlign => (is => 'ro', isa => 'Str');
  has VerticalOffset => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::PresetWatermark

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::PresetWatermark object:

  $service_obj->Method(Att1 => { HorizontalAlign => $value, ..., VerticalOffset => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::PresetWatermark object:

  $result = $service_obj->Method(...);
  $result->Att1->HorizontalAlign

=head1 DESCRIPTION

Settings for the size, location, and opacity of graphics that you want
Elastic Transcoder to overlay over videos that are transcoded using
this preset. You can specify settings for up to four watermarks.
Watermarks appear in the specified size and location, and with the
specified opacity for the duration of the transcoded video.

Watermarks can be in .png or .jpg format. If you want to display a
watermark that is not rectangular, use the .png format, which supports
transparency.

When you create a job that uses this preset, you specify the .png or
.jpg graphics that you want Elastic Transcoder to include in the
transcoded videos. You can specify fewer graphics in the job than you
specify watermark settings in the preset, which allows you to use the
same preset for up to four watermarks that have different dimensions.

=head1 ATTRIBUTES


=head2 HorizontalAlign => Str

  The horizontal position of the watermark unless you specify a non-zero
value for C<HorizontalOffset>:

=over

=item *

B<Left>: The left edge of the watermark is aligned with the left border
of the video.

=item *

B<Right>: The right edge of the watermark is aligned with the right
border of the video.

=item *

B<Center>: The watermark is centered between the left and right
borders.

=back



=head2 HorizontalOffset => Str

  The amount by which you want the horizontal position of the watermark
to be offset from the position specified by HorizontalAlign:

=over

=item *

number of pixels (px): The minimum value is 0 pixels, and the maximum
value is the value of MaxWidth.

=item *

integer percentage (%): The range of valid values is 0 to 100.

=back

For example, if you specify Left for C<HorizontalAlign> and 5px for
C<HorizontalOffset>, the left side of the watermark appears 5 pixels
from the left border of the output video.

C<HorizontalOffset> is only valid when the value of C<HorizontalAlign>
is C<Left> or C<Right>. If you specify an offset that causes the
watermark to extend beyond the left or right border and Elastic
Transcoder has not added black bars, the watermark is cropped. If
Elastic Transcoder has added black bars, the watermark extends into the
black bars. If the watermark extends beyond the black bars, it is
cropped.

Use the value of C<Target> to specify whether you want to include the
black bars that are added by Elastic Transcoder, if any, in the offset
calculation.


=head2 Id => Str

  A unique identifier for the settings for one watermark. The value of
C<Id> can be up to 40 characters long.


=head2 MaxHeight => Str

  The maximum height of the watermark in one of the following formats:

=over

=item *

number of pixels (px): The minimum value is 16 pixels, and the maximum
value is the value of C<MaxHeight>.

=item *

integer percentage (%): The range of valid values is 0 to 100. Use the
value of C<Target> to specify whether you want Elastic Transcoder to
include the black bars that are added by Elastic Transcoder, if any, in
the calculation.

=back

If you specify the value in pixels, it must be less than or equal to
the value of C<MaxHeight>.


=head2 MaxWidth => Str

  The maximum width of the watermark in one of the following formats:

=over

=item *

number of pixels (px): The minimum value is 16 pixels, and the maximum
value is the value of C<MaxWidth>.

=item *

integer percentage (%): The range of valid values is 0 to 100. Use the
value of C<Target> to specify whether you want Elastic Transcoder to
include the black bars that are added by Elastic Transcoder, if any, in
the calculation.

If you specify the value in pixels, it must be less than or equal to
the value of C<MaxWidth>.

=back



=head2 Opacity => Str

  A percentage that indicates how much you want a watermark to obscure
the video in the location where it appears. Valid values are 0 (the
watermark is invisible) to 100 (the watermark completely obscures the
video in the specified location). The datatype of C<Opacity> is float.

Elastic Transcoder supports transparent .png graphics. If you use a
transparent .png, the transparent portion of the video appears as if
you had specified a value of 0 for C<Opacity>. The .jpg file format
doesn't support transparency.


=head2 SizingPolicy => Str

  A value that controls scaling of the watermark:

=over

=item *

B<Fit>: Elastic Transcoder scales the watermark so it matches the value
that you specified in either C<MaxWidth> or C<MaxHeight> without
exceeding the other value.

=item *

B<Stretch>: Elastic Transcoder stretches the watermark to match the
values that you specified for C<MaxWidth> and C<MaxHeight>. If the
relative proportions of the watermark and the values of C<MaxWidth> and
C<MaxHeight> are different, the watermark will be distorted.

=item *

B<ShrinkToFit>: Elastic Transcoder scales the watermark down so that
its dimensions match the values that you specified for at least one of
C<MaxWidth> and C<MaxHeight> without exceeding either value. If you
specify this option, Elastic Transcoder does not scale the watermark
up.

=back



=head2 Target => Str

  A value that determines how Elastic Transcoder interprets values that
you specified for C<HorizontalOffset>, C<VerticalOffset>, C<MaxWidth>,
and C<MaxHeight>:

=over

=item *

B<Content>: C<HorizontalOffset> and C<VerticalOffset> values are
calculated based on the borders of the video excluding black bars added
by Elastic Transcoder, if any. In addition, C<MaxWidth> and
C<MaxHeight>, if specified as a percentage, are calculated based on the
borders of the video excluding black bars added by Elastic Transcoder,
if any.

=item *

B<Frame>: C<HorizontalOffset> and C<VerticalOffset> values are
calculated based on the borders of the video including black bars added
by Elastic Transcoder, if any. In addition, C<MaxWidth> and
C<MaxHeight>, if specified as a percentage, are calculated based on the
borders of the video including black bars added by Elastic Transcoder,
if any.

=back



=head2 VerticalAlign => Str

  The vertical position of the watermark unless you specify a non-zero
value for C<VerticalOffset>:

=over

=item *

B<Top>: The top edge of the watermark is aligned with the top border of
the video.

=item *

B<Bottom>: The bottom edge of the watermark is aligned with the bottom
border of the video.

=item *

B<Center>: The watermark is centered between the top and bottom
borders.

=back



=head2 VerticalOffset => Str

  C<VerticalOffset>

The amount by which you want the vertical position of the watermark to
be offset from the position specified by VerticalAlign:

=over

=item *

number of pixels (px): The minimum value is 0 pixels, and the maximum
value is the value of C<MaxHeight>.

=item *

integer percentage (%): The range of valid values is 0 to 100.

=back

For example, if you specify C<Top> for C<VerticalAlign> and C<5px> for
C<VerticalOffset>, the top of the watermark appears 5 pixels from the
top border of the output video.

C<VerticalOffset> is only valid when the value of VerticalAlign is Top
or Bottom.

If you specify an offset that causes the watermark to extend beyond the
top or bottom border and Elastic Transcoder has not added black bars,
the watermark is cropped. If Elastic Transcoder has added black bars,
the watermark extends into the black bars. If the watermark extends
beyond the black bars, it is cropped.

Use the value of C<Target> to specify whether you want Elastic
Transcoder to include the black bars that are added by Elastic
Transcoder, if any, in the offset calculation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

