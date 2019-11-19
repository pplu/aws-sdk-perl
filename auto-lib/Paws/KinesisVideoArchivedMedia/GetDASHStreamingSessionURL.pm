
package Paws::KinesisVideoArchivedMedia::GetDASHStreamingSessionURL;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::KinesisVideoArchivedMedia::Types qw/KinesisVideoArchivedMedia_DASHFragmentSelector/;
  has DASHFragmentSelector => (is => 'ro', isa => KinesisVideoArchivedMedia_DASHFragmentSelector, predicate => 1);
  has DisplayFragmentNumber => (is => 'ro', isa => Str, predicate => 1);
  has DisplayFragmentTimestamp => (is => 'ro', isa => Str, predicate => 1);
  has Expires => (is => 'ro', isa => Int, predicate => 1);
  has MaxManifestFragmentResults => (is => 'ro', isa => Int, predicate => 1);
  has PlaybackMode => (is => 'ro', isa => Str, predicate => 1);
  has StreamARN => (is => 'ro', isa => Str, predicate => 1);
  has StreamName => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetDASHStreamingSessionURL');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/getDASHStreamingSessionURL');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::KinesisVideoArchivedMedia::GetDASHStreamingSessionURLOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DASHFragmentSelector' => {
                                           'class' => 'Paws::KinesisVideoArchivedMedia::DASHFragmentSelector',
                                           'type' => 'KinesisVideoArchivedMedia_DASHFragmentSelector'
                                         },
               'StreamARN' => {
                                'type' => 'Str'
                              },
               'DisplayFragmentTimestamp' => {
                                               'type' => 'Str'
                                             },
               'MaxManifestFragmentResults' => {
                                                 'type' => 'Int'
                                               },
               'DisplayFragmentNumber' => {
                                            'type' => 'Str'
                                          },
               'Expires' => {
                              'type' => 'Int'
                            },
               'StreamName' => {
                                 'type' => 'Str'
                               },
               'PlaybackMode' => {
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

Paws::KinesisVideoArchivedMedia::GetDASHStreamingSessionURL - Arguments for method GetDASHStreamingSessionURL on L<Paws::KinesisVideoArchivedMedia>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDASHStreamingSessionURL on the
L<Amazon Kinesis Video Streams Archived Media|Paws::KinesisVideoArchivedMedia> service. Use the attributes of this class
as arguments to method GetDASHStreamingSessionURL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDASHStreamingSessionURL.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideoArchivedMedia');
    my $GetDASHStreamingSessionURLOutput =
      $kinesisvideo->GetDASHStreamingSessionURL(
      DASHFragmentSelector => {
        FragmentSelectorType => 'PRODUCER_TIMESTAMP'
        ,    # values: PRODUCER_TIMESTAMP, SERVER_TIMESTAMP; OPTIONAL
        TimestampRange => {
          EndTimestamp   => '1970-01-01T01:00:00',    # OPTIONAL
          StartTimestamp => '1970-01-01T01:00:00',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      DisplayFragmentNumber      => 'ALWAYS',           # OPTIONAL
      DisplayFragmentTimestamp   => 'ALWAYS',           # OPTIONAL
      Expires                    => 1,                  # OPTIONAL
      MaxManifestFragmentResults => 1,                  # OPTIONAL
      PlaybackMode               => 'LIVE',             # OPTIONAL
      StreamARN                  => 'MyResourceARN',    # OPTIONAL
      StreamName                 => 'MyStreamName',     # OPTIONAL
      );

    # Results:
    my $DASHStreamingSessionURL =
      $GetDASHStreamingSessionURLOutput->DASHStreamingSessionURL;

# Returns a L<Paws::KinesisVideoArchivedMedia::GetDASHStreamingSessionURLOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/GetDASHStreamingSessionURL>

=head1 ATTRIBUTES


=head2 DASHFragmentSelector => KinesisVideoArchivedMedia_DASHFragmentSelector

The time range of the requested fragment and the source of the
timestamps.

This parameter is required if C<PlaybackMode> is C<ON_DEMAND> or
C<LIVE_REPLAY>. This parameter is optional if PlaybackMode isC<
C<LIVE>. If C<PlaybackMode> is C<LIVE>, the C<FragmentSelectorType> can
be set, but the C<TimestampRange> should not be set. If C<PlaybackMode>
is C<ON_DEMAND> or C<LIVE_REPLAY>, both C<FragmentSelectorType> and
C<TimestampRange> must be set.>



=head2 DisplayFragmentNumber => Str

Fragments are identified in the manifest file based on their sequence
number in the session. If DisplayFragmentNumber is set to C<ALWAYS>,
the Kinesis Video Streams fragment number is added to each S element in
the manifest file with the attribute name E<ldquo>kvs:fnE<rdquo>. These
fragment numbers can be used for logging or for use with other APIs
(e.g. C<GetMedia> and C<GetMediaForFragmentList>). A custom MPEG-DASH
media player is necessary to leverage these this custom attribute.

The default value is C<NEVER>.

Valid values are: C<"ALWAYS">, C<"NEVER">

=head2 DisplayFragmentTimestamp => Str

Per the MPEG-DASH specification, the wall-clock time of fragments in
the manifest file can be derived using attributes in the manifest
itself. However, typically, MPEG-DASH compatible media players do not
properly handle gaps in the media timeline. Kinesis Video Streams
adjusts the media timeline in the manifest file to enable playback of
media with discontinuities. Therefore, the wall-clock time derived from
the manifest file may be inaccurate. If DisplayFragmentTimestamp is set
to C<ALWAYS>, the accurate fragment timestamp is added to each S
element in the manifest file with the attribute name
E<ldquo>kvs:tsE<rdquo>. A custom MPEG-DASH media player is necessary to
leverage this custom attribute.

The default value is C<NEVER>. When DASHFragmentSelector is
C<SERVER_TIMESTAMP>, the timestamps will be the server start
timestamps. Similarly, when DASHFragmentSelector is
C<PRODUCER_TIMESTAMP>, the timestamps will be the producer start
timestamps.

Valid values are: C<"ALWAYS">, C<"NEVER">

=head2 Expires => Int

The time in seconds until the requested session expires. This value can
be between 300 (5 minutes) and 43200 (12 hours).

When a session expires, no new calls to C<GetDashManifest>,
C<GetMP4InitFragment>, or C<GetMP4MediaFragment> can be made for that
session.

The default is 300 (5 minutes).



=head2 MaxManifestFragmentResults => Int

The maximum number of fragments that are returned in the MPEG-DASH
manifest.

When the C<PlaybackMode> is C<LIVE>, the most recent fragments are
returned up to this value. When the C<PlaybackMode> is C<ON_DEMAND>,
the oldest fragments are returned, up to this maximum number.

When there are a higher number of fragments available in a live
MPEG-DASH manifest, video players often buffer content before starting
playback. Increasing the buffer size increases the playback latency,
but it decreases the likelihood that rebuffering will occur during
playback. We recommend that a live MPEG-DASH manifest have a minimum of
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

B<C<LIVE> >: For sessions of this type, the MPEG-DASH manifest is
continually updated with the latest fragments as they become available.
We recommend that the media player retrieve a new manifest on a
one-second interval. When this type of session is played in a media
player, the user interface typically displays a "live" notification,
with no scrubber control for choosing the position in the playback
window to display.

In C<LIVE> mode, the newest available fragments are included in an
MPEG-DASH manifest, even if there is a gap between fragments (that is,
if a fragment is missing). A gap like this might cause a media player
to halt or cause a jump in playback. In this mode, fragments are not
added to the MPEG-DASH manifest if they are older than the newest
fragment in the playlist. If the missing fragment becomes available
after a subsequent fragment is added to the manifest, the older
fragment is not added, and the gap is not filled.

=item *

B<C<LIVE_REPLAY> >: For sessions of this type, the MPEG-DASH manifest
is updated similarly to how it is updated for C<LIVE> mode except that
it starts by including fragments from a given start time. Instead of
fragments being added as they are ingested, fragments are added as the
duration of the next fragment elapses. For example, if the fragments in
the session are two seconds long, then a new fragment is added to the
manifest every two seconds. This mode is useful to be able to start
playback from when an event is detected and continue live streaming
media that has not yet been ingested as of the time of the session
creation. This mode is also useful to stream previously archived media
without being limited by the 1,000 fragment limit in the C<ON_DEMAND>
mode.

=item *

B<C<ON_DEMAND> >: For sessions of this type, the MPEG-DASH manifest
contains all the fragments for the session, up to the number that is
specified in C<MaxMediaPlaylistFragmentResults>. The manifest must be
retrieved only once for each session. When this type of session is
played in a media player, the user interface typically displays a
scrubber control for choosing the position in the playback window to
display.

=back

In all playback modes, if C<FragmentSelectorType> is
C<PRODUCER_TIMESTAMP>, and if there are multiple fragments with the
same start timestamp, the fragment that has the larger fragment number
(that is, the newer fragment) is included in the MPEG-DASH manifest.
The other fragments are not included. Fragments that have different
timestamps but have overlapping durations are still included in the
MPEG-DASH manifest. This can lead to unexpected behavior in the media
player.

The default is C<LIVE>.

Valid values are: C<"LIVE">, C<"LIVE_REPLAY">, C<"ON_DEMAND">

=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the stream for which to retrieve the
MPEG-DASH manifest URL.

You must specify either the C<StreamName> or the C<StreamARN>.



=head2 StreamName => Str

The name of the stream for which to retrieve the MPEG-DASH manifest
URL.

You must specify either the C<StreamName> or the C<StreamARN>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDASHStreamingSessionURL in L<Paws::KinesisVideoArchivedMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

