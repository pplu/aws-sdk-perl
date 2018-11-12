
package Paws::KinesisVideoArchivedMedia::GetHLSStreamingSessionURL;
  use Moose;
  has DiscontinuityMode => (is => 'ro', isa => 'Str');
  has Expires => (is => 'ro', isa => 'Int');
  has HLSFragmentSelector => (is => 'ro', isa => 'Paws::KinesisVideoArchivedMedia::HLSFragmentSelector');
  has MaxMediaPlaylistFragmentResults => (is => 'ro', isa => 'Int');
  has PlaybackMode => (is => 'ro', isa => 'Str');
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHLSStreamingSessionURL');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getHLSStreamingSessionURL');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideoArchivedMedia::GetHLSStreamingSessionURLOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::GetHLSStreamingSessionURL - Arguments for method GetHLSStreamingSessionURL on L<Paws::KinesisVideoArchivedMedia>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetHLSStreamingSessionURL on the
L<Amazon Kinesis Video Streams Archived Media|Paws::KinesisVideoArchivedMedia> service. Use the attributes of this class
as arguments to method GetHLSStreamingSessionURL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetHLSStreamingSessionURL.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideoArchivedMedia');
    my $GetHLSStreamingSessionURLOutput =
      $kinesisvideo->GetHLSStreamingSessionURL(
      DiscontinuityMode   => 'ALWAYS',    # OPTIONAL
      Expires             => 1,           # OPTIONAL
      HLSFragmentSelector => {
        FragmentSelectorType => 'PRODUCER_TIMESTAMP'
        ,    # values: PRODUCER_TIMESTAMP, SERVER_TIMESTAMP; OPTIONAL
        TimestampRange => {
          EndTimestamp   => '1970-01-01T01:00:00',    # OPTIONAL
          StartTimestamp => '1970-01-01T01:00:00',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      MaxMediaPlaylistFragmentResults => 1,                  # OPTIONAL
      PlaybackMode                    => 'LIVE',             # OPTIONAL
      StreamARN                       => 'MyResourceARN',    # OPTIONAL
      StreamName                      => 'MyStreamName',     # OPTIONAL
      );

    # Results:
    my $HLSStreamingSessionURL =
      $GetHLSStreamingSessionURLOutput->HLSStreamingSessionURL;

# Returns a L<Paws::KinesisVideoArchivedMedia::GetHLSStreamingSessionURLOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/GetHLSStreamingSessionURL>

=head1 ATTRIBUTES


=head2 DiscontinuityMode => Str

Specifies when flags marking discontinuities between fragments will be
added to the media playlists. The default is C<ALWAYS> when
HLSFragmentSelector is C<SERVER_TIMESTAMP>, and C<NEVER> when it is
C<PRODUCER_TIMESTAMP>.

Media players typically build a timeline of media content to play,
based on the time stamps of each fragment. This means that if there is
any overlap between fragments (as is typical if HLSFragmentSelector is
C<SERVER_TIMESTAMP>), the media player timeline has small gaps between
fragments in some places, and overwrites frames in other places. When
there are discontinuity flags between fragments, the media player is
expected to reset the timeline, resulting in the fragment being played
immediately after the previous fragment. We recommend that you always
have discontinuity flags between fragments if the fragment time stamps
are not accurate or if fragments might be missing. You should not place
discontinuity flags between fragments for the player timeline to
accurately map to the producer time stamps.

Valid values are: C<"ALWAYS">, C<"NEVER">

=head2 Expires => Int

The time in seconds until the requested session expires. This value can
be between 300 (5 minutes) and 43200 (12 hours).

When a session expires, no new calls to C<GetHLSMasterPlaylist>,
C<GetHLSMediaPlaylist>, C<GetMP4InitFragment>, or
C<GetMP4MediaFragment> can be made for that session.

The default is 300 (5 minutes).



=head2 HLSFragmentSelector => L<Paws::KinesisVideoArchivedMedia::HLSFragmentSelector>

The time range of the requested fragment, and the source of the time
stamps.

This parameter is required if C<PlaybackMode> is C<ON_DEMAND>. This
parameter is optional if C<PlaybackMode> is C<LIVE>. If C<PlaybackMode>
is C<LIVE>, the C<FragmentSelectorType> can be set, but the
C<TimestampRange> should not be set. If C<PlaybackMode> is
C<ON_DEMAND>, both C<FragmentSelectorType> and C<TimestampRange> must
be set.



=head2 MaxMediaPlaylistFragmentResults => Int

The maximum number of fragments that are returned in the HLS media
playlists.

When the C<PlaybackMode> is C<LIVE>, the most recent fragments are
returned up to this value. When the C<PlaybackMode> is C<ON_DEMAND>,
the oldest fragments are returned, up to this maximum number.

When there are a higher number of fragments available in a live HLS
media playlist, video players often buffer content before starting
playback. Increasing the buffer size increases the playback latency,
but it decreases the likelihood that rebuffering will occur during
playback. We recommend that a live HLS media playlist have a minimum of
3 fragments and a maximum of 10 fragments.

The default is 5 fragments if C<PlaybackMode> is C<LIVE>, and 1,000 if
C<PlaybackMode> is C<ON_DEMAND>.

The maximum value of 1,000 fragments corresponds to more than 16
minutes of video on streams with 1-second fragments, and more than 2
1/2 hours of video on streams with 10-second fragments.



=head2 PlaybackMode => Str

Whether to retrieve live or archived, on-demand data.

Features of the two types of session include the following:

=over

=item *

B<C<LIVE> >: For sessions of this type, the HLS media playlist is
continually updated with the latest fragments as they become available.
We recommend that the media player retrieve a new playlist on a
one-second interval. When this type of session is played in a media
player, the user interface typically displays a "live" notification,
with no scrubber control for choosing the position in the playback
window to display.

In C<LIVE> mode, the newest available fragments are included in an HLS
media playlist, even if there is a gap between fragments (that is, if a
fragment is missing). A gap like this might cause a media player to
halt or cause a jump in playback. In this mode, fragments are not added
to the HLS media playlist if they are older than the newest fragment in
the playlist. If the missing fragment becomes available after a
subsequent fragment is added to the playlist, the older fragment is not
added, and the gap is not filled.

=item *

B<C<ON_DEMAND> >: For sessions of this type, the HLS media playlist
contains all the fragments for the session, up to the number that is
specified in C<MaxMediaPlaylistFragmentResults>. The playlist must be
retrieved only once for each session. When this type of session is
played in a media player, the user interface typically displays a
scrubber control for choosing the position in the playback window to
display.

=back

In both playback modes, if C<FragmentSelectorType> is
C<PRODUCER_TIMESTAMP>, and if there are multiple fragments with the
same start time stamp, the fragment that has the larger fragment number
(that is, the newer fragment) is included in the HLS media playlist.
The other fragments are not included. Fragments that have different
time stamps but have overlapping durations are still included in the
HLS media playlist. This can lead to unexpected behavior in the media
player.

The default is C<LIVE>.

Valid values are: C<"LIVE">, C<"ON_DEMAND">

=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the stream for which to retrieve the
HLS master playlist URL.

You must specify either the C<StreamName> or the C<StreamARN>.



=head2 StreamName => Str

The name of the stream for which to retrieve the HLS master playlist
URL.

You must specify either the C<StreamName> or the C<StreamARN>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetHLSStreamingSessionURL in L<Paws::KinesisVideoArchivedMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

