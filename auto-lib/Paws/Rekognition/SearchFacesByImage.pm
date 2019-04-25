
package Paws::Rekognition::SearchFacesByImage;
  use Moose;
  has CollectionId => (is => 'ro', isa => 'Str', required => 1);
  has FaceMatchThreshold => (is => 'ro', isa => 'Num');
  has Image => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);
  has MaxFaces => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchFacesByImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::SearchFacesByImageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::SearchFacesByImage - Arguments for method SearchFacesByImage on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchFacesByImage on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method SearchFacesByImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchFacesByImage.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    # To search for faces matching a supplied image
    # This operation searches for faces in a Rekognition collection that match
    # the largest face in an S3 bucket stored image.
    my $SearchFacesByImageResponse = $rekognition->SearchFacesByImage(
      {
        'CollectionId'       => 'myphotos',
        'FaceMatchThreshold' => 95,
        'Image'              => {
          'S3Object' => {
            'Bucket' => 'mybucket',
            'Name'   => 'myphoto'
          }
        },
        'MaxFaces' => 5
      }
    );

    # Results:
    my $FaceMatches = $SearchFacesByImageResponse->FaceMatches;
    my $SearchedFaceBoundingBox =
      $SearchFacesByImageResponse->SearchedFaceBoundingBox;
    my $SearchedFaceConfidence =
      $SearchFacesByImageResponse->SearchedFaceConfidence;

    # Returns a L<Paws::Rekognition::SearchFacesByImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/SearchFacesByImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionId => Str

ID of the collection to search.



=head2 FaceMatchThreshold => Num

(Optional) Specifies the minimum confidence in the face match to
return. For example, don't return any matches where confidence in
matches is less than 70%.



=head2 B<REQUIRED> Image => L<Paws::Rekognition::Image>

The input image as base64-encoded bytes or an S3 object. If you use the
AWS CLI to call Amazon Rekognition operations, passing base64-encoded
image bytes is not supported.



=head2 MaxFaces => Int

Maximum number of faces to return. The operation returns the maximum
number of faces with the highest confidence in the match.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchFacesByImage in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

