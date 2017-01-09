package Paws::ElasticTranscoder::Thumbnails;
  use Moose;
  has AspectRatio => (is => 'ro', isa => 'Str');
  has Format => (is => 'ro', isa => 'Str');
  has Interval => (is => 'ro', isa => 'Str');
  has MaxHeight => (is => 'ro', isa => 'Str');
  has MaxWidth => (is => 'ro', isa => 'Str');
  has PaddingPolicy => (is => 'ro', isa => 'Str');
  has Resolution => (is => 'ro', isa => 'Str');
  has SizingPolicy => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::Thumbnails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::Thumbnails object:

  $service_obj->Method(Att1 => { AspectRatio => $value, ..., SizingPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::Thumbnails object:

  $result = $service_obj->Method(...);
  $result->Att1->AspectRatio

=head1 DESCRIPTION

Thumbnails for videos.

=head1 ATTRIBUTES


=head2 AspectRatio => Str

  To better control resolution and aspect ratio of thumbnails, we
recommend that you use the values C<MaxWidth>, C<MaxHeight>,
C<SizingPolicy>, and C<PaddingPolicy> instead of C<Resolution> and
C<AspectRatio>. The two groups of settings are mutually exclusive. Do
not use them together.

The aspect ratio of thumbnails. Valid values include:

C<auto>, C<1:1>, C<4:3>, C<3:2>, C<16:9>

If you specify C<auto>, Elastic Transcoder tries to preserve the aspect
ratio of the video in the output file.


=head2 Format => Str

  The format of thumbnails, if any. Valid values are C<jpg> and C<png>.

You specify whether you want Elastic Transcoder to create thumbnails
when you create a job.


=head2 Interval => Str

  The approximate number of seconds between thumbnails. Specify an
integer value.


=head2 MaxHeight => Str

  The maximum height of thumbnails in pixels. If you specify auto,
Elastic Transcoder uses 1080 (Full HD) as the default value. If you
specify a numeric value, enter an even integer between 32 and 3072.


=head2 MaxWidth => Str

  The maximum width of thumbnails in pixels. If you specify auto, Elastic
Transcoder uses 1920 (Full HD) as the default value. If you specify a
numeric value, enter an even integer between 32 and 4096.


=head2 PaddingPolicy => Str

  When you set C<PaddingPolicy> to C<Pad>, Elastic Transcoder may add
black bars to the top and bottom and/or left and right sides of
thumbnails to make the total size of the thumbnails match the values
that you specified for thumbnail C<MaxWidth> and C<MaxHeight> settings.


=head2 Resolution => Str

  To better control resolution and aspect ratio of thumbnails, we
recommend that you use the values C<MaxWidth>, C<MaxHeight>,
C<SizingPolicy>, and C<PaddingPolicy> instead of C<Resolution> and
C<AspectRatio>. The two groups of settings are mutually exclusive. Do
not use them together.

The width and height of thumbnail files in pixels. Specify a value in
the format C< I<width> > x C< I<height> > where both values are even
integers. The values cannot exceed the width and height that you
specified in the C<Video:Resolution> object.


=head2 SizingPolicy => Str

  Specify one of the following values to control scaling of thumbnails:

=over

=item *

C<Fit>: Elastic Transcoder scales thumbnails so they match the value
that you specified in thumbnail MaxWidth or MaxHeight settings without
exceeding the other value.

=item *

C<Fill>: Elastic Transcoder scales thumbnails so they match the value
that you specified in thumbnail C<MaxWidth> or C<MaxHeight> settings
and matches or exceeds the other value. Elastic Transcoder centers the
image in thumbnails and then crops in the dimension (if any) that
exceeds the maximum value.

=item *

C<Stretch>: Elastic Transcoder stretches thumbnails to match the values
that you specified for thumbnail C<MaxWidth> and C<MaxHeight> settings.
If the relative proportions of the input video and thumbnails are
different, the thumbnails will be distorted.

=item *

C<Keep>: Elastic Transcoder does not scale thumbnails. If either
dimension of the input video exceeds the values that you specified for
thumbnail C<MaxWidth> and C<MaxHeight> settings, Elastic Transcoder
crops the thumbnails.

=item *

C<ShrinkToFit>: Elastic Transcoder scales thumbnails down so that their
dimensions match the values that you specified for at least one of
thumbnail C<MaxWidth> and C<MaxHeight> without exceeding either value.
If you specify this option, Elastic Transcoder does not scale
thumbnails up.

=item *

C<ShrinkToFill>: Elastic Transcoder scales thumbnails down so that
their dimensions match the values that you specified for at least one
of C<MaxWidth> and C<MaxHeight> without dropping below either value. If
you specify this option, Elastic Transcoder does not scale thumbnails
up.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

