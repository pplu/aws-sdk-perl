package Paws::Rekognition::VideoMetadata;
  use Moose;
  has Codec => (is => 'ro', isa => 'Str');
  has DurationMillis => (is => 'ro', isa => 'Int');
  has Format => (is => 'ro', isa => 'Str');
  has FrameHeight => (is => 'ro', isa => 'Int');
  has FrameRate => (is => 'ro', isa => 'Num');
  has FrameWidth => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::VideoMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::VideoMetadata object:

  $service_obj->Method(Att1 => { Codec => $value, ..., FrameWidth => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::VideoMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Codec

=head1 DESCRIPTION

Information about a video that Amazon Rekognition analyzed.
C<Videometadata> is returned in every page of paginated responses from
a Amazon Rekognition video operation.

=head1 ATTRIBUTES


=head2 Codec => Str

  Type of compression used in the analyzed video.


=head2 DurationMillis => Int

  Length of the video in milliseconds.


=head2 Format => Str

  Format of the analyzed video. Possible values are MP4, MOV and AVI.


=head2 FrameHeight => Int

  Vertical pixel dimension of the video.


=head2 FrameRate => Num

  Number of frames per second in the video.


=head2 FrameWidth => Int

  Horizontal pixel dimension of the video.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

