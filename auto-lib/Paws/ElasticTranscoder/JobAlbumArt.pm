package Paws::ElasticTranscoder::JobAlbumArt;
  use Moose;
  has Artwork => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::Artwork]');
  has MergePolicy => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::JobAlbumArt

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::JobAlbumArt object:

  $service_obj->Method(Att1 => { Artwork => $value, ..., MergePolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::JobAlbumArt object:

  $result = $service_obj->Method(...);
  $result->Att1->Artwork

=head1 DESCRIPTION

The .jpg or .png file associated with an audio file.

=head1 ATTRIBUTES


=head2 Artwork => ArrayRef[L<Paws::ElasticTranscoder::Artwork>]

  The file to be used as album art. There can be multiple artworks
associated with an audio file, to a maximum of 20. Valid formats are
C<.jpg> and C<.png>


=head2 MergePolicy => Str

  A policy that determines how Elastic Transcoder handles the existence
of multiple album artwork files.

=over

=item *

C<Replace:> The specified album art replaces any existing album art.

=item *

C<Prepend:> The specified album art is placed in front of any existing
album art.

=item *

C<Append:> The specified album art is placed after any existing album
art.

=item *

C<Fallback:> If the original input file contains artwork, Elastic
Transcoder uses that artwork for the output. If the original input does
not contain artwork, Elastic Transcoder uses the specified album art
file.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

