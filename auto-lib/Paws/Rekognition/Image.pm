package Paws::Rekognition::Image;
  use Moose;
  has Bytes => (is => 'ro', isa => 'Str');
  has S3Object => (is => 'ro', isa => 'Paws::Rekognition::S3Object');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::Image

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::Image object:

  $service_obj->Method(Att1 => { Bytes => $value, ..., S3Object => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::Image object:

  $result = $service_obj->Method(...);
  $result->Att1->Bytes

=head1 DESCRIPTION

Provides the input image either as bytes or an S3 object.

You pass image bytes to an Amazon Rekognition API operation by using
the C<Bytes> property. For example, you would use the C<Bytes> property
to pass an image loaded from a local file system. Image bytes passed by
using the C<Bytes> property must be base64-encoded. Your code may not
need to encode image bytes if you are using an AWS SDK to call Amazon
Rekognition API operations.

For more information, see Analyzing an Image Loaded from a Local File
System in the Amazon Rekognition Developer Guide.

You pass images stored in an S3 bucket to an Amazon Rekognition API
operation by using the C<S3Object> property. Images stored in an S3
bucket do not need to be base64-encoded.

The region for the S3 bucket containing the S3 object must match the
region you use for Amazon Rekognition operations.

If you use the AWS CLI to call Amazon Rekognition operations, passing
image bytes using the Bytes property is not supported. You must first
upload the image to an Amazon S3 bucket and then call the operation
using the S3Object property.

For Amazon Rekognition to process an S3 object, the user must have
permission to access the S3 object. For more information, see Resource
Based Policies in the Amazon Rekognition Developer Guide.

=head1 ATTRIBUTES


=head2 Bytes => Str

  Blob of image bytes up to 5 MBs.


=head2 S3Object => L<Paws::Rekognition::S3Object>

  Identifies an S3 object as the image source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

