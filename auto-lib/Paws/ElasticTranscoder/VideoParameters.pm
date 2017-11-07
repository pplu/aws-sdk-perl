package Paws::ElasticTranscoder::VideoParameters;
  use Moose;
  has AspectRatio => (is => 'ro', isa => 'Str');
  has BitRate => (is => 'ro', isa => 'Str');
  has Codec => (is => 'ro', isa => 'Str');
  has CodecOptions => (is => 'ro', isa => 'Paws::ElasticTranscoder::CodecOptions');
  has DisplayAspectRatio => (is => 'ro', isa => 'Str');
  has FixedGOP => (is => 'ro', isa => 'Str');
  has FrameRate => (is => 'ro', isa => 'Str');
  has KeyframesMaxDist => (is => 'ro', isa => 'Str');
  has MaxFrameRate => (is => 'ro', isa => 'Str');
  has MaxHeight => (is => 'ro', isa => 'Str');
  has MaxWidth => (is => 'ro', isa => 'Str');
  has PaddingPolicy => (is => 'ro', isa => 'Str');
  has Resolution => (is => 'ro', isa => 'Str');
  has SizingPolicy => (is => 'ro', isa => 'Str');
  has Watermarks => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::PresetWatermark]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::VideoParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::VideoParameters object:

  $service_obj->Method(Att1 => { AspectRatio => $value, ..., Watermarks => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::VideoParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->AspectRatio

=head1 DESCRIPTION

The C<VideoParameters> structure.

=head1 ATTRIBUTES


=head2 AspectRatio => Str

  To better control resolution and aspect ratio of output videos, we
recommend that you use the values C<MaxWidth>, C<MaxHeight>,
C<SizingPolicy>, C<PaddingPolicy>, and C<DisplayAspectRatio> instead of
C<Resolution> and C<AspectRatio>. The two groups of settings are
mutually exclusive. Do not use them together.

The display aspect ratio of the video in the output file. Valid values
include:

C<auto>, C<1:1>, C<4:3>, C<3:2>, C<16:9>

If you specify C<auto>, Elastic Transcoder tries to preserve the aspect
ratio of the input file.

If you specify an aspect ratio for the output file that differs from
aspect ratio of the input file, Elastic Transcoder adds pillarboxing
(black bars on the sides) or letterboxing (black bars on the top and
bottom) to maintain the aspect ratio of the active region of the video.


=head2 BitRate => Str

  The bit rate of the video stream in the output file, in
kilobits/second. Valid values depend on the values of C<Level> and
C<Profile>. If you specify C<auto>, Elastic Transcoder uses the
detected bit rate of the input source. If you specify a value other
than C<auto>, we recommend that you specify a value less than or equal
to the maximum H.264-compliant value listed for your level and profile:

I<Level - Maximum video bit rate in kilobits/second (baseline and main
Profile) : maximum video bit rate in kilobits/second (high Profile)>

=over

=item *

1 - 64 : 80

=item *

1b - 128 : 160

=item *

1.1 - 192 : 240

=item *

1.2 - 384 : 480

=item *

1.3 - 768 : 960

=item *

2 - 2000 : 2500

=item *

3 - 10000 : 12500

=item *

3.1 - 14000 : 17500

=item *

3.2 - 20000 : 25000

=item *

4 - 20000 : 25000

=item *

4.1 - 50000 : 62500

=back



=head2 Codec => Str

  The video codec for the output file. Valid values include C<gif>,
C<H.264>, C<mpeg2>, C<vp8>, and C<vp9>. You can only specify C<vp8> and
C<vp9> when the container type is C<webm>, C<gif> when the container
type is C<gif>, and C<mpeg2> when the container type is C<mpg>.


=head2 CodecOptions => L<Paws::ElasticTranscoder::CodecOptions>

  B<Profile (H.264/VP8/VP9 Only)>

The H.264 profile that you want to use for the output file. Elastic
Transcoder supports the following profiles:

=over

=item *

C<baseline>: The profile most commonly used for videoconferencing and
for mobile applications.

=item *

C<main>: The profile used for standard-definition digital TV
broadcasts.

=item *

C<high>: The profile used for high-definition digital TV broadcasts and
for Blu-ray discs.

=back

B<Level (H.264 Only)>

The H.264 level that you want to use for the output file. Elastic
Transcoder supports the following levels:

C<1>, C<1b>, C<1.1>, C<1.2>, C<1.3>, C<2>, C<2.1>, C<2.2>, C<3>,
C<3.1>, C<3.2>, C<4>, C<4.1>

B<MaxReferenceFrames (H.264 Only)>

Applicable only when the value of Video:Codec is H.264. The maximum
number of previously decoded frames to use as a reference for decoding
future frames. Valid values are integers 0 through 16, but we recommend
that you not use a value greater than the following:

C<Min(Floor(Maximum decoded picture buffer in macroblocks * 256 /
(Width in pixels * Height in pixels)), 16)>

where I<Width in pixels> and I<Height in pixels> represent either
MaxWidth and MaxHeight, or Resolution. I<Maximum decoded picture buffer
in macroblocks> depends on the value of the C<Level> object. See the
list below. (A macroblock is a block of pixels measuring 16x16.)

=over

=item *

1 - 396

=item *

1b - 396

=item *

1.1 - 900

=item *

1.2 - 2376

=item *

1.3 - 2376

=item *

2 - 2376

=item *

2.1 - 4752

=item *

2.2 - 8100

=item *

3 - 8100

=item *

3.1 - 18000

=item *

3.2 - 20480

=item *

4 - 32768

=item *

4.1 - 32768

=back

B<MaxBitRate (Optional, H.264/MPEG2/VP8/VP9 only)>

The maximum number of bits per second in a video buffer; the size of
the buffer is specified by C<BufferSize>. Specify a value between 16
and 62,500. You can reduce the bandwidth required to stream a video by
reducing the maximum bit rate, but this also reduces the quality of the
video.

B<BufferSize (Optional, H.264/MPEG2/VP8/VP9 only)>

The maximum number of bits in any x seconds of the output video. This
window is commonly 10 seconds, the standard segment duration when
you're using FMP4 or MPEG-TS for the container type of the output
video. Specify an integer greater than 0. If you specify C<MaxBitRate>
and omit C<BufferSize>, Elastic Transcoder sets C<BufferSize> to 10
times the value of C<MaxBitRate>.

B<InterlacedMode (Optional, H.264/MPEG2 Only)>

The interlace mode for the output video.

Interlaced video is used to double the perceived frame rate for a video
by interlacing two fields (one field on every other line, the other
field on the other lines) so that the human eye registers multiple
pictures per frame. Interlacing reduces the bandwidth required for
transmitting a video, but can result in blurred images and flickering.

Valid values include C<Progressive> (no interlacing, top to bottom),
C<TopFirst> (top field first), C<BottomFirst> (bottom field first), and
C<Auto>.

If C<InterlaceMode> is not specified, Elastic Transcoder uses
C<Progressive> for the output. If C<Auto> is specified, Elastic
Transcoder interlaces the output.

B<ColorSpaceConversionMode (Optional, H.264/MPEG2 Only)>

The color space conversion Elastic Transcoder applies to the output
video. Color spaces are the algorithms used by the computer to store
information about how to render color. C<Bt.601> is the standard for
standard definition video, while C<Bt.709> is the standard for high
definition video.

Valid values include C<None>, C<Bt709toBt601>, C<Bt601toBt709>, and
C<Auto>.

If you chose C<Auto> for C<ColorSpaceConversionMode> and your output is
interlaced, your frame rate is one of C<23.97>, C<24>, C<25>, C<29.97>,
C<50>, or C<60>, your C<SegmentDuration> is null, and you are using one
of the resolution changes from the list below, Elastic Transcoder
applies the following color space conversions:

=over

=item *

I<Standard to HD, 720x480 to 1920x1080> - Elastic Transcoder applies
C<Bt601ToBt709>

=item *

I<Standard to HD, 720x576 to 1920x1080> - Elastic Transcoder applies
C<Bt601ToBt709>

=item *

I<HD to Standard, 1920x1080 to 720x480> - Elastic Transcoder applies
C<Bt709ToBt601>

=item *

I<HD to Standard, 1920x1080 to 720x576> - Elastic Transcoder applies
C<Bt709ToBt601>

=back

Elastic Transcoder may change the behavior of the
C<ColorspaceConversionMode> C<Auto> mode in the future. All outputs in
a playlist must use the same C<ColorSpaceConversionMode>.

If you do not specify a C<ColorSpaceConversionMode>, Elastic Transcoder
does not change the color space of a file. If you are unsure what
C<ColorSpaceConversionMode> was applied to your output file, you can
check the C<AppliedColorSpaceConversion> parameter included in your job
response. If your job does not have an C<AppliedColorSpaceConversion>
in its response, no C<ColorSpaceConversionMode> was applied.

B<ChromaSubsampling>

The sampling pattern for the chroma (color) channels of the output
video. Valid values include C<yuv420p> and C<yuv422p>.

C<yuv420p> samples the chroma information of every other horizontal and
every other vertical line, C<yuv422p> samples the color information of
every horizontal line and every other vertical line.

B<LoopCount (Gif Only)>

The number of times you want the output gif to loop. Valid values
include C<Infinite> and integers between C<0> and C<100>, inclusive.


=head2 DisplayAspectRatio => Str

  The value that Elastic Transcoder adds to the metadata in the output
file.


=head2 FixedGOP => Str

  Applicable only when the value of Video:Codec is one of C<H.264>,
C<MPEG2>, or C<VP8>.

Whether to use a fixed value for C<FixedGOP>. Valid values are C<true>
and C<false>:

=over

=item *

C<true>: Elastic Transcoder uses the value of C<KeyframesMaxDist> for
the distance between key frames (the number of frames in a group of
pictures, or GOP).

=item *

C<false>: The distance between key frames can vary.

=back

C<FixedGOP> must be set to C<true> for C<fmp4> containers.


=head2 FrameRate => Str

  The frames per second for the video stream in the output file. Valid
values include:

C<auto>, C<10>, C<15>, C<23.97>, C<24>, C<25>, C<29.97>, C<30>, C<60>

If you specify C<auto>, Elastic Transcoder uses the detected frame rate
of the input source. If you specify a frame rate, we recommend that you
perform the following calculation:

C<Frame rate = maximum recommended decoding speed in luma
samples/second / (width in pixels * height in pixels)>

where:

=over

=item *

I<width in pixels> and I<height in pixels> represent the Resolution of
the output video.

=item *

I<maximum recommended decoding speed in Luma samples/second> is less
than or equal to the maximum value listed in the following table, based
on the value that you specified for Level.

=back

The maximum recommended decoding speed in Luma samples/second for each
level is described in the following list (I<Level - Decoding speed>):

=over

=item *

1 - 380160

=item *

1b - 380160

=item *

1.1 - 76800

=item *

1.2 - 1536000

=item *

1.3 - 3041280

=item *

2 - 3041280

=item *

2.1 - 5068800

=item *

2.2 - 5184000

=item *

3 - 10368000

=item *

3.1 - 27648000

=item *

3.2 - 55296000

=item *

4 - 62914560

=item *

4.1 - 62914560

=back



=head2 KeyframesMaxDist => Str

  Applicable only when the value of Video:Codec is one of C<H.264>,
C<MPEG2>, or C<VP8>.

The maximum number of frames between key frames. Key frames are fully
encoded frames; the frames between key frames are encoded based, in
part, on the content of the key frames. The value is an integer
formatted as a string; valid values are between 1 (every frame is a key
frame) and 100000, inclusive. A higher value results in higher
compression but may also discernibly decrease video quality.

For C<Smooth> outputs, the C<FrameRate> must have a constant ratio to
the C<KeyframesMaxDist>. This allows C<Smooth> playlists to switch
between different quality levels while the file is being played.

For example, an input file can have a C<FrameRate> of 30 with a
C<KeyframesMaxDist> of 90. The output file then needs to have a ratio
of 1:3. Valid outputs would have C<FrameRate> of 30, 25, and 10, and
C<KeyframesMaxDist> of 90, 75, and 30, respectively.

Alternately, this can be achieved by setting C<FrameRate> to auto and
having the same values for C<MaxFrameRate> and C<KeyframesMaxDist>.


=head2 MaxFrameRate => Str

  If you specify C<auto> for C<FrameRate>, Elastic Transcoder uses the
frame rate of the input video for the frame rate of the output video.
Specify the maximum frame rate that you want Elastic Transcoder to use
when the frame rate of the input video is greater than the desired
maximum frame rate of the output video. Valid values include: C<10>,
C<15>, C<23.97>, C<24>, C<25>, C<29.97>, C<30>, C<60>.


=head2 MaxHeight => Str

  The maximum height of the output video in pixels. If you specify
C<auto>, Elastic Transcoder uses 1080 (Full HD) as the default value.
If you specify a numeric value, enter an even integer between 96 and
3072.


=head2 MaxWidth => Str

  The maximum width of the output video in pixels. If you specify
C<auto>, Elastic Transcoder uses 1920 (Full HD) as the default value.
If you specify a numeric value, enter an even integer between 128 and
4096.


=head2 PaddingPolicy => Str

  When you set C<PaddingPolicy> to C<Pad>, Elastic Transcoder may add
black bars to the top and bottom and/or left and right sides of the
output video to make the total size of the output video match the
values that you specified for C<MaxWidth> and C<MaxHeight>.


=head2 Resolution => Str

  To better control resolution and aspect ratio of output videos, we
recommend that you use the values C<MaxWidth>, C<MaxHeight>,
C<SizingPolicy>, C<PaddingPolicy>, and C<DisplayAspectRatio> instead of
C<Resolution> and C<AspectRatio>. The two groups of settings are
mutually exclusive. Do not use them together.

The width and height of the video in the output file, in pixels. Valid
values are C<auto> and I<width> x I<height>:

=over

=item *

C<auto>: Elastic Transcoder attempts to preserve the width and height
of the input file, subject to the following rules.

=item *

C<I<width> x I<height> >: The width and height of the output video in
pixels.

=back

Note the following about specifying the width and height:

=over

=item *

The width must be an even integer between 128 and 4096, inclusive.

=item *

The height must be an even integer between 96 and 3072, inclusive.

=item *

If you specify a resolution that is less than the resolution of the
input file, Elastic Transcoder rescales the output file to the lower
resolution.

=item *

If you specify a resolution that is greater than the resolution of the
input file, Elastic Transcoder rescales the output to the higher
resolution.

=item *

We recommend that you specify a resolution for which the product of
width and height is less than or equal to the applicable value in the
following list (I<List - Max width x height value>):

=over

=item *

1 - 25344

=item *

1b - 25344

=item *

1.1 - 101376

=item *

1.2 - 101376

=item *

1.3 - 101376

=item *

2 - 101376

=item *

2.1 - 202752

=item *

2.2 - 404720

=item *

3 - 404720

=item *

3.1 - 921600

=item *

3.2 - 1310720

=item *

4 - 2097152

=item *

4.1 - 2097152

=back

=back



=head2 SizingPolicy => Str

  Specify one of the following values to control scaling of the output
video:

=over

=item *

C<Fit>: Elastic Transcoder scales the output video so it matches the
value that you specified in either C<MaxWidth> or C<MaxHeight> without
exceeding the other value.

=item *

C<Fill>: Elastic Transcoder scales the output video so it matches the
value that you specified in either C<MaxWidth> or C<MaxHeight> and
matches or exceeds the other value. Elastic Transcoder centers the
output video and then crops it in the dimension (if any) that exceeds
the maximum value.

=item *

C<Stretch>: Elastic Transcoder stretches the output video to match the
values that you specified for C<MaxWidth> and C<MaxHeight>. If the
relative proportions of the input video and the output video are
different, the output video will be distorted.

=item *

C<Keep>: Elastic Transcoder does not scale the output video. If either
dimension of the input video exceeds the values that you specified for
C<MaxWidth> and C<MaxHeight>, Elastic Transcoder crops the output
video.

=item *

C<ShrinkToFit>: Elastic Transcoder scales the output video down so that
its dimensions match the values that you specified for at least one of
C<MaxWidth> and C<MaxHeight> without exceeding either value. If you
specify this option, Elastic Transcoder does not scale the video up.

=item *

C<ShrinkToFill>: Elastic Transcoder scales the output video down so
that its dimensions match the values that you specified for at least
one of C<MaxWidth> and C<MaxHeight> without dropping below either
value. If you specify this option, Elastic Transcoder does not scale
the video up.

=back



=head2 Watermarks => ArrayRef[L<Paws::ElasticTranscoder::PresetWatermark>]

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



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

