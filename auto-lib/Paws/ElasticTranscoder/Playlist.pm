package Paws::ElasticTranscoder::Playlist;
  use Moose;
  has Format => (is => 'ro', isa => 'Str');
  has HlsContentProtection => (is => 'ro', isa => 'Paws::ElasticTranscoder::HlsContentProtection');
  has Name => (is => 'ro', isa => 'Str');
  has OutputKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PlayReadyDrm => (is => 'ro', isa => 'Paws::ElasticTranscoder::PlayReadyDrm');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetail => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::Playlist

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::Playlist object:

  $service_obj->Method(Att1 => { Format => $value, ..., StatusDetail => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::Playlist object:

  $result = $service_obj->Method(...);
  $result->Att1->Format

=head1 DESCRIPTION

Use Only for Fragmented MP4 or MPEG-TS Outputs. If you specify a preset
for which the value of Container is C<fmp4> (Fragmented MP4) or C<ts>
(MPEG-TS), Playlists contains information about the master playlists
that you want Elastic Transcoder to create. We recommend that you
create only one master playlist per output format. The maximum number
of master playlists in a job is 30.

=head1 ATTRIBUTES


=head2 Format => Str

  The format of the output playlist. Valid formats include C<HLSv3>,
C<HLSv4>, and C<Smooth>.


=head2 HlsContentProtection => L<Paws::ElasticTranscoder::HlsContentProtection>

  The HLS content protection settings, if any, that you want Elastic
Transcoder to apply to the output files associated with this playlist.


=head2 Name => Str

  The name that you want Elastic Transcoder to assign to the master
playlist, for example, nyc-vacation.m3u8. If the name includes a C</>
character, the section of the name before the last C</> must be
identical for all C<Name> objects. If you create more than one master
playlist, the values of all C<Name> objects must be unique.

Elastic Transcoder automatically appends the relevant file extension to
the file name (C<.m3u8> for C<HLSv3> and C<HLSv4> playlists, and
C<.ism> and C<.ismc> for C<Smooth> playlists). If you include a file
extension in C<Name>, the file name will have two extensions.


=head2 OutputKeys => ArrayRef[Str|Undef]

  For each output in this job that you want to include in a master
playlist, the value of the Outputs:Key object.

=over

=item *

If your output is not C<HLS> or does not have a segment duration set,
the name of the output file is a concatenation of C<OutputKeyPrefix>
and C<Outputs:Key>:

OutputKeyPrefixC<Outputs:Key>

=item *

If your output is C<HLSv3> and has a segment duration set, or is not
included in a playlist, Elastic Transcoder creates an output playlist
file with a file extension of C<.m3u8>, and a series of C<.ts> files
that include a five-digit sequential counter beginning with 00000:

OutputKeyPrefixC<Outputs:Key>.m3u8

OutputKeyPrefixC<Outputs:Key>00000.ts

=item *

If your output is C<HLSv4>, has a segment duration set, and is included
in an C<HLSv4> playlist, Elastic Transcoder creates an output playlist
file with a file extension of C<_v4.m3u8>. If the output is video,
Elastic Transcoder also creates an output file with an extension of
C<_iframe.m3u8>:

OutputKeyPrefixC<Outputs:Key>_v4.m3u8

OutputKeyPrefixC<Outputs:Key>_iframe.m3u8

OutputKeyPrefixC<Outputs:Key>.ts

=back

Elastic Transcoder automatically appends the relevant file extension to
the file name. If you include a file extension in Output Key, the file
name will have two extensions.

If you include more than one output in a playlist, any segment duration
settings, clip settings, or caption settings must be the same for all
outputs in the playlist. For C<Smooth> playlists, the C<Audio:Profile>,
C<Video:Profile>, and C<Video:FrameRate> to C<Video:KeyframesMaxDist>
ratio must be the same for all outputs.


=head2 PlayReadyDrm => L<Paws::ElasticTranscoder::PlayReadyDrm>

  The DRM settings, if any, that you want Elastic Transcoder to apply to
the output files associated with this playlist.


=head2 Status => Str

  The status of the job with which the playlist is associated.


=head2 StatusDetail => Str

  Information that further explains the status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

