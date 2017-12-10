package Paws::ElasticTranscoder::CaptionFormat;
  use Moose;
  has Encryption => (is => 'ro', isa => 'Paws::ElasticTranscoder::Encryption');
  has Format => (is => 'ro', isa => 'Str');
  has Pattern => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::CaptionFormat

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::CaptionFormat object:

  $service_obj->Method(Att1 => { Encryption => $value, ..., Pattern => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::CaptionFormat object:

  $result = $service_obj->Method(...);
  $result->Att1->Encryption

=head1 DESCRIPTION

The file format of the output captions. If you leave this value blank,
Elastic Transcoder returns an error.

=head1 ATTRIBUTES


=head2 Encryption => L<Paws::ElasticTranscoder::Encryption>

  The encryption settings, if any, that you want Elastic Transcoder to
apply to your caption formats.


=head2 Format => Str

  The format you specify determines whether Elastic Transcoder generates
an embedded or sidecar caption for this output.

=over

=item *

B<Valid Embedded Caption Formats:>

=over

=item *

B<for FLAC>: None

=item *

B<For MP3>: None

=item *

B<For MP4>: mov-text

=item *

B<For MPEG-TS>: None

=item *

B<For ogg>: None

=item *

B<For webm>: None

=back

=item *

B<Valid Sidecar Caption Formats:> Elastic Transcoder supports dfxp
(first div element only), scc, srt, and webvtt. If you want ttml or
smpte-tt compatible captions, specify dfxp as your output format.

=over

=item *

B<For FMP4>: dfxp

=item *

B<Non-FMP4 outputs>: All sidecar types

=back

C<fmp4> captions have an extension of C<.ismt>

=back



=head2 Pattern => Str

  The prefix for caption filenames, in the form
I<description>-C<{language}>, where:

=over

=item *

I<description> is a description of the video.

=item *

C<{language}> is a literal value that Elastic Transcoder replaces with
the two- or three-letter code for the language of the caption in the
output file names.

=back

If you don't include C<{language}> in the file name pattern, Elastic
Transcoder automatically appends "C<{language}>" to the value that you
specify for the description. In addition, Elastic Transcoder
automatically appends the count to the end of the segment files.

For example, suppose you're transcoding into srt format. When you enter
"Sydney-{language}-sunrise", and the language of the captions is
English (en), the name of the first caption file is be
Sydney-en-sunrise00000.srt.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

