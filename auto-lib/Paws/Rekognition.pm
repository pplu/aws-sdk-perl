package Paws::Rekognition;
  use Moose;
  sub service { 'rekognition' }
  sub version { '2016-06-27' }
  sub target_prefix { 'RekognitionService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub CompareFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::CompareFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::CreateCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DeleteCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DeleteFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DetectFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectLabels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DetectLabels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectModerationLabels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DetectModerationLabels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IndexFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::IndexFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::ListCollections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::ListFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchFaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::SearchFaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchFacesByImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::SearchFacesByImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCollections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollections(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->ListCollections(@_, NextToken => $result->NextToken);
        push @{ $result->CollectionIds }, @{ $result->CollectionIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->ListCollections(@_, NextToken => $result->NextToken);
        $callback->($_ => 'CollectionIds') foreach (@{ $result->CollectionIds });
      }
    }

    return undef
  }
  sub ListAllFaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFaces(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->ListFaces(@_, NextToken => $result->NextToken);
        push @{ $result->Faces }, @{ $result->Faces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->ListFaces(@_, NextToken => $result->NextToken);
        $callback->($_ => 'Faces') foreach (@{ $result->Faces });
      }
    }

    return undef
  }


  sub operations { qw/CompareFaces CreateCollection DeleteCollection DeleteFaces DetectFaces DetectLabels DetectModerationLabels IndexFaces ListCollections ListFaces SearchFaces SearchFacesByImage / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition - Perl Interface to AWS Amazon Rekognition

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Rekognition');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

This is the Amazon Rekognition API reference.

=head1 METHODS

=head2 CompareFaces(SourceImage => L<Paws::Rekognition::Image>, TargetImage => L<Paws::Rekognition::Image>, [SimilarityThreshold => Num])

Each argument is described in detail in: L<Paws::Rekognition::CompareFaces>

Returns: a L<Paws::Rekognition::CompareFacesResponse> instance

  Compares a face in the I<source> input image with each face detected in
the I<target> input image.

If the source image contains multiple faces, the service detects the
largest face and uses it to compare with each face detected in the
target image.

In response, the operation returns an array of face matches ordered by
similarity score with the highest similarity scores first. For each
face match, the response provides a bounding box of the face and
C<confidence> value (indicating the level of confidence that the
bounding box contains a face). The response also provides a
C<similarity> score, which indicates how closely the faces match.

By default, only faces with the similarity score of greater than or
equal to 80% are returned in the response. You can change this value.

In addition to the face matches, the response returns information about
the face in the source image, including the bounding box of the face
and confidence value.

This is a stateless API operation. That is, the operation does not
persist any data.

For an example, see get-started-exercise-compare-faces

This operation requires permissions to perform the
C<rekognition:CompareFaces> action.


=head2 CreateCollection(CollectionId => Str)

Each argument is described in detail in: L<Paws::Rekognition::CreateCollection>

Returns: a L<Paws::Rekognition::CreateCollectionResponse> instance

  Creates a collection in an AWS Region. You can add faces to the
collection using the operation.

For example, you might create collections, one for each of your
application users. A user can then index faces using the C<IndexFaces>
operation and persist results in a specific collection. Then, a user
can search the collection for faces in the user-specific container.

For an example, see example1.

This operation requires permissions to perform the
C<rekognition:CreateCollection> action.


=head2 DeleteCollection(CollectionId => Str)

Each argument is described in detail in: L<Paws::Rekognition::DeleteCollection>

Returns: a L<Paws::Rekognition::DeleteCollectionResponse> instance

  Deletes the specified collection. Note that this operation removes all
faces in the collection. For an example, see example1.

This operation requires permissions to perform the
C<rekognition:DeleteCollection> action.


=head2 DeleteFaces(CollectionId => Str, FaceIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Rekognition::DeleteFaces>

Returns: a L<Paws::Rekognition::DeleteFacesResponse> instance

  Deletes faces from a collection. You specify a collection ID and an
array of face IDs to remove from the collection.

This operation requires permissions to perform the
C<rekognition:DeleteFaces> action.


=head2 DetectFaces(Image => L<Paws::Rekognition::Image>, [Attributes => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::Rekognition::DetectFaces>

Returns: a L<Paws::Rekognition::DetectFacesResponse> instance

  Detects faces within an image (JPEG or PNG) that is provided as input.

For each face detected, the operation returns face details including a
bounding box of the face, a confidence value (that the bounding box
contains a face), and a fixed set of attributes such as facial
landmarks (for example, coordinates of eye and mouth), gender, presence
of beard, sunglasses, etc.

The face-detection algorithm is most effective on frontal faces. For
non-frontal or obscured faces, the algorithm may not detect the faces
or might detect faces with lower confidence.

This is a stateless API operation. That is, the operation does not
persist any data.

For an example, see get-started-exercise-detect-faces.

This operation requires permissions to perform the
C<rekognition:DetectFaces> action.


=head2 DetectLabels(Image => L<Paws::Rekognition::Image>, [MaxLabels => Int, MinConfidence => Num])

Each argument is described in detail in: L<Paws::Rekognition::DetectLabels>

Returns: a L<Paws::Rekognition::DetectLabelsResponse> instance

  Detects instances of real-world labels within an image (JPEG or PNG)
provided as input. This includes objects like flower, tree, and table;
events like wedding, graduation, and birthday party; and concepts like
landscape, evening, and nature. For an example, see
get-started-exercise-detect-labels.

For each object, scene, and concept the API returns one or more labels.
Each label provides the object name, and the level of confidence that
the image contains the object. For example, suppose the input image has
a lighthouse, the sea, and a rock. The response will include all three
labels, one for each object.

C<{Name: lighthouse, Confidence: 98.4629}>

C<{Name: rock,Confidence: 79.2097}>

C<{Name: sea,Confidence: 75.061}>

In the preceding example, the operation returns one label for each of
the three objects. The operation can also return multiple labels for
the same object in the image. For example, if the input image shows a
flower (for example, a tulip), the operation might return the following
three labels.

C<{Name: flower,Confidence: 99.0562}>

C<{Name: plant,Confidence: 99.0562}>

C<{Name: tulip,Confidence: 99.0562}>

In this example, the detection algorithm more precisely identifies the
flower as a tulip.

You can provide the input image as an S3 object or as base64-encoded
bytes. In response, the API returns an array of labels. In addition,
the response also includes the orientation correction. Optionally, you
can specify C<MinConfidence> to control the confidence threshold for
the labels returned. The default is 50%. You can also add the
C<MaxLabels> parameter to limit the number of labels returned.

If the object detected is a person, the operation doesn't provide the
same facial details that the DetectFaces operation provides.

This is a stateless API operation. That is, the operation does not
persist any data.

This operation requires permissions to perform the
C<rekognition:DetectLabels> action.


=head2 DetectModerationLabels(Image => L<Paws::Rekognition::Image>, [MinConfidence => Num])

Each argument is described in detail in: L<Paws::Rekognition::DetectModerationLabels>

Returns: a L<Paws::Rekognition::DetectModerationLabelsResponse> instance

  Detects explicit or suggestive adult content in a specified .jpeg or
.png image. Use C<DetectModerationLabels> to moderate images depending
on your requirements. For example, you might want to filter images that
contain nudity, but not images containing suggestive content.

To filter images, use the labels returned by C<DetectModerationLabels>
to determine which types of content are appropriate. For information
about moderation labels, see howitworks-moderateimage.


=head2 IndexFaces(CollectionId => Str, Image => L<Paws::Rekognition::Image>, [DetectionAttributes => ArrayRef[Str|Undef], ExternalImageId => Str])

Each argument is described in detail in: L<Paws::Rekognition::IndexFaces>

Returns: a L<Paws::Rekognition::IndexFacesResponse> instance

  Detects faces in the input image and adds them to the specified
collection.

Amazon Rekognition does not save the actual faces detected. Instead,
the underlying detection algorithm first detects the faces in the input
image, and for each face extracts facial features into a feature
vector, and stores it in the back-end database. Amazon Rekognition uses
feature vectors when performing face match and search operations using
the and operations.

If you provide the optional C<externalImageID> for the input image you
provided, Amazon Rekognition associates this ID with all faces that it
detects. When you call the operation, the response returns the external
ID. You can use this external image ID to create a client-side index to
associate the faces with each image. You can then use the index to find
all faces in an image.

In response, the operation returns an array of metadata for all
detected faces. This includes, the bounding box of the detected face,
confidence value (indicating the bounding box contains a face), a face
ID assigned by the service for each face that is detected and stored,
and an image ID assigned by the service for the input image If you
request all facial attributes (using the C<detectionAttributes>
parameter, Amazon Rekognition returns detailed facial attributes such
as facial landmarks (for example, location of eye and mount) and other
facial attributes such gender. If you provide the same image, specify
the same collection, and use the same external ID in the C<IndexFaces>
operation, Amazon Rekognition doesn't save duplicate face metadata.

For an example, see example2.

This operation requires permissions to perform the
C<rekognition:IndexFaces> action.


=head2 ListCollections([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Rekognition::ListCollections>

Returns: a L<Paws::Rekognition::ListCollectionsResponse> instance

  Returns list of collection IDs in your account. If the result is
truncated, the response also provides a C<NextToken> that you can use
in the subsequent request to fetch the next set of collection IDs.

For an example, see example1.

This operation requires permissions to perform the
C<rekognition:ListCollections> action.


=head2 ListFaces(CollectionId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Rekognition::ListFaces>

Returns: a L<Paws::Rekognition::ListFacesResponse> instance

  Returns metadata for faces in the specified collection. This metadata
includes information such as the bounding box coordinates, the
confidence (that the bounding box contains a face), and face ID. For an
example, see example3.

This operation requires permissions to perform the
C<rekognition:ListFaces> action.


=head2 SearchFaces(CollectionId => Str, FaceId => Str, [FaceMatchThreshold => Num, MaxFaces => Int])

Each argument is described in detail in: L<Paws::Rekognition::SearchFaces>

Returns: a L<Paws::Rekognition::SearchFacesResponse> instance

  For a given input face ID, searches for matching faces in the
collection the face belongs to. You get a face ID when you add a face
to the collection using the IndexFaces operation. The operation
compares the features of the input face with faces in the specified
collection.

You can also search faces without indexing faces by using the
C<SearchFacesByImage> operation.

The operation response returns an array of faces that match, ordered by
similarity score with the highest similarity first. More specifically,
it is an array of metadata for each face match that is found. Along
with the metadata, the response also includes a C<confidence> value for
each face match, indicating the confidence that the specific face
matches the input face.

For an example, see example3.

This operation requires permissions to perform the
C<rekognition:SearchFaces> action.


=head2 SearchFacesByImage(CollectionId => Str, Image => L<Paws::Rekognition::Image>, [FaceMatchThreshold => Num, MaxFaces => Int])

Each argument is described in detail in: L<Paws::Rekognition::SearchFacesByImage>

Returns: a L<Paws::Rekognition::SearchFacesByImageResponse> instance

  For a given input image, first detects the largest face in the image,
and then searches the specified collection for matching faces. The
operation compares the features of the input face with faces in the
specified collection.

To search for all faces in an input image, you might first call the
operation, and then use the face IDs returned in subsequent calls to
the operation.

You can also call the C<DetectFaces> operation and use the bounding
boxes in the response to make face crops, which then you can pass in to
the C<SearchFacesByImage> operation.

The response returns an array of faces that match, ordered by
similarity score with the highest similarity first. More specifically,
it is an array of metadata for each face match found. Along with the
metadata, the response also includes a C<similarity> indicating how
similar the face is to the input face. In the response, the operation
also returns the bounding box (and a confidence level that the bounding
box contains a face) of the face that Amazon Rekognition used for the
input image.

For an example, see example3.

This operation requires permissions to perform the
C<rekognition:SearchFacesByImage> action.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCollections(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCollections([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CollectionIds, passing the object as the first parameter, and the string 'CollectionIds' as the second parameter 

If not, it will return a a L<Paws::Rekognition::ListCollectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFaces(sub { },CollectionId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFaces(CollectionId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Faces, passing the object as the first parameter, and the string 'Faces' as the second parameter 

If not, it will return a a L<Paws::Rekognition::ListFacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

