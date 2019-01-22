package Paws::Rekognition;
  use Moose;
  sub service { 'rekognition' }
  sub signing_name { 'rekognition' }
  sub version { '2016-06-27' }
  sub target_prefix { 'RekognitionService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
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
  sub CreateStreamProcessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::CreateStreamProcessor', @_);
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
  sub DeleteStreamProcessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DeleteStreamProcessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DescribeCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStreamProcessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DescribeStreamProcessor', @_);
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
  sub DetectText {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::DetectText', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCelebrityInfo {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetCelebrityInfo', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCelebrityRecognition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetCelebrityRecognition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContentModeration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetContentModeration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFaceDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetFaceDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFaceSearch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetFaceSearch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLabelDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetLabelDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPersonTracking {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::GetPersonTracking', @_);
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
  sub ListStreamProcessors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::ListStreamProcessors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RecognizeCelebrities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::RecognizeCelebrities', @_);
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
  sub StartCelebrityRecognition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartCelebrityRecognition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartContentModeration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartContentModeration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFaceDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartFaceDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFaceSearch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartFaceSearch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartLabelDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartLabelDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartPersonTracking {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartPersonTracking', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartStreamProcessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StartStreamProcessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopStreamProcessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rekognition::StopStreamProcessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCollections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCollections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCollections(@_, NextToken => $next_result->NextToken);
        push @{ $result->CollectionIds }, @{ $next_result->CollectionIds };
        push @{ $result->FaceModelVersions }, @{ $next_result->FaceModelVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CollectionIds') foreach (@{ $result->CollectionIds });
        $callback->($_ => 'FaceModelVersions') foreach (@{ $result->FaceModelVersions });
        $result = $self->ListCollections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CollectionIds') foreach (@{ $result->CollectionIds });
      $callback->($_ => 'FaceModelVersions') foreach (@{ $result->FaceModelVersions });
    }

    return undef
  }
  sub ListAllFaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFaces(@_, NextToken => $next_result->NextToken);
        push @{ $result->Faces }, @{ $next_result->Faces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Faces') foreach (@{ $result->Faces });
        $result = $self->ListFaces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Faces') foreach (@{ $result->Faces });
    }

    return undef
  }
  sub ListAllStreamProcessors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreamProcessors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStreamProcessors(@_, NextToken => $next_result->NextToken);
        push @{ $result->StreamProcessors }, @{ $next_result->StreamProcessors };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StreamProcessors') foreach (@{ $result->StreamProcessors });
        $result = $self->ListStreamProcessors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StreamProcessors') foreach (@{ $result->StreamProcessors });
    }

    return undef
  }


  sub operations { qw/CompareFaces CreateCollection CreateStreamProcessor DeleteCollection DeleteFaces DeleteStreamProcessor DescribeCollection DescribeStreamProcessor DetectFaces DetectLabels DetectModerationLabels DetectText GetCelebrityInfo GetCelebrityRecognition GetContentModeration GetFaceDetection GetFaceSearch GetLabelDetection GetPersonTracking IndexFaces ListCollections ListFaces ListStreamProcessors RecognizeCelebrities SearchFaces SearchFacesByImage StartCelebrityRecognition StartContentModeration StartFaceDetection StartFaceSearch StartLabelDetection StartPersonTracking StartStreamProcessor StopStreamProcessor / }

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

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27>


=head1 METHODS

=head2 CompareFaces

=over

=item SourceImage => L<Paws::Rekognition::Image>

=item TargetImage => L<Paws::Rekognition::Image>

=item [SimilarityThreshold => Num]


=back

Each argument is described in detail in: L<Paws::Rekognition::CompareFaces>

Returns: a L<Paws::Rekognition::CompareFacesResponse> instance

Compares a face in the I<source> input image with each of the 100
largest faces detected in the I<target> input image.

If the source image contains multiple faces, the service detects the
largest face and compares it with each face detected in the target
image.

You pass the input and target images either as base64-encoded image
bytes or as references to images in an Amazon S3 bucket. If you use the
AWS CLI to call Amazon Rekognition operations, passing image bytes
isn't supported. The image must be formatted as a PNG or JPEG file.

In response, the operation returns an array of face matches ordered by
similarity score in descending order. For each face match, the response
provides a bounding box of the face, facial landmarks, pose details
(pitch, role, and yaw), quality (brightness and sharpness), and
confidence value (indicating the level of confidence that the bounding
box contains a face). The response also provides a similarity score,
which indicates how closely the faces match.

By default, only faces with a similarity score of greater than or equal
to 80% are returned in the response. You can change this value by
specifying the C<SimilarityThreshold> parameter.

C<CompareFaces> also returns an array of faces that don't match the
source image. For each face, it returns a bounding box, confidence
value, landmarks, pose details, and quality. The response also returns
information about the face in the source image, including the bounding
box of the face and confidence value.

If the image doesn't contain Exif metadata, C<CompareFaces> returns
orientation information for the source and target images. Use these
values to display the images with the correct image orientation.

If no faces are detected in the source or target images,
C<CompareFaces> returns an C<InvalidParameterException> error.

This is a stateless API operation. That is, data returned by this
operation doesn't persist.

For an example, see Comparing Faces in Images in the Amazon Rekognition
Developer Guide.

This operation requires permissions to perform the
C<rekognition:CompareFaces> action.


=head2 CreateCollection

=over

=item CollectionId => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::CreateCollection>

Returns: a L<Paws::Rekognition::CreateCollectionResponse> instance

Creates a collection in an AWS Region. You can add faces to the
collection using the IndexFaces operation.

For example, you might create collections, one for each of your
application users. A user can then index faces using the C<IndexFaces>
operation and persist results in a specific collection. Then, a user
can search the collection for faces in the user-specific container.

When you create a collection, it is associated with the latest version
of the face model version.

Collection names are case-sensitive.

This operation requires permissions to perform the
C<rekognition:CreateCollection> action.


=head2 CreateStreamProcessor

=over

=item Input => L<Paws::Rekognition::StreamProcessorInput>

=item Name => Str

=item Output => L<Paws::Rekognition::StreamProcessorOutput>

=item RoleArn => Str

=item Settings => L<Paws::Rekognition::StreamProcessorSettings>


=back

Each argument is described in detail in: L<Paws::Rekognition::CreateStreamProcessor>

Returns: a L<Paws::Rekognition::CreateStreamProcessorResponse> instance

Creates an Amazon Rekognition stream processor that you can use to
detect and recognize faces in a streaming video.

Amazon Rekognition Video is a consumer of live video from Amazon
Kinesis Video Streams. Amazon Rekognition Video sends analysis results
to Amazon Kinesis Data Streams.

You provide as input a Kinesis video stream (C<Input>) and a Kinesis
data stream (C<Output>) stream. You also specify the face recognition
criteria in C<Settings>. For example, the collection containing faces
that you want to recognize. Use C<Name> to assign an identifier for the
stream processor. You use C<Name> to manage the stream processor. For
example, you can start processing the source video by calling
StartStreamProcessor with the C<Name> field.

After you have finished analyzing a streaming video, use
StopStreamProcessor to stop processing. You can delete the stream
processor by calling DeleteStreamProcessor.


=head2 DeleteCollection

=over

=item CollectionId => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::DeleteCollection>

Returns: a L<Paws::Rekognition::DeleteCollectionResponse> instance

Deletes the specified collection. Note that this operation removes all
faces in the collection. For an example, see
delete-collection-procedure.

This operation requires permissions to perform the
C<rekognition:DeleteCollection> action.


=head2 DeleteFaces

=over

=item CollectionId => Str

=item FaceIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Rekognition::DeleteFaces>

Returns: a L<Paws::Rekognition::DeleteFacesResponse> instance

Deletes faces from a collection. You specify a collection ID and an
array of face IDs to remove from the collection.

This operation requires permissions to perform the
C<rekognition:DeleteFaces> action.


=head2 DeleteStreamProcessor

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::DeleteStreamProcessor>

Returns: a L<Paws::Rekognition::DeleteStreamProcessorResponse> instance

Deletes the stream processor identified by C<Name>. You assign the
value for C<Name> when you create the stream processor with
CreateStreamProcessor. You might not be able to use the same name for a
stream processor for a few seconds after calling
C<DeleteStreamProcessor>.


=head2 DescribeCollection

=over

=item CollectionId => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::DescribeCollection>

Returns: a L<Paws::Rekognition::DescribeCollectionResponse> instance

Describes the specified collection. You can use C<DescribeCollection>
to get information, such as the number of faces indexed into a
collection and the version of the model used by the collection for face
detection.

For more information, see Describing a Collection in the Amazon
Rekognition Developer Guide.


=head2 DescribeStreamProcessor

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::DescribeStreamProcessor>

Returns: a L<Paws::Rekognition::DescribeStreamProcessorResponse> instance

Provides information about a stream processor created by
CreateStreamProcessor. You can get information about the input and
output streams, the input parameters for the face recognition being
performed, and the current status of the stream processor.


=head2 DetectFaces

=over

=item Image => L<Paws::Rekognition::Image>

=item [Attributes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Rekognition::DetectFaces>

Returns: a L<Paws::Rekognition::DetectFacesResponse> instance

Detects faces within an image that is provided as input.

C<DetectFaces> detects the 100 largest faces in the image. For each
face detected, the operation returns face details. These details
include a bounding box of the face, a confidence value (that the
bounding box contains a face), and a fixed set of attributes such as
facial landmarks (for example, coordinates of eye and mouth), gender,
presence of beard, sunglasses, and so on.

The face-detection algorithm is most effective on frontal faces. For
non-frontal or obscured faces, the algorithm might not detect the faces
or might detect faces with lower confidence.

You pass the input image either as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the to call
Amazon Rekognition operations, passing image bytes is not supported.
The image must be either a PNG or JPEG formatted file.

This is a stateless API operation. That is, the operation does not
persist any data.

This operation requires permissions to perform the
C<rekognition:DetectFaces> action.


=head2 DetectLabels

=over

=item Image => L<Paws::Rekognition::Image>

=item [MaxLabels => Int]

=item [MinConfidence => Num]


=back

Each argument is described in detail in: L<Paws::Rekognition::DetectLabels>

Returns: a L<Paws::Rekognition::DetectLabelsResponse> instance

Detects instances of real-world entities within an image (JPEG or PNG)
provided as input. This includes objects like flower, tree, and table;
events like wedding, graduation, and birthday party; and concepts like
landscape, evening, and nature.

For an example, see Analyzing Images Stored in an Amazon S3 Bucket in
the Amazon Rekognition Developer Guide.

C<DetectLabels> does not support the detection of activities. However,
activity detection is supported for label detection in videos. For more
information, see StartLabelDetection in the Amazon Rekognition
Developer Guide.

You pass the input image as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.

For each object, scene, and concept the API returns one or more labels.
Each label provides the object name, and the level of confidence that
the image contains the object. For example, suppose the input image has
a lighthouse, the sea, and a rock. The response includes all three
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

In response, the API returns an array of labels. In addition, the
response also includes the orientation correction. Optionally, you can
specify C<MinConfidence> to control the confidence threshold for the
labels returned. The default is 55%. You can also add the C<MaxLabels>
parameter to limit the number of labels returned.

If the object detected is a person, the operation doesn't provide the
same facial details that the DetectFaces operation provides.

C<DetectLabels> returns bounding boxes for instances of common object
labels in an array of Instance objects. An C<Instance> object contains
a BoundingBox object, for the location of the label on the image. It
also includes the confidence by which the bounding box was detected.

C<DetectLabels> also returns a hierarchical taxonomy of detected
labels. For example, a detected car might be assigned the label I<car>.
The label I<car> has two parent labels: I<Vehicle> (its parent) and
I<Transportation> (its grandparent). The response returns the entire
list of ancestors for a label. Each ancestor is a unique label in the
response. In the previous example, I<Car>, I<Vehicle>, and
I<Transportation> are returned as unique labels in the response.

This is a stateless API operation. That is, the operation does not
persist any data.

This operation requires permissions to perform the
C<rekognition:DetectLabels> action.


=head2 DetectModerationLabels

=over

=item Image => L<Paws::Rekognition::Image>

=item [MinConfidence => Num]


=back

Each argument is described in detail in: L<Paws::Rekognition::DetectModerationLabels>

Returns: a L<Paws::Rekognition::DetectModerationLabelsResponse> instance

Detects explicit or suggestive adult content in a specified JPEG or PNG
format image. Use C<DetectModerationLabels> to moderate images
depending on your requirements. For example, you might want to filter
images that contain nudity, but not images containing suggestive
content.

To filter images, use the labels returned by C<DetectModerationLabels>
to determine which types of content are appropriate.

For information about moderation labels, see Detecting Unsafe Content
in the Amazon Rekognition Developer Guide.

You pass the input image either as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.


=head2 DetectText

=over

=item Image => L<Paws::Rekognition::Image>


=back

Each argument is described in detail in: L<Paws::Rekognition::DetectText>

Returns: a L<Paws::Rekognition::DetectTextResponse> instance

Detects text in the input image and converts it into machine-readable
text.

Pass the input image as base64-encoded image bytes or as a reference to
an image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon
Rekognition operations, you must pass it as a reference to an image in
an Amazon S3 bucket. For the AWS CLI, passing image bytes is not
supported. The image must be either a .png or .jpeg formatted file.

The C<DetectText> operation returns text in an array of TextDetection
elements, C<TextDetections>. Each C<TextDetection> element provides
information about a single word or line of text that was detected in
the image.

A word is one or more ISO basic latin script characters that are not
separated by spaces. C<DetectText> can detect up to 50 words in an
image.

A line is a string of equally spaced words. A line isn't necessarily a
complete sentence. For example, a driver's license number is detected
as a line. A line ends when there is no aligned text after it. Also, a
line ends when there is a large gap between words, relative to the
length of the words. This means, depending on the gap between words,
Amazon Rekognition may detect multiple lines in text aligned in the
same direction. Periods don't represent the end of a line. If a
sentence spans multiple lines, the C<DetectText> operation returns
multiple lines.

To determine whether a C<TextDetection> element is a line of text or a
word, use the C<TextDetection> object C<Type> field.

To be detected, text must be within +/- 90 degrees orientation of the
horizontal axis.

For more information, see DetectText in the Amazon Rekognition
Developer Guide.


=head2 GetCelebrityInfo

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::GetCelebrityInfo>

Returns: a L<Paws::Rekognition::GetCelebrityInfoResponse> instance

Gets the name and additional information about a celebrity based on his
or her Amazon Rekognition ID. The additional information is returned as
an array of URLs. If there is no additional information about the
celebrity, this list is empty.

For more information, see Recognizing Celebrities in an Image in the
Amazon Rekognition Developer Guide.

This operation requires permissions to perform the
C<rekognition:GetCelebrityInfo> action.


=head2 GetCelebrityRecognition

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetCelebrityRecognition>

Returns: a L<Paws::Rekognition::GetCelebrityRecognitionResponse> instance

Gets the celebrity recognition results for a Amazon Rekognition Video
analysis started by StartCelebrityRecognition.

Celebrity recognition in a video is an asynchronous operation. Analysis
is started by a call to StartCelebrityRecognition which returns a job
identifier (C<JobId>). When the celebrity recognition operation
finishes, Amazon Rekognition Video publishes a completion status to the
Amazon Simple Notification Service topic registered in the initial call
to C<StartCelebrityRecognition>. To get the results of the celebrity
recognition analysis, first check that the status value published to
the Amazon SNS topic is C<SUCCEEDED>. If so, call
C<GetCelebrityDetection> and pass the job identifier (C<JobId>) from
the initial call to C<StartCelebrityDetection>.

For more information, see Working With Stored Videos in the Amazon
Rekognition Developer Guide.

C<GetCelebrityRecognition> returns detected celebrities and the time(s)
they are detected in an array (C<Celebrities>) of CelebrityRecognition
objects. Each C<CelebrityRecognition> contains information about the
celebrity in a CelebrityDetail object and the time, C<Timestamp>, the
celebrity was detected.

C<GetCelebrityRecognition> only returns the default facial attributes
(C<BoundingBox>, C<Confidence>, C<Landmarks>, C<Pose>, and C<Quality>).
The other facial attributes listed in the C<Face> object of the
following response syntax are not returned. For more information, see
FaceDetail in the Amazon Rekognition Developer Guide.

By default, the C<Celebrities> array is sorted by time (milliseconds
from the start of the video). You can also sort the array by celebrity
by specifying the value C<ID> in the C<SortBy> input parameter.

The C<CelebrityDetail> object includes the celebrity identifer and
additional information urls. If you don't store the additional
information urls, you can get them later by calling GetCelebrityInfo
with the celebrity identifer.

No information is returned for faces not recognized as celebrities.

Use MaxResults parameter to limit the number of labels returned. If
there are more results than specified in C<MaxResults>, the value of
C<NextToken> in the operation response contains a pagination token for
getting the next set of results. To get the next page of results, call
C<GetCelebrityDetection> and populate the C<NextToken> request
parameter with the token value returned from the previous call to
C<GetCelebrityRecognition>.


=head2 GetContentModeration

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetContentModeration>

Returns: a L<Paws::Rekognition::GetContentModerationResponse> instance

Gets the content moderation analysis results for a Amazon Rekognition
Video analysis started by StartContentModeration.

Content moderation analysis of a video is an asynchronous operation.
You start analysis by calling StartContentModeration. which returns a
job identifier (C<JobId>). When analysis finishes, Amazon Rekognition
Video publishes a completion status to the Amazon Simple Notification
Service topic registered in the initial call to
C<StartContentModeration>. To get the results of the content moderation
analysis, first check that the status value published to the Amazon SNS
topic is C<SUCCEEDED>. If so, call C<GetCelebrityDetection> and pass
the job identifier (C<JobId>) from the initial call to
C<StartCelebrityDetection>.

For more information, see Working with Stored Videos in the Amazon
Rekognition Devlopers Guide.

C<GetContentModeration> returns detected content moderation labels, and
the time they are detected, in an array, C<ModerationLabels>, of
ContentModerationDetection objects.

By default, the moderated labels are returned sorted by time, in
milliseconds from the start of the video. You can also sort them by
moderated label by specifying C<NAME> for the C<SortBy> input
parameter.

Since video analysis can return a large number of results, use the
C<MaxResults> parameter to limit the number of labels returned in a
single call to C<GetContentModeration>. If there are more results than
specified in C<MaxResults>, the value of C<NextToken> in the operation
response contains a pagination token for getting the next set of
results. To get the next page of results, call C<GetContentModeration>
and populate the C<NextToken> request parameter with the value of
C<NextToken> returned from the previous call to
C<GetContentModeration>.

For more information, see Detecting Unsafe Content in the Amazon
Rekognition Developer Guide.


=head2 GetFaceDetection

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetFaceDetection>

Returns: a L<Paws::Rekognition::GetFaceDetectionResponse> instance

Gets face detection results for a Amazon Rekognition Video analysis
started by StartFaceDetection.

Face detection with Amazon Rekognition Video is an asynchronous
operation. You start face detection by calling StartFaceDetection which
returns a job identifier (C<JobId>). When the face detection operation
finishes, Amazon Rekognition Video publishes a completion status to the
Amazon Simple Notification Service topic registered in the initial call
to C<StartFaceDetection>. To get the results of the face detection
operation, first check that the status value published to the Amazon
SNS topic is C<SUCCEEDED>. If so, call GetFaceDetection and pass the
job identifier (C<JobId>) from the initial call to
C<StartFaceDetection>.

C<GetFaceDetection> returns an array of detected faces (C<Faces>)
sorted by the time the faces were detected.

Use MaxResults parameter to limit the number of labels returned. If
there are more results than specified in C<MaxResults>, the value of
C<NextToken> in the operation response contains a pagination token for
getting the next set of results. To get the next page of results, call
C<GetFaceDetection> and populate the C<NextToken> request parameter
with the token value returned from the previous call to
C<GetFaceDetection>.


=head2 GetFaceSearch

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetFaceSearch>

Returns: a L<Paws::Rekognition::GetFaceSearchResponse> instance

Gets the face search results for Amazon Rekognition Video face search
started by StartFaceSearch. The search returns faces in a collection
that match the faces of persons detected in a video. It also includes
the time(s) that faces are matched in the video.

Face search in a video is an asynchronous operation. You start face
search by calling to StartFaceSearch which returns a job identifier
(C<JobId>). When the search operation finishes, Amazon Rekognition
Video publishes a completion status to the Amazon Simple Notification
Service topic registered in the initial call to C<StartFaceSearch>. To
get the search results, first check that the status value published to
the Amazon SNS topic is C<SUCCEEDED>. If so, call C<GetFaceSearch> and
pass the job identifier (C<JobId>) from the initial call to
C<StartFaceSearch>.

For more information, see Searching Faces in a Collection in the Amazon
Rekognition Developer Guide.

The search results are retured in an array, C<Persons>, of PersonMatch
objects. EachC<PersonMatch> element contains details about the matching
faces in the input collection, person information (facial attributes,
bounding boxes, and person identifer) for the matched person, and the
time the person was matched in the video.

C<GetFaceSearch> only returns the default facial attributes
(C<BoundingBox>, C<Confidence>, C<Landmarks>, C<Pose>, and C<Quality>).
The other facial attributes listed in the C<Face> object of the
following response syntax are not returned. For more information, see
FaceDetail in the Amazon Rekognition Developer Guide.

By default, the C<Persons> array is sorted by the time, in milliseconds
from the start of the video, persons are matched. You can also sort by
persons by specifying C<INDEX> for the C<SORTBY> input parameter.


=head2 GetLabelDetection

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetLabelDetection>

Returns: a L<Paws::Rekognition::GetLabelDetectionResponse> instance

Gets the label detection results of a Amazon Rekognition Video analysis
started by StartLabelDetection.

The label detection operation is started by a call to
StartLabelDetection which returns a job identifier (C<JobId>). When the
label detection operation finishes, Amazon Rekognition publishes a
completion status to the Amazon Simple Notification Service topic
registered in the initial call to C<StartlabelDetection>. To get the
results of the label detection operation, first check that the status
value published to the Amazon SNS topic is C<SUCCEEDED>. If so, call
GetLabelDetection and pass the job identifier (C<JobId>) from the
initial call to C<StartLabelDetection>.

C<GetLabelDetection> returns an array of detected labels (C<Labels>)
sorted by the time the labels were detected. You can also sort by the
label name by specifying C<NAME> for the C<SortBy> input parameter.

The labels returned include the label name, the percentage confidence
in the accuracy of the detected label, and the time the label was
detected in the video.

The returned labels also include bounding box information for common
objects, a hierarchical taxonomy of detected labels, and the version of
the label model used for detection.

Use MaxResults parameter to limit the number of labels returned. If
there are more results than specified in C<MaxResults>, the value of
C<NextToken> in the operation response contains a pagination token for
getting the next set of results. To get the next page of results, call
C<GetlabelDetection> and populate the C<NextToken> request parameter
with the token value returned from the previous call to
C<GetLabelDetection>.


=head2 GetPersonTracking

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::GetPersonTracking>

Returns: a L<Paws::Rekognition::GetPersonTrackingResponse> instance

Gets the path tracking results of a Amazon Rekognition Video analysis
started by StartPersonTracking.

The person path tracking operation is started by a call to
C<StartPersonTracking> which returns a job identifier (C<JobId>). When
the operation finishes, Amazon Rekognition Video publishes a completion
status to the Amazon Simple Notification Service topic registered in
the initial call to C<StartPersonTracking>.

To get the results of the person path tracking operation, first check
that the status value published to the Amazon SNS topic is
C<SUCCEEDED>. If so, call GetPersonTracking and pass the job identifier
(C<JobId>) from the initial call to C<StartPersonTracking>.

C<GetPersonTracking> returns an array, C<Persons>, of tracked persons
and the time(s) their paths were tracked in the video.

C<GetPersonTracking> only returns the default facial attributes
(C<BoundingBox>, C<Confidence>, C<Landmarks>, C<Pose>, and C<Quality>).
The other facial attributes listed in the C<Face> object of the
following response syntax are not returned.

For more information, see FaceDetail in the Amazon Rekognition
Developer Guide.

By default, the array is sorted by the time(s) a person's path is
tracked in the video. You can sort by tracked persons by specifying
C<INDEX> for the C<SortBy> input parameter.

Use the C<MaxResults> parameter to limit the number of items returned.
If there are more results than specified in C<MaxResults>, the value of
C<NextToken> in the operation response contains a pagination token for
getting the next set of results. To get the next page of results, call
C<GetPersonTracking> and populate the C<NextToken> request parameter
with the token value returned from the previous call to
C<GetPersonTracking>.


=head2 IndexFaces

=over

=item CollectionId => Str

=item Image => L<Paws::Rekognition::Image>

=item [DetectionAttributes => ArrayRef[Str|Undef]]

=item [ExternalImageId => Str]

=item [MaxFaces => Int]

=item [QualityFilter => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::IndexFaces>

Returns: a L<Paws::Rekognition::IndexFacesResponse> instance

Detects faces in the input image and adds them to the specified
collection.

Amazon Rekognition doesn't save the actual faces that are detected.
Instead, the underlying detection algorithm first detects the faces in
the input image. For each face, the algorithm extracts facial features
into a feature vector, and stores it in the backend database. Amazon
Rekognition uses feature vectors when it performs face match and search
operations using the SearchFaces and SearchFacesByImage operations.

For more information, see Adding Faces to a Collection in the Amazon
Rekognition Developer Guide.

To get the number of faces in a collection, call DescribeCollection.

If you're using version 1.0 of the face detection model, C<IndexFaces>
indexes the 15 largest faces in the input image. Later versions of the
face detection model index the 100 largest faces in the input image.

If you're using version 4 or later of the face model, image orientation
information is not returned in the C<OrientationCorrection> field.

To determine which version of the model you're using, call
DescribeCollection and supply the collection ID. You can also get the
model version from the value of C<FaceModelVersion> in the response
from C<IndexFaces>

For more information, see Model Versioning in the Amazon Rekognition
Developer Guide.

If you provide the optional C<ExternalImageID> for the input image you
provided, Amazon Rekognition associates this ID with all faces that it
detects. When you call the ListFaces operation, the response returns
the external ID. You can use this external image ID to create a
client-side index to associate the faces with each image. You can then
use the index to find all faces in an image.

You can specify the maximum number of faces to index with the
C<MaxFaces> input parameter. This is useful when you want to index the
largest faces in an image and don't want to index smaller faces, such
as those belonging to people standing in the background.

The C<QualityFilter> input parameter allows you to filter out detected
faces that donE<rsquo>t meet the required quality bar chosen by Amazon
Rekognition. The quality bar is based on a variety of common use cases.
By default, C<IndexFaces> filters detected faces. You can also
explicitly filter detected faces by specifying C<AUTO> for the value of
C<QualityFilter>. If you do not want to filter detected faces, specify
C<NONE>.

To use quality filtering, you need a collection associated with version
3 of the face model. To get the version of the face model associated
with a collection, call DescribeCollection.

Information about faces detected in an image, but not indexed, is
returned in an array of UnindexedFace objects, C<UnindexedFaces>. Faces
aren't indexed for reasons such as:

=over

=item *

The number of faces detected exceeds the value of the C<MaxFaces>
request parameter.

=item *

The face is too small compared to the image dimensions.

=item *

The face is too blurry.

=item *

The image is too dark.

=item *

The face has an extreme pose.

=back

In response, the C<IndexFaces> operation returns an array of metadata
for all detected faces, C<FaceRecords>. This includes:

=over

=item *

The bounding box, C<BoundingBox>, of the detected face.

=item *

A confidence value, C<Confidence>, which indicates the confidence that
the bounding box contains a face.

=item *

A face ID, C<faceId>, assigned by the service for each face that's
detected and stored.

=item *

An image ID, C<ImageId>, assigned by the service for the input image.

=back

If you request all facial attributes (by using the
C<detectionAttributes> parameter), Amazon Rekognition returns detailed
facial attributes, such as facial landmarks (for example, location of
eye and mouth) and other facial attributes like gender. If you provide
the same image, specify the same collection, and use the same external
ID in the C<IndexFaces> operation, Amazon Rekognition doesn't save
duplicate face metadata.

The input image is passed either as base64-encoded image bytes, or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes isn't
supported. The image must be formatted as a PNG or JPEG file.

This operation requires permissions to perform the
C<rekognition:IndexFaces> action.


=head2 ListCollections

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::ListCollections>

Returns: a L<Paws::Rekognition::ListCollectionsResponse> instance

Returns list of collection IDs in your account. If the result is
truncated, the response also provides a C<NextToken> that you can use
in the subsequent request to fetch the next set of collection IDs.

For an example, see Listing Collections in the Amazon Rekognition
Developer Guide.

This operation requires permissions to perform the
C<rekognition:ListCollections> action.


=head2 ListFaces

=over

=item CollectionId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::ListFaces>

Returns: a L<Paws::Rekognition::ListFacesResponse> instance

Returns metadata for faces in the specified collection. This metadata
includes information such as the bounding box coordinates, the
confidence (that the bounding box contains a face), and face ID. For an
example, see Listing Faces in a Collection in the Amazon Rekognition
Developer Guide.

This operation requires permissions to perform the
C<rekognition:ListFaces> action.


=head2 ListStreamProcessors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Rekognition::ListStreamProcessors>

Returns: a L<Paws::Rekognition::ListStreamProcessorsResponse> instance

Gets a list of stream processors that you have created with
CreateStreamProcessor.


=head2 RecognizeCelebrities

=over

=item Image => L<Paws::Rekognition::Image>


=back

Each argument is described in detail in: L<Paws::Rekognition::RecognizeCelebrities>

Returns: a L<Paws::Rekognition::RecognizeCelebritiesResponse> instance

Returns an array of celebrities recognized in the input image. For more
information, see Recognizing Celebrities in the Amazon Rekognition
Developer Guide.

C<RecognizeCelebrities> returns the 100 largest faces in the image. It
lists recognized celebrities in the C<CelebrityFaces> array and
unrecognized faces in the C<UnrecognizedFaces> array.
C<RecognizeCelebrities> doesn't return celebrities whose faces aren't
among the largest 100 faces in the image.

For each celebrity recognized, C<RecognizeCelebrities> returns a
C<Celebrity> object. The C<Celebrity> object contains the celebrity
name, ID, URL links to additional information, match confidence, and a
C<ComparedFace> object that you can use to locate the celebrity's face
on the image.

Amazon Rekognition doesn't retain information about which images a
celebrity has been recognized in. Your application must store this
information and use the C<Celebrity> ID property as a unique identifier
for the celebrity. If you don't store the celebrity name or additional
information URLs returned by C<RecognizeCelebrities>, you will need the
ID to identify the celebrity in a call to the GetCelebrityInfo
operation.

You pass the input image either as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.

For an example, see Recognizing Celebrities in an Image in the Amazon
Rekognition Developer Guide.

This operation requires permissions to perform the
C<rekognition:RecognizeCelebrities> operation.


=head2 SearchFaces

=over

=item CollectionId => Str

=item FaceId => Str

=item [FaceMatchThreshold => Num]

=item [MaxFaces => Int]


=back

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

For an example, see Searching for a Face Using Its Face ID in the
Amazon Rekognition Developer Guide.

This operation requires permissions to perform the
C<rekognition:SearchFaces> action.


=head2 SearchFacesByImage

=over

=item CollectionId => Str

=item Image => L<Paws::Rekognition::Image>

=item [FaceMatchThreshold => Num]

=item [MaxFaces => Int]


=back

Each argument is described in detail in: L<Paws::Rekognition::SearchFacesByImage>

Returns: a L<Paws::Rekognition::SearchFacesByImageResponse> instance

For a given input image, first detects the largest face in the image,
and then searches the specified collection for matching faces. The
operation compares the features of the input face with faces in the
specified collection.

To search for all faces in an input image, you might first call the
IndexFaces operation, and then use the face IDs returned in subsequent
calls to the SearchFaces operation.

You can also call the C<DetectFaces> operation and use the bounding
boxes in the response to make face crops, which then you can pass in to
the C<SearchFacesByImage> operation.

You pass the input image either as base64-encoded image bytes or as a
reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
call Amazon Rekognition operations, passing image bytes is not
supported. The image must be either a PNG or JPEG formatted file.

The response returns an array of faces that match, ordered by
similarity score with the highest similarity first. More specifically,
it is an array of metadata for each face match found. Along with the
metadata, the response also includes a C<similarity> indicating how
similar the face is to the input face. In the response, the operation
also returns the bounding box (and a confidence level that the bounding
box contains a face) of the face that Amazon Rekognition used for the
input image.

For an example, Searching for a Face Using an Image in the Amazon
Rekognition Developer Guide.

This operation requires permissions to perform the
C<rekognition:SearchFacesByImage> action.


=head2 StartCelebrityRecognition

=over

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [JobTag => Str]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartCelebrityRecognition>

Returns: a L<Paws::Rekognition::StartCelebrityRecognitionResponse> instance

Starts asynchronous recognition of celebrities in a stored video.

Amazon Rekognition Video can detect celebrities in a video must be
stored in an Amazon S3 bucket. Use Video to specify the bucket name and
the filename of the video. C<StartCelebrityRecognition> returns a job
identifier (C<JobId>) which you use to get the results of the analysis.
When celebrity recognition analysis is finished, Amazon Rekognition
Video publishes a completion status to the Amazon Simple Notification
Service topic that you specify in C<NotificationChannel>. To get the
results of the celebrity recognition analysis, first check that the
status value published to the Amazon SNS topic is C<SUCCEEDED>. If so,
call GetCelebrityRecognition and pass the job identifier (C<JobId>)
from the initial call to C<StartCelebrityRecognition>.

For more information, see Recognizing Celebrities in the Amazon
Rekognition Developer Guide.


=head2 StartContentModeration

=over

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [JobTag => Str]

=item [MinConfidence => Num]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartContentModeration>

Returns: a L<Paws::Rekognition::StartContentModerationResponse> instance

Starts asynchronous detection of explicit or suggestive adult content
in a stored video.

Amazon Rekognition Video can moderate content in a video stored in an
Amazon S3 bucket. Use Video to specify the bucket name and the filename
of the video. C<StartContentModeration> returns a job identifier
(C<JobId>) which you use to get the results of the analysis. When
content moderation analysis is finished, Amazon Rekognition Video
publishes a completion status to the Amazon Simple Notification Service
topic that you specify in C<NotificationChannel>.

To get the results of the content moderation analysis, first check that
the status value published to the Amazon SNS topic is C<SUCCEEDED>. If
so, call GetContentModeration and pass the job identifier (C<JobId>)
from the initial call to C<StartContentModeration>.

For more information, see Detecting Unsafe Content in the Amazon
Rekognition Developer Guide.


=head2 StartFaceDetection

=over

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [FaceAttributes => Str]

=item [JobTag => Str]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartFaceDetection>

Returns: a L<Paws::Rekognition::StartFaceDetectionResponse> instance

Starts asynchronous detection of faces in a stored video.

Amazon Rekognition Video can detect faces in a video stored in an
Amazon S3 bucket. Use Video to specify the bucket name and the filename
of the video. C<StartFaceDetection> returns a job identifier (C<JobId>)
that you use to get the results of the operation. When face detection
is finished, Amazon Rekognition Video publishes a completion status to
the Amazon Simple Notification Service topic that you specify in
C<NotificationChannel>. To get the results of the face detection
operation, first check that the status value published to the Amazon
SNS topic is C<SUCCEEDED>. If so, call GetFaceDetection and pass the
job identifier (C<JobId>) from the initial call to
C<StartFaceDetection>.

For more information, see Detecting Faces in a Stored Video in the
Amazon Rekognition Developer Guide.


=head2 StartFaceSearch

=over

=item CollectionId => Str

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [FaceMatchThreshold => Num]

=item [JobTag => Str]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartFaceSearch>

Returns: a L<Paws::Rekognition::StartFaceSearchResponse> instance

Starts the asynchronous search for faces in a collection that match the
faces of persons detected in a stored video.

The video must be stored in an Amazon S3 bucket. Use Video to specify
the bucket name and the filename of the video. C<StartFaceSearch>
returns a job identifier (C<JobId>) which you use to get the search
results once the search has completed. When searching is finished,
Amazon Rekognition Video publishes a completion status to the Amazon
Simple Notification Service topic that you specify in
C<NotificationChannel>. To get the search results, first check that the
status value published to the Amazon SNS topic is C<SUCCEEDED>. If so,
call GetFaceSearch and pass the job identifier (C<JobId>) from the
initial call to C<StartFaceSearch>. For more information, see
procedure-person-search-videos.


=head2 StartLabelDetection

=over

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [JobTag => Str]

=item [MinConfidence => Num]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartLabelDetection>

Returns: a L<Paws::Rekognition::StartLabelDetectionResponse> instance

Starts asynchronous detection of labels in a stored video.

Amazon Rekognition Video can detect labels in a video. Labels are
instances of real-world entities. This includes objects like flower,
tree, and table; events like wedding, graduation, and birthday party;
concepts like landscape, evening, and nature; and activities like a
person getting out of a car or a person skiing.

The video must be stored in an Amazon S3 bucket. Use Video to specify
the bucket name and the filename of the video. C<StartLabelDetection>
returns a job identifier (C<JobId>) which you use to get the results of
the operation. When label detection is finished, Amazon Rekognition
Video publishes a completion status to the Amazon Simple Notification
Service topic that you specify in C<NotificationChannel>.

To get the results of the label detection operation, first check that
the status value published to the Amazon SNS topic is C<SUCCEEDED>. If
so, call GetLabelDetection and pass the job identifier (C<JobId>) from
the initial call to C<StartLabelDetection>.


=head2 StartPersonTracking

=over

=item Video => L<Paws::Rekognition::Video>

=item [ClientRequestToken => Str]

=item [JobTag => Str]

=item [NotificationChannel => L<Paws::Rekognition::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Rekognition::StartPersonTracking>

Returns: a L<Paws::Rekognition::StartPersonTrackingResponse> instance

Starts the asynchronous tracking of a person's path in a stored video.

Amazon Rekognition Video can track the path of people in a video stored
in an Amazon S3 bucket. Use Video to specify the bucket name and the
filename of the video. C<StartPersonTracking> returns a job identifier
(C<JobId>) which you use to get the results of the operation. When
label detection is finished, Amazon Rekognition publishes a completion
status to the Amazon Simple Notification Service topic that you specify
in C<NotificationChannel>.

To get the results of the person detection operation, first check that
the status value published to the Amazon SNS topic is C<SUCCEEDED>. If
so, call GetPersonTracking and pass the job identifier (C<JobId>) from
the initial call to C<StartPersonTracking>.


=head2 StartStreamProcessor

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::StartStreamProcessor>

Returns: a L<Paws::Rekognition::StartStreamProcessorResponse> instance

Starts processing a stream processor. You create a stream processor by
calling CreateStreamProcessor. To tell C<StartStreamProcessor> which
stream processor to start, use the value of the C<Name> field specified
in the call to C<CreateStreamProcessor>.


=head2 StopStreamProcessor

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Rekognition::StopStreamProcessor>

Returns: a L<Paws::Rekognition::StopStreamProcessorResponse> instance

Stops a running stream processor that was created by
CreateStreamProcessor.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCollections(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCollections([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CollectionIds, passing the object as the first parameter, and the string 'CollectionIds' as the second parameter 

 - FaceModelVersions, passing the object as the first parameter, and the string 'FaceModelVersions' as the second parameter 

If not, it will return a a L<Paws::Rekognition::ListCollectionsResponse> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFaces(sub { },CollectionId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFaces(CollectionId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Faces, passing the object as the first parameter, and the string 'Faces' as the second parameter 

If not, it will return a a L<Paws::Rekognition::ListFacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreamProcessors(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllStreamProcessors([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StreamProcessors, passing the object as the first parameter, and the string 'StreamProcessors' as the second parameter 

If not, it will return a a L<Paws::Rekognition::ListStreamProcessorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

