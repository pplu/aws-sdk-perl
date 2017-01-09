package Paws::ElasticTranscoder::CreateJobOutput;
  use Moose;
  has AlbumArt => (is => 'ro', isa => 'Paws::ElasticTranscoder::JobAlbumArt');
  has Captions => (is => 'ro', isa => 'Paws::ElasticTranscoder::Captions');
  has Composition => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::Clip]');
  has Encryption => (is => 'ro', isa => 'Paws::ElasticTranscoder::Encryption');
  has Key => (is => 'ro', isa => 'Str');
  has PresetId => (is => 'ro', isa => 'Str');
  has Rotate => (is => 'ro', isa => 'Str');
  has SegmentDuration => (is => 'ro', isa => 'Str');
  has ThumbnailEncryption => (is => 'ro', isa => 'Paws::ElasticTranscoder::Encryption');
  has ThumbnailPattern => (is => 'ro', isa => 'Str');
  has Watermarks => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::JobWatermark]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::CreateJobOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::CreateJobOutput object:

  $service_obj->Method(Att1 => { AlbumArt => $value, ..., Watermarks => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::CreateJobOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->AlbumArt

=head1 DESCRIPTION

The C<CreateJobOutput> structure.

=head1 ATTRIBUTES


=head2 AlbumArt => L<Paws::ElasticTranscoder::JobAlbumArt>

  Information about the album art that you want Elastic Transcoder to add
to the file during transcoding. You can specify up to twenty album
artworks for each output. Settings for each artwork must be defined in
the job for the current output.


=head2 Captions => L<Paws::ElasticTranscoder::Captions>

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


=head2 Composition => ArrayRef[L<Paws::ElasticTranscoder::Clip>]

  You can create an output file that contains an excerpt from the input
file. This excerpt, called a clip, can come from the beginning, middle,
or end of the file. The Composition object contains settings for the
clips that make up an output file. For the current release, you can
only specify settings for a single clip per output file. The
Composition object cannot be null.


=head2 Encryption => L<Paws::ElasticTranscoder::Encryption>

  You can specify encryption settings for any output files that you want
to use for a transcoding job. This includes the output file and any
watermarks, thumbnails, album art, or captions that you want to use.
You must specify encryption settings for each file individually.


=head2 Key => Str

  The name to assign to the transcoded file. Elastic Transcoder saves the
file in the Amazon S3 bucket specified by the C<OutputBucket> object in
the pipeline that is specified by the pipeline ID. If a file with the
specified name already exists in the output bucket, the job fails.


=head2 PresetId => Str

  The C<Id> of the preset to use for this job. The preset determines the
audio, video, and thumbnail settings that Elastic Transcoder uses for
transcoding.


=head2 Rotate => Str

  The number of degrees clockwise by which you want Elastic Transcoder to
rotate the output relative to the input. Enter one of the following
values: C<auto>, C<0>, C<90>, C<180>, C<270>. The value C<auto>
generally works only if the file that you're transcoding contains
rotation metadata.


=head2 SegmentDuration => Str

  (Outputs in Fragmented MP4 or MPEG-TS format only.

If you specify a preset in C<PresetId> for which the value of
C<Container> is C<fmp4> (Fragmented MP4) or C<ts> (MPEG-TS),
C<SegmentDuration> is the target maximum duration of each segment in
seconds. For C<HLSv3> format playlists, each media segment is stored in
a separate C<.ts> file. For C<HLSv4> and C<Smooth> playlists, all media
segments for an output are stored in a single file. Each segment is
approximately the length of the C<SegmentDuration>, though individual
segments might be shorter or longer.

The range of valid values is 1 to 60 seconds. If the duration of the
video is not evenly divisible by C<SegmentDuration>, the duration of
the last segment is the remainder of total length/SegmentDuration.

Elastic Transcoder creates an output-specific playlist for each output
C<HLS> output that you specify in OutputKeys. To add an output to the
master playlist for this job, include it in the C<OutputKeys> of the
associated playlist.


=head2 ThumbnailEncryption => L<Paws::ElasticTranscoder::Encryption>

  The encryption settings, if any, that you want Elastic Transcoder to
apply to your thumbnail.


=head2 ThumbnailPattern => Str

  Whether you want Elastic Transcoder to create thumbnails for your
videos and, if so, how you want Elastic Transcoder to name the files.

If you don't want Elastic Transcoder to create thumbnails, specify "".

If you do want Elastic Transcoder to create thumbnails, specify the
information that you want to include in the file name for each
thumbnail. You can specify the following values in any sequence:

=over

=item *

B<C<{count}> (Required)>: If you want to create thumbnails, you must
include C<{count}> in the C<ThumbnailPattern> object. Wherever you
specify C<{count}>, Elastic Transcoder adds a five-digit sequence
number (beginning with B<00001>) to thumbnail file names. The number
indicates where a given thumbnail appears in the sequence of thumbnails
for a transcoded file.

If you specify a literal value and/or C<{resolution}> but you omit
C<{count}>, Elastic Transcoder returns a validation error and does not
create the job.

=item *

B<Literal values (Optional)>: You can specify literal values anywhere
in the C<ThumbnailPattern> object. For example, you can include them as
a file name prefix or as a delimiter between C<{resolution}> and
C<{count}>.

=item *

B<C<{resolution}> (Optional)>: If you want Elastic Transcoder to
include the resolution in the file name, include C<{resolution}> in the
C<ThumbnailPattern> object.

=back

When creating thumbnails, Elastic Transcoder automatically saves the
files in the format (.jpg or .png) that appears in the preset that you
specified in the C<PresetID> value of C<CreateJobOutput>. Elastic
Transcoder also appends the applicable file name extension.


=head2 Watermarks => ArrayRef[L<Paws::ElasticTranscoder::JobWatermark>]

  Information about the watermarks that you want Elastic Transcoder to
add to the video during transcoding. You can specify up to four
watermarks for each output. Settings for each watermark must be defined
in the preset for the current output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

