
package Paws::Rekognition::DetectFaces;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Image => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectFaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DetectFacesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectFaces - Arguments for method DetectFaces on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectFaces on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DetectFaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectFaces.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    # To detect faces in an image
    # This operation detects faces in an image stored in an AWS S3 bucket.
    my $DetectFacesResponse = $rekognition->DetectFaces(
      {
        'Image' => {
          'S3Object' => {
            'Bucket' => 'mybucket',
            'Name'   => 'myphoto'
          }
        }
      }
    );

    # Results:
    my $FaceDetails           = $DetectFacesResponse->FaceDetails;
    my $OrientationCorrection = $DetectFacesResponse->OrientationCorrection;

    # Returns a L<Paws::Rekognition::DetectFacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DetectFaces>

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[Str|Undef]

An array of facial attributes you want to be returned. This can be the
default list of attributes or all attributes. If you don't specify a
value for C<Attributes> or if you specify C<["DEFAULT"]>, the API
returns the following subset of facial attributes: C<BoundingBox>,
C<Confidence>, C<Pose>, C<Quality>, and C<Landmarks>. If you provide
C<["ALL"]>, all facial attributes are returned, but the operation takes
longer to complete.

If you provide both, C<["ALL", "DEFAULT"]>, the service uses a logical
AND operator to determine which attributes to return (in this case, all
attributes).



=head2 B<REQUIRED> Image => L<Paws::Rekognition::Image>

The input image as base64-encoded bytes or an S3 object. If you use the
AWS CLI to call Amazon Rekognition operations, passing base64-encoded
image bytes is not supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectFaces in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

