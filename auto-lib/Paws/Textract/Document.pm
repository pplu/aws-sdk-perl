package Paws::Textract::Document;
  use Moose;
  has Bytes => (is => 'ro', isa => 'Str');
  has S3Object => (is => 'ro', isa => 'Paws::Textract::S3Object');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::Document

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::Document object:

  $service_obj->Method(Att1 => { Bytes => $value, ..., S3Object => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::Document object:

  $result = $service_obj->Method(...);
  $result->Att1->Bytes

=head1 DESCRIPTION

The input document, either as bytes or as an S3 object.

You pass image bytes to an Amazon Textract API operation by using the
C<Bytes> property. For example, you would use the C<Bytes> property to
pass a document loaded from a local file system. Image bytes passed by
using the C<Bytes> property must be base64 encoded. Your code might not
need to encode document file bytes if you're using an AWS SDK to call
Amazon Textract API operations.

You pass images stored in an S3 bucket to an Amazon Textract API
operation by using the C<S3Object> property. Documents stored in an S3
bucket don't need to be base64 encoded.

The AWS Region for the S3 bucket that contains the S3 object must match
the AWS Region that you use for Amazon Textract operations.

If you use the AWS CLI to call Amazon Textract operations, passing
image bytes using the Bytes property isn't supported. You must first
upload the document to an Amazon S3 bucket, and then call the operation
using the S3Object property.

For Amazon Textract to process an S3 object, the user must have
permission to access the S3 object.

=head1 ATTRIBUTES


=head2 Bytes => Str

  A blob of base64-encoded document bytes. The maximum size of a document
that's provided in a blob of bytes is 5 MB. The document bytes must be
in PNG or JPEG format.

If you're using an AWS SDK to call Amazon Textract, you might not need
to base64-encode image bytes passed using the C<Bytes> field.


=head2 S3Object => L<Paws::Textract::S3Object>

  Identifies an S3 object as the document source. The maximum size of a
document that's stored in an S3 bucket is 5 MB.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

