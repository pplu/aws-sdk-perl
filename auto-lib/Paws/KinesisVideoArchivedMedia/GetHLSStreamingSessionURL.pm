
package Paws::KinesisVideoArchivedMedia::GetHLSStreamingSessionURL;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::KinesisVideoArchivedMedia::Types qw/KinesisVideoArchivedMedia_HLSFragmentSelector/;
  has ContainerFormat => (is => 'ro', isa => Str, predicate => 1);
  has DiscontinuityMode => (is => 'ro', isa => Str, predicate => 1);
  has DisplayFragmentTimestamp => (is => 'ro', isa => Str, predicate => 1);
  has Expires => (is => 'ro', isa => Int, predicate => 1);
  has HLSFragmentSelector => (is => 'ro', isa => KinesisVideoArchivedMedia_HLSFragmentSelector, predicate => 1);
  has MaxMediaPlaylistFragmentResults => (is => 'ro', isa => Int, predicate => 1);
  has PlaybackMode => (is => 'ro', isa => Str, predicate => 1);
  has StreamARN => (is => 'ro', isa => Str, predicate => 1);
  has StreamName => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetHLSStreamingSessionURL');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/getHLSStreamingSessionURL');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::KinesisVideoArchivedMedia::GetHLSStreamingSessionURLOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DiscontinuityMode' => {
                                        'type' => 'Str'
                                      },
               'ContainerFormat' => {
                                      'type' => 'Str'
                                    },
               'PlaybackMode' => {
                                   'type' => 'Str'
                                 },
               'StreamName' => {
                                 'type' => 'Str'
                               },
               'MaxMediaPlaylistFragmentResults' => {
                                                      'type' => 'Int'
                                                    },
               'Expires' => {
                              'type' => 'Int'
                            },
               'DisplayFragmentTimestamp' => {
                                               'type' => 'Str'
                                             },
               'HLSFragmentSelector' => {
                                          'class' => 'Paws::KinesisVideoArchivedMedia::HLSFragmentSelector',
                                          'type' => 'KinesisVideoArchivedMedia_HLSFragmentSelector'
                                        },
               'StreamARN' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

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
      ContainerFormat          => 'FRAGMENTED_MP4',    # OPTIONAL
      DiscontinuityMode        => 'ALWAYS',            # OPTIONAL
      DisplayFragmentTimestamp => 'ALWAYS',            # OPTIONAL
      Expires                  => 1,                   # OPTIONAL
      HLSFragmentSelector      => {
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


=head2 ContainerFormat => Str

Specifies which format should be used for packaging the media.
Specifying the C<FRAGMENTED_MP4> container format packages the media
into MP4 fragments (fMP4 or CMAF). This is the recommended packaging
because there is minimal packaging overhead. The other container format
option is C<MPEG_TS>. HLS has supported MPEG TS chunks since it was
released and is sometimes the only supported packaging on older HLS
players. MPEG TS typically has a 5-25 percent packaging overhead. This
means MPEG TS typically requires 5-25 percent more bandwidth and cost
than fMP4.

The default is C<FRAGMENTED_MP4>.

Valid values are: C<"FRAGMENTED_MP4">, C<"MPEG_TS">

=head2 DiscontinuityMode => Str

Specifies when flags marking discontinuities between fragments are
added to the media playlists.

Media players typically build a timeline of media content to play,
based on the timestamps of each fragment. This means that if there is
any overlap or gap between fragments (as is typical if
HLSFragmentSelector is set to C<SERVER_TIMESTAMP>), the media player
timeline will also have small gaps between fragments in some places,
and will overwrite frames in other places. Gaps in the media player
timeline can cause playback to stall and overlaps can cause playback to
be jittery. When there are discontinuity flags between fragments, the
media player is expected to reset the timeline, resulting in the next
fragment being played immediately after the previous fragment.

The following modes are supported:

=over

=item *

C<ALWAYS>: a discontinuity marker is placed between every fragment in
the HLS media playlist. It is recommended to use a value of C<ALWAYS>
if the fragment timestamps are not accurate.

=item *

C<NEVER>: no discontinuity markers are placed anywhere. It is
recommended to use a value of C<NEVER> to ensure the media player
timeline most accurately maps to the producer timestamps.

=item *

C<ON_DISCONTIUNITY>: a discontinuity marker is placed between fragments
that have a gap or overlap of more than 50 milliseconds. For most
playback scenarios, it is recommended to use a value of
C<ON_DISCONTINUITY> so that the media player timeline is only reset
when there is a significant issue with the media timeline (e.g. a
missing fragment).

=back

The default is C<ALWAYS> when HLSFragmentSelector is set to
C<SERVER_TIMESTAMP>, and C<NEVER> when it is set to
C<PRODUCER_TIMESTAMP>.

Valid values are: C<"ALWAYS">, C<"NEVER">, C<"ON_DISCONTINUITY">

=head2 DisplayFragmentTimestamp => Str

Specifies when the fragment start timestamps should be included in the
HLS media playlist. Typically, media players report the playhead
position as a time relative to the start of the first fragment in the
playback session. However, when the start timestamps are included in
the HLS media playlist, some media players might report the current
playhead as an absolute time based on the fragment timestamps. This can
be useful for creating a playback experience that shows viewers the
wall-clock time of the media.

The default is C<NEVER>. When HLSFragmentSelector is
C<SERVER_TIMESTAMP>, the timestamps will be the server start
timestamps. Similarly, when HLSFragmentSelector is
C<PRODUCER_TIMESTAMP>, the timestamps will be the producer start
timestamps.

Valid values are: C<"ALWAYS">, C<"NEVER">

=head2 Expires => Int

The time in seconds until the requested session expires. This value can
be between 300 (5 minutes) and 43200 (12 hours).

When a session expires, no new calls to C<GetHLSMasterPlaylist>,
C<GetHLSMediaPlaylist>, C<GetMP4InitFragment>, C<GetMP4MediaFragment>,
or C<GetTSFragment> can be made for that session.

The default is 300 (5 minutes).



=head2 HLSFragmentSelector => KinesisVideoArchivedMedia_HLSFragmentSelector

The time range of the requested fragment and the source of the
timestamps.

This parameter is required if C<PlaybackMode> is C<ON_DEMAND> or
C<LIVE_REPLAY>. This parameter is optional if PlaybackMode isC<
C<LIVE>. If C<PlaybackMode> is C<LIVE>, the C<FragmentSelectorType> can
be set, but the C<TimestampRange> should not be set. If C<PlaybackMode>
is C<ON_DEMAND> or C<LIVE_REPLAY>, both C<FragmentSelectorType> and
C<TimestampRange> must be set.>



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

The default is 5 fragments if C<PlaybackMode> is C<LIVE> or
C<LIVE_REPLAY>, and 1,000 if C<PlaybackMode> is C<ON_DEMAND>.

The maximum value of 1,000 fragments corresponds to more than 16
minutes of video on streams with 1-second fragments, and more than 2
1/2 hours of video on streams with 10-second fragments.



=head2 PlaybackMode => Str

Whether to retrieve live, live replay, or archived, on-demand data.

Features of the three types of sessions include the following:

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

B<C<LIVE_REPLAY> >: For sessions of this type, the HLS media playlist
is updated similarly to how it is updated for C<LIVE> mode except that
it starts by including fragments from a given start time. Instead of
fragments being added as they are ingested, fragments are added as the
duration of the next fragment elapses. For example, if the fragments in
the session are two seconds long, then a new fragment is added to the
media playlist every two seconds. This mode is useful to be able to
start playback from when an event is detected and continue live
streaming media that has not yet been ingested as of the time of the
session creation. This mode is also useful to stream previously
archived media without being limited by the 1,000 fragment limit in the
C<ON_DEMAND> mode.

=item *

B<C<ON_DEMAND> >: For sessions of this type, the HLS media playlist
contains all the fragments for the session, up to the number that is
specified in C<MaxMediaPlaylistFragmentResults>. The playlist must be
retrieved only once for each session. When this type of session is
played in a media player, the user interface typically displays a
scrubber control for choosing the position in the playback window to
display.

=back

In all playback modes, if C<FragmentSelectorType> is
C<PRODUCER_TIMESTAMP>, and if there are multiple fragments with the
same start timestamp, the fragment that has the larger fragment number
(that is, the newer fragment) is included in the HLS media playlist.
The other fragments are not included. Fragments that have different
timestamps but have overlapping durations are still included in the HLS
media playlist. This can lead to unexpected behavior in the media
player.

The default is C<LIVE>.

Valid values are: C<"LIVE">, C<"LIVE_REPLAY">, C<"ON_DEMAND">

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

