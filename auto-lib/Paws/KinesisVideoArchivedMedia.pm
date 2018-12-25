package Paws::KinesisVideoArchivedMedia;
  use Moose;
  sub service { 'kinesisvideo' }
  sub signing_name { 'kinesisvideo' }
  sub version { '2017-09-30' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetHLSStreamingSessionURL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideoArchivedMedia::GetHLSStreamingSessionURL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMediaForFragmentList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideoArchivedMedia::GetMediaForFragmentList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFragments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideoArchivedMedia::ListFragments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllFragments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFragments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFragments(@_, NextToken => $next_result->NextToken);
        push @{ $result->Fragments }, @{ $next_result->Fragments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Fragments') foreach (@{ $result->Fragments });
        $result = $self->ListFragments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Fragments') foreach (@{ $result->Fragments });
    }

    return undef
  }


  sub operations { qw/GetHLSStreamingSessionURL GetMediaForFragmentList ListFragments / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia - Perl Interface to AWS Amazon Kinesis Video Streams Archived Media

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('KinesisVideoArchivedMedia');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30>


=head1 METHODS

=head2 GetHLSStreamingSessionURL

=over

=item [DiscontinuityMode => Str]

=item [Expires => Int]

=item [HLSFragmentSelector => L<Paws::KinesisVideoArchivedMedia::HLSFragmentSelector>]

=item [MaxMediaPlaylistFragmentResults => Int]

=item [PlaybackMode => Str]

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideoArchivedMedia::GetHLSStreamingSessionURL>

Returns: a L<Paws::KinesisVideoArchivedMedia::GetHLSStreamingSessionURLOutput> instance

Retrieves an HTTP Live Streaming (HLS) URL for the stream. You can then
open the URL in a browser or media player to view the stream contents.

You must specify either the C<StreamName> or the C<StreamARN>.

An Amazon Kinesis video stream has the following requirements for
providing data through HLS:

=over

=item *

The media type must be C<video/h264>.

=item *

Data retention must be greater than 0.

=item *

The fragments must contain codec private data in the AVC (Advanced
Video Coding) for H.264 format (MPEG-4 specification ISO/IEC 14496-15
(https://www.iso.org/standard/55980.html)). For information about
adapting stream data to a given format, see NAL Adaptation Flags
(http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/latest/dg/producer-reference-nal.html).

=back

Kinesis Video Streams HLS sessions contain fragments in the fragmented
MPEG-4 form (also called fMP4 or CMAF), rather than the MPEG-2 form
(also called TS chunks, which the HLS specification also supports). For
more information about HLS fragment types, see the HLS specification
(https://tools.ietf.org/html/draft-pantos-http-live-streaming-23).

The following procedure shows how to use HLS with Kinesis Video
Streams:

=over

=item 1.

Get an endpoint using GetDataEndpoint
(http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_GetDataEndpoint.html),
specifying C<GET_HLS_STREAMING_SESSION_URL> for the C<APIName>
parameter.

=item 2.

Retrieve the HLS URL using C<GetHLSStreamingSessionURL>. Kinesis Video
Streams creates an HLS streaming session to be used for accessing
content in a stream using the HLS protocol.
C<GetHLSStreamingSessionURL> returns an authenticated URL (that
includes an encrypted session token) for the session's HLS I<master
playlist> (the root resource needed for streaming with HLS).

Don't share or store this token where an unauthorized entity could
access it. The token provides access to the content of the stream.
Safeguard the token with the same measures that you would use with your
AWS credentials.

The media that is made available through the playlist consists only of
the requested stream, time range, and format. No other media data (such
as frames outside the requested window or alternate bit rates) is made
available.

=item 3.

Provide the URL (containing the encrypted session token) for the HLS
master playlist to a media player that supports the HLS protocol.
Kinesis Video Streams makes the HLS media playlist, initialization
fragment, and media fragments available through the master playlist
URL. The initialization fragment contains the codec private data for
the stream, and other data needed to set up the video decoder and
renderer. The media fragments contain H.264-encoded video frames and
time stamps.

=item 4.

The media player receives the authenticated URL and requests stream
metadata and media data normally. When the media player requests data,
it calls the following actions:

=over

=item *

B<GetHLSMasterPlaylist:> Retrieves an HLS master playlist, which
contains a URL for the C<GetHLSMediaPlaylist> action, and additional
metadata for the media player, including estimated bit rate and
resolution.

=item *

B<GetHLSMediaPlaylist:> Retrieves an HLS media playlist, which contains
a URL to access the MP4 initialization fragment with the
C<GetMP4InitFragment> action, and URLs to access the MP4 media
fragments with the C<GetMP4MediaFragment> actions. The HLS media
playlist also contains metadata about the stream that the player needs
to play it, such as whether the C<PlaybackMode> is C<LIVE> or
C<ON_DEMAND>. The HLS media playlist is typically static for sessions
with a C<PlaybackType> of C<ON_DEMAND>. The HLS media playlist is
continually updated with new fragments for sessions with a
C<PlaybackType> of C<LIVE>.

=item *

B<GetMP4InitFragment:> Retrieves the MP4 initialization fragment. The
media player typically loads the initialization fragment before loading
any media fragments. This fragment contains the "C<fytp>" and "C<moov>"
MP4 atoms, and the child atoms that are needed to initialize the media
player decoder.

The initialization fragment does not correspond to a fragment in a
Kinesis video stream. It contains only the codec private data for the
stream, which the media player needs to decode video frames.

=item *

B<GetMP4MediaFragment:> Retrieves MP4 media fragments. These fragments
contain the "C<moof>" and "C<mdat>" MP4 atoms and their child atoms,
containing the encoded fragment's video frames and their time stamps.

After the first media fragment is made available in a streaming
session, any fragments that don't contain the same codec private data
are excluded in the HLS media playlist. Therefore, the codec private
data does not change between fragments in a session.

Data retrieved with this action is billable. See Pricing for details.

=back

=back

The following restrictions apply to HLS sessions:

=over

=item *

A streaming session URL should not be shared between players. The
service might throttle a session if multiple media players are sharing
it. For connection limits, see Kinesis Video Streams Limits
(http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html).

=item *

A Kinesis video stream can have a maximum of five active HLS streaming
sessions. If a new session is created when the maximum number of
sessions is already active, the oldest (earliest created) session is
closed. The number of active C<GetMedia> connections on a Kinesis video
stream does not count against this limit, and the number of active HLS
sessions does not count against the active C<GetMedia> connection
limit.

=back

You can monitor the amount of data that the media player consumes by
monitoring the C<GetMP4MediaFragment.OutgoingBytes> Amazon CloudWatch
metric. For information about using CloudWatch to monitor Kinesis Video
Streams, see Monitoring Kinesis Video Streams
(http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html).
For pricing information, see Amazon Kinesis Video Streams Pricing
(https://aws.amazon.com/kinesis/video-streams/pricing/) and AWS Pricing
(https://aws.amazon.com/pricing/). Charges for both HLS sessions and
outgoing AWS data apply.

For more information about HLS, see HTTP Live Streaming
(https://developer.apple.com/streaming/) on the Apple Developer site
(https://developer.apple.com).


=head2 GetMediaForFragmentList

=over

=item Fragments => ArrayRef[Str|Undef]

=item StreamName => Str


=back

Each argument is described in detail in: L<Paws::KinesisVideoArchivedMedia::GetMediaForFragmentList>

Returns: a L<Paws::KinesisVideoArchivedMedia::GetMediaForFragmentListOutput> instance

Gets media for a list of fragments (specified by fragment number) from
the archived data in an Amazon Kinesis video stream.

The following limits apply when using the C<GetMediaForFragmentList>
API:

=over

=item *

A client can call C<GetMediaForFragmentList> up to five times per
second per stream.

=item *

Kinesis Video Streams sends media data at a rate of up to 25 megabytes
per second (or 200 megabits per second) during a
C<GetMediaForFragmentList> session.

=back



=head2 ListFragments

=over

=item StreamName => Str

=item [FragmentSelector => L<Paws::KinesisVideoArchivedMedia::FragmentSelector>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideoArchivedMedia::ListFragments>

Returns: a L<Paws::KinesisVideoArchivedMedia::ListFragmentsOutput> instance

Returns a list of Fragment objects from the specified stream and start
location within the archived data.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllFragments(sub { },StreamName => Str, [FragmentSelector => L<Paws::KinesisVideoArchivedMedia::FragmentSelector>, MaxResults => Int, NextToken => Str])

=head2 ListAllFragments(StreamName => Str, [FragmentSelector => L<Paws::KinesisVideoArchivedMedia::FragmentSelector>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Fragments, passing the object as the first parameter, and the string 'Fragments' as the second parameter 

If not, it will return a a L<Paws::KinesisVideoArchivedMedia::ListFragmentsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

