package Paws::KinesisVideoArchivedMedia::HLSFragmentSelector;
  use Moose;
  has FragmentSelectorType => (is => 'ro', isa => 'Str');
  has TimestampRange => (is => 'ro', isa => 'Paws::KinesisVideoArchivedMedia::HLSTimestampRange');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::HLSFragmentSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisVideoArchivedMedia::HLSFragmentSelector object:

  $service_obj->Method(Att1 => { FragmentSelectorType => $value, ..., TimestampRange => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisVideoArchivedMedia::HLSFragmentSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->FragmentSelectorType

=head1 DESCRIPTION

Contains the range of time stamps for the requested media, and the
source of the time stamps.

=head1 ATTRIBUTES


=head2 FragmentSelectorType => Str

  The source of the time stamps for the requested media.

When C<FragmentSelectorType> is set to C<PRODUCER_TIMESTAMP> and
GetHLSStreamingSessionURLInput$PlaybackMode is C<ON_DEMAND>, the first
fragment ingested with a producer time stamp within the specified
FragmentSelector$TimestampRange is included in the media playlist. In
addition, the fragments with producer time stamps within the
C<TimestampRange> ingested immediately following the first fragment (up
to the GetHLSStreamingSessionURLInput$MaxMediaPlaylistFragmentResults
value) are included.

Fragments that have duplicate producer time stamps are deduplicated.
This means that if producers are producing a stream of fragments with
producer time stamps that are approximately equal to the true clock
time, the HLS media playlists will contain all of the fragments within
the requested time stamp range. If some fragments are ingested within
the same time range and very different points in time, only the oldest
ingested collection of fragments are returned.

When C<FragmentSelectorType> is set to C<PRODUCER_TIMESTAMP> and
GetHLSStreamingSessionURLInput$PlaybackMode is C<LIVE>, the producer
time stamps are used in the MP4 fragments and for deduplication. But
the most recently ingested fragments based on server time stamps are
included in the HLS media playlist. This means that even if fragments
ingested in the past have producer time stamps with values now, they
are not included in the HLS media playlist.

The default is C<SERVER_TIMESTAMP>.


=head2 TimestampRange => L<Paws::KinesisVideoArchivedMedia::HLSTimestampRange>

  The start and end of the time stamp range for the requested media.

This value should not be present if C<PlaybackType> is C<LIVE>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideoArchivedMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

