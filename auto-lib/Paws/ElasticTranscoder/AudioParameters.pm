package Paws::ElasticTranscoder::AudioParameters;
  use Moose;
  has AudioPackingMode => (is => 'ro', isa => 'Str');
  has BitRate => (is => 'ro', isa => 'Str');
  has Channels => (is => 'ro', isa => 'Str');
  has Codec => (is => 'ro', isa => 'Str');
  has CodecOptions => (is => 'ro', isa => 'Paws::ElasticTranscoder::AudioCodecOptions');
  has SampleRate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::AudioParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::AudioParameters object:

  $service_obj->Method(Att1 => { AudioPackingMode => $value, ..., SampleRate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::AudioParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioPackingMode

=head1 DESCRIPTION

Parameters required for transcoding audio.

=head1 ATTRIBUTES


=head2 AudioPackingMode => Str

  The method of organizing audio channels and tracks. Use
C<Audio:Channels> to specify the number of channels in your output, and
C<Audio:AudioPackingMode> to specify the number of tracks and their
relation to the channels. If you do not specify an
C<Audio:AudioPackingMode>, Elastic Transcoder uses C<SingleTrack>.

The following values are valid:

C<SingleTrack>, C<OneChannelPerTrack>, and
C<OneChannelPerTrackWithMosTo8Tracks>

When you specify C<SingleTrack>, Elastic Transcoder creates a single
track for your output. The track can have up to eight channels. Use
C<SingleTrack> for all non-C<mxf> containers.

The outputs of C<SingleTrack> for a specific channel value and inputs
are as follows:

=over

=item *

C<0> B< channels with any input:> Audio omitted from the output

=item *

C<1, 2, or auto > B<channels with no audio input:> Audio omitted from
the output

=item *

C<1 > B<channel with any input with audio:> One track with one channel,
downmixed if necessary

=item *

C<2 > B<channels with one track with one channel:> One track with two
identical channels

=item *

C<2 or auto > B<channels with two tracks with one channel each:> One
track with two channels

=item *

C<2 or auto > B<channels with one track with two channels:> One track
with two channels

=item *

C<2 > B<channels with one track with multiple channels:> One track with
two channels

=item *

C<auto > B<channels with one track with one channel:> One track with
one channel

=item *

C<auto > B<channels with one track with multiple channels:> One track
with multiple channels

=back

When you specify C<OneChannelPerTrack>, Elastic Transcoder creates a
new track for every channel in your output. Your output can have up to
eight single-channel tracks.

The outputs of C<OneChannelPerTrack> for a specific channel value and
inputs are as follows:

=over

=item *

C<0 > B<channels with any input:> Audio omitted from the output

=item *

C<1, 2, or auto > B<channels with no audio input:> Audio omitted from
the output

=item *

C<1 > B<channel with any input with audio:> One track with one channel,
downmixed if necessary

=item *

C<2 > B<channels with one track with one channel:> Two tracks with one
identical channel each

=item *

C<2 or auto > B<channels with two tracks with one channel each:> Two
tracks with one channel each

=item *

C<2 or auto > B<channels with one track with two channels:> Two tracks
with one channel each

=item *

C<2 > B<channels with one track with multiple channels:> Two tracks
with one channel each

=item *

C<auto > B<channels with one track with one channel:> One track with
one channel

=item *

C<auto > B<channels with one track with multiple channels:> Up to eight
tracks with one channel each

=back

When you specify C<OneChannelPerTrackWithMosTo8Tracks>, Elastic
Transcoder creates eight single-channel tracks for your output. All
tracks that do not contain audio data from an input channel are MOS, or
Mit Out Sound, tracks.

The outputs of C<OneChannelPerTrackWithMosTo8Tracks> for a specific
channel value and inputs are as follows:

=over

=item *

C<0 > B<channels with any input:> Audio omitted from the output

=item *

C<1, 2, or auto > B<channels with no audio input:> Audio omitted from
the output

=item *

C<1 > B<channel with any input with audio:> One track with one channel,
downmixed if necessary, plus six MOS tracks

=item *

C<2 > B<channels with one track with one channel:> Two tracks with one
identical channel each, plus six MOS tracks

=item *

C<2 or auto > B<channels with two tracks with one channel each:> Two
tracks with one channel each, plus six MOS tracks

=item *

C<2 or auto > B<channels with one track with two channels:> Two tracks
with one channel each, plus six MOS tracks

=item *

C<2 > B<channels with one track with multiple channels:> Two tracks
with one channel each, plus six MOS tracks

=item *

C<auto > B<channels with one track with one channel:> One track with
one channel, plus seven MOS tracks

=item *

C<auto > B<channels with one track with multiple channels:> Up to eight
tracks with one channel each, plus MOS tracks until there are eight
tracks in all

=back



=head2 BitRate => Str

  The bit rate of the audio stream in the output file, in
kilobits/second. Enter an integer between 64 and 320, inclusive.


=head2 Channels => Str

  The number of audio channels in the output file. The following values
are valid:

C<auto>, C<0>, C<1>, C<2>

One channel carries the information played by a single speaker. For
example, a stereo track with two channels sends one channel to the left
speaker, and the other channel to the right speaker. The output
channels are organized into tracks. If you want Elastic Transcoder to
automatically detect the number of audio channels in the input file and
use that value for the output file, select C<auto>.

The output of a specific channel value and inputs are as follows:

=over

=item *

C<auto> B< channel specified, with any input:> Pass through up to eight
input channels.

=item *

C<0> B< channels specified, with any input:> Audio omitted from the
output.

=item *

C<1> B< channel specified, with at least one input channel:> Mono
sound.

=item *

C<2> B< channels specified, with any input:> Two identical mono
channels or stereo. For more information about tracks, see
C<Audio:AudioPackingMode.>

=back

For more information about how Elastic Transcoder organizes channels
and tracks, see C<Audio:AudioPackingMode>.


=head2 Codec => Str

  The audio codec for the output file. Valid values include C<aac>,
C<flac>, C<mp2>, C<mp3>, C<pcm>, and C<vorbis>.


=head2 CodecOptions => L<Paws::ElasticTranscoder::AudioCodecOptions>

  If you specified C<AAC> for C<Audio:Codec>, this is the C<AAC>
compression profile to use. Valid values include:

C<auto>, C<AAC-LC>, C<HE-AAC>, C<HE-AACv2>

If you specify C<auto>, Elastic Transcoder chooses a profile based on
the bit rate of the output file.


=head2 SampleRate => Str

  The sample rate of the audio stream in the output file, in Hertz. Valid
values include:

C<auto>, C<22050>, C<32000>, C<44100>, C<48000>, C<96000>

If you specify C<auto>, Elastic Transcoder automatically detects the
sample rate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

