package Paws::ElasticTranscoder::JobInput;
  use Moose;
  has AspectRatio => (is => 'ro', isa => 'Str');
  has Container => (is => 'ro', isa => 'Str');
  has DetectedProperties => (is => 'ro', isa => 'Paws::ElasticTranscoder::DetectedProperties');
  has Encryption => (is => 'ro', isa => 'Paws::ElasticTranscoder::Encryption');
  has FrameRate => (is => 'ro', isa => 'Str');
  has InputCaptions => (is => 'ro', isa => 'Paws::ElasticTranscoder::InputCaptions');
  has Interlaced => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has Resolution => (is => 'ro', isa => 'Str');
  has TimeSpan => (is => 'ro', isa => 'Paws::ElasticTranscoder::TimeSpan');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::JobInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::JobInput object:

  $service_obj->Method(Att1 => { AspectRatio => $value, ..., TimeSpan => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::JobInput object:

  $result = $service_obj->Method(...);
  $result->Att1->AspectRatio

=head1 DESCRIPTION

Information about the file that you're transcoding.

=head1 ATTRIBUTES


=head2 AspectRatio => Str

  The aspect ratio of the input file. If you want Elastic Transcoder to
automatically detect the aspect ratio of the input file, specify
C<auto>. If you want to specify the aspect ratio for the output file,
enter one of the following values:

C<1:1>, C<4:3>, C<3:2>, C<16:9>

If you specify a value other than C<auto>, Elastic Transcoder disables
automatic detection of the aspect ratio.


=head2 Container => Str

  The container type for the input file. If you want Elastic Transcoder
to automatically detect the container type of the input file, specify
C<auto>. If you want to specify the container type for the input file,
enter one of the following values:

C<3gp>, C<aac>, C<asf>, C<avi>, C<divx>, C<flv>, C<m4a>, C<mkv>,
C<mov>, C<mp3>, C<mp4>, C<mpeg>, C<mpeg-ps>, C<mpeg-ts>, C<mxf>,
C<ogg>, C<vob>, C<wav>, C<webm>


=head2 DetectedProperties => L<Paws::ElasticTranscoder::DetectedProperties>

  The detected properties of the input file.


=head2 Encryption => L<Paws::ElasticTranscoder::Encryption>

  The encryption settings, if any, that are used for decrypting your
input files. If your input file is encrypted, you must specify the mode
that Elastic Transcoder uses to decrypt your file.


=head2 FrameRate => Str

  The frame rate of the input file. If you want Elastic Transcoder to
automatically detect the frame rate of the input file, specify C<auto>.
If you want to specify the frame rate for the input file, enter one of
the following values:

C<10>, C<15>, C<23.97>, C<24>, C<25>, C<29.97>, C<30>, C<60>

If you specify a value other than C<auto>, Elastic Transcoder disables
automatic detection of the frame rate.


=head2 InputCaptions => L<Paws::ElasticTranscoder::InputCaptions>

  You can configure Elastic Transcoder to transcode captions, or
subtitles, from one format to another. All captions must be in UTF-8.
Elastic Transcoder supports two types of captions:

=over

=item *

B<Embedded:> Embedded captions are included in the same file as the
audio and video. Elastic Transcoder supports only one embedded caption
per language, to a maximum of 300 embedded captions per file.

Valid input values include: C<CEA-608 (EIA-608>, first non-empty
channel only), C<CEA-708 (EIA-708>, first non-empty channel only), and
C<mov-text>

Valid outputs include: C<mov-text>

Elastic Transcoder supports a maximum of one embedded format per
output.

=item *

B<Sidecar:> Sidecar captions are kept in a separate metadata file from
the audio and video data. Sidecar captions require a player that is
capable of understanding the relationship between the video file and
the sidecar file. Elastic Transcoder supports only one sidecar caption
per language, to a maximum of 20 sidecar captions per file.

Valid input values include: C<dfxp> (first div element only),
C<ebu-tt>, C<scc>, C<smpt>, C<srt>, C<ttml> (first div element only),
and C<webvtt>

Valid outputs include: C<dfxp> (first div element only), C<scc>,
C<srt>, and C<webvtt>.

=back

If you want ttml or smpte-tt compatible captions, specify dfxp as your
output format.

Elastic Transcoder does not support OCR (Optical Character
Recognition), does not accept pictures as a valid input for captions,
and is not available for audio-only transcoding. Elastic Transcoder
does not preserve text formatting (for example, italics) during the
transcoding process.

To remove captions or leave the captions empty, set C<Captions> to
null. To pass through existing captions unchanged, set the
C<MergePolicy> to C<MergeRetain>, and pass in a null C<CaptionSources>
array.

For more information on embedded files, see the Subtitles Wikipedia
page.

For more information on sidecar files, see the Extensible Metadata
Platform and Sidecar file Wikipedia pages.


=head2 Interlaced => Str

  Whether the input file is interlaced. If you want Elastic Transcoder to
automatically detect whether the input file is interlaced, specify
C<auto>. If you want to specify whether the input file is interlaced,
enter one of the following values:

C<true>, C<false>

If you specify a value other than C<auto>, Elastic Transcoder disables
automatic detection of interlacing.


=head2 Key => Str

  The name of the file to transcode. Elsewhere in the body of the JSON
block is the the ID of the pipeline to use for processing the job. The
C<InputBucket> object in that pipeline tells Elastic Transcoder which
Amazon S3 bucket to get the file from.

If the file name includes a prefix, such as C<cooking/lasagna.mpg>,
include the prefix in the key. If the file isn't in the specified
bucket, Elastic Transcoder returns an error.


=head2 Resolution => Str

  This value must be C<auto>, which causes Elastic Transcoder to
automatically detect the resolution of the input file.


=head2 TimeSpan => L<Paws::ElasticTranscoder::TimeSpan>

  Settings for clipping an input. Each input can have different clip
settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

