package Paws::Rekognition::Video;
  use Moose;
  has S3Object => (is => 'ro', isa => 'Paws::Rekognition::S3Object');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::Video

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::Video object:

  $service_obj->Method(Att1 => { S3Object => $value, ..., S3Object => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::Video object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Object

=head1 DESCRIPTION

Video file stored in an Amazon S3 bucket. Amazon Rekognition video
start operations such as StartLabelDetection use C<Video> to specify a
video for analysis. The supported file formats are .mp4, .mov and .avi.

=head1 ATTRIBUTES


=head2 S3Object => L<Paws::Rekognition::S3Object>

  The Amazon S3 bucket name and file name for the video.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

