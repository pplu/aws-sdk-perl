package Paws::ElasticTranscoder::Artwork;
  use Moose;
  has AlbumArtFormat => (is => 'ro', isa => 'Str');
  has Encryption => (is => 'ro', isa => 'Paws::ElasticTranscoder::Encryption');
  has InputKey => (is => 'ro', isa => 'Str');
  has MaxHeight => (is => 'ro', isa => 'Str');
  has MaxWidth => (is => 'ro', isa => 'Str');
  has PaddingPolicy => (is => 'ro', isa => 'Str');
  has SizingPolicy => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::Artwork

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::Artwork object:

  $service_obj->Method(Att1 => { AlbumArtFormat => $value, ..., SizingPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::Artwork object:

  $result = $service_obj->Method(...);
  $result->Att1->AlbumArtFormat

=head1 DESCRIPTION

The file to be used as album art. There can be multiple artworks
associated with an audio file, to a maximum of 20.

To remove artwork or leave the artwork empty, you can either set
C<Artwork> to null, or set the C<Merge Policy> to "Replace" and use an
empty C<Artwork> array.

To pass through existing artwork unchanged, set the C<Merge Policy> to
"Prepend", "Append", or "Fallback", and use an empty C<Artwork> array.

=head1 ATTRIBUTES


=head2 AlbumArtFormat => Str

  The format of album art, if any. Valid formats are C<.jpg> and C<.png>.


=head2 Encryption => L<Paws::ElasticTranscoder::Encryption>

  The encryption settings, if any, that you want Elastic Transcoder to
apply to your artwork.


=head2 InputKey => Str

  The name of the file to be used as album art. To determine which Amazon
S3 bucket contains the specified file, Elastic Transcoder checks the
pipeline specified by C<PipelineId>; the C<InputBucket> object in that
pipeline identifies the bucket.

If the file name includes a prefix, for example, C<cooking/pie.jpg>,
include the prefix in the key. If the file isn't in the specified
bucket, Elastic Transcoder returns an error.


=head2 MaxHeight => Str

  The maximum height of the output album art in pixels. If you specify
C<auto>, Elastic Transcoder uses 600 as the default value. If you
specify a numeric value, enter an even integer between 32 and 3072,
inclusive.


=head2 MaxWidth => Str

  The maximum width of the output album art in pixels. If you specify
C<auto>, Elastic Transcoder uses 600 as the default value. If you
specify a numeric value, enter an even integer between 32 and 4096,
inclusive.


=head2 PaddingPolicy => Str

  When you set C<PaddingPolicy> to C<Pad>, Elastic Transcoder may add
white bars to the top and bottom and/or left and right sides of the
output album art to make the total size of the output art match the
values that you specified for C<MaxWidth> and C<MaxHeight>.


=head2 SizingPolicy => Str

  Specify one of the following values to control scaling of the output
album art:

=over

=item *

C<Fit:> Elastic Transcoder scales the output art so it matches the
value that you specified in either C<MaxWidth> or C<MaxHeight> without
exceeding the other value.

=item *

C<Fill:> Elastic Transcoder scales the output art so it matches the
value that you specified in either C<MaxWidth> or C<MaxHeight> and
matches or exceeds the other value. Elastic Transcoder centers the
output art and then crops it in the dimension (if any) that exceeds the
maximum value.

=item *

C<Stretch:> Elastic Transcoder stretches the output art to match the
values that you specified for C<MaxWidth> and C<MaxHeight>. If the
relative proportions of the input art and the output art are different,
the output art will be distorted.

=item *

C<Keep:> Elastic Transcoder does not scale the output art. If either
dimension of the input art exceeds the values that you specified for
C<MaxWidth> and C<MaxHeight>, Elastic Transcoder crops the output art.

=item *

C<ShrinkToFit:> Elastic Transcoder scales the output art down so that
its dimensions match the values that you specified for at least one of
C<MaxWidth> and C<MaxHeight> without exceeding either value. If you
specify this option, Elastic Transcoder does not scale the art up.

=item *

C<ShrinkToFill> Elastic Transcoder scales the output art down so that
its dimensions match the values that you specified for at least one of
C<MaxWidth> and C<MaxHeight> without dropping below either value. If
you specify this option, Elastic Transcoder does not scale the art up.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

