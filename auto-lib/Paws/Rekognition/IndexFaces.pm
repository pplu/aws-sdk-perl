
package Paws::Rekognition::IndexFaces;
  use Moose;
  has CollectionId => (is => 'ro', isa => 'Str', required => 1);
  has DetectionAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ExternalImageId => (is => 'ro', isa => 'Str');
  has Image => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);
  has MaxFaces => (is => 'ro', isa => 'Int');
  has QualityFilter => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'IndexFaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::IndexFacesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::IndexFaces - Arguments for method IndexFaces on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method IndexFaces on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method IndexFaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to IndexFaces.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    # To add a face to a collection
    # This operation detects faces in an image and adds them to the specified
    # Rekognition collection.
    my $IndexFacesResponse = $rekognition->IndexFaces(
      {
        'CollectionId'        => 'myphotos',
        'DetectionAttributes' => [

        ],
        'ExternalImageId' => 'myphotoid',
        'Image'           => {
          'S3Object' => {
            'Bucket' => 'mybucket',
            'Name'   => 'myphoto'
          }
        }
      }
    );

    # Results:
    my $FaceRecords           = $IndexFacesResponse->FaceRecords;
    my $OrientationCorrection = $IndexFacesResponse->OrientationCorrection;

    # Returns a L<Paws::Rekognition::IndexFacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/IndexFaces>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionId => Str

The ID of an existing collection to which you want to add the faces
that are detected in the input images.



=head2 DetectionAttributes => ArrayRef[Str|Undef]

An array of facial attributes that you want to be returned. This can be
the default list of attributes or all attributes. If you don't specify
a value for C<Attributes> or if you specify C<["DEFAULT"]>, the API
returns the following subset of facial attributes: C<BoundingBox>,
C<Confidence>, C<Pose>, C<Quality>, and C<Landmarks>. If you provide
C<["ALL"]>, all facial attributes are returned, but the operation takes
longer to complete.

If you provide both, C<["ALL", "DEFAULT"]>, the service uses a logical
AND operator to determine which attributes to return (in this case, all
attributes).



=head2 ExternalImageId => Str

The ID you want to assign to all the faces detected in the image.



=head2 B<REQUIRED> Image => L<Paws::Rekognition::Image>

The input image as base64-encoded bytes or an S3 object. If you use the
AWS CLI to call Amazon Rekognition operations, passing base64-encoded
image bytes isn't supported.



=head2 MaxFaces => Int

The maximum number of faces to index. The value of C<MaxFaces> must be
greater than or equal to 1. C<IndexFaces> returns no more than 100
detected faces in an image, even if you specify a larger value for
C<MaxFaces>.

If C<IndexFaces> detects more faces than the value of C<MaxFaces>, the
faces with the lowest quality are filtered out first. If there are
still more faces than the value of C<MaxFaces>, the faces with the
smallest bounding boxes are filtered out (up to the number that's
needed to satisfy the value of C<MaxFaces>). Information about the
unindexed faces is available in the C<UnindexedFaces> array.

The faces that are returned by C<IndexFaces> are sorted by the largest
face bounding box size to the smallest size, in descending order.

C<MaxFaces> can be used with a collection associated with any version
of the face model.



=head2 QualityFilter => Str

A filter that specifies how much filtering is done to identify faces
that are detected with low quality. Filtered faces aren't indexed. If
you specify C<AUTO>, filtering prioritizes the identification of faces
that donE<rsquo>t meet the required quality bar chosen by Amazon
Rekognition. The quality bar is based on a variety of common use cases.
Low-quality detections can occur for a number of reasons. Some examples
are an object that's misidentified as a face, a face that's too blurry,
or a face with a pose that's too extreme to use. If you specify
C<NONE>, no filtering is performed. The default value is AUTO.

To use quality filtering, the collection you are using must be
associated with version 3 of the face model.

Valid values are: C<"NONE">, C<"AUTO">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method IndexFaces in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

