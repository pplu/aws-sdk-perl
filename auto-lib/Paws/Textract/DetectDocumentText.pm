
package Paws::Textract::DetectDocumentText;
  use Moose;
  has Document => (is => 'ro', isa => 'Paws::Textract::Document', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectDocumentText');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::DetectDocumentTextResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::DetectDocumentText - Arguments for method DetectDocumentText on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectDocumentText on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method DetectDocumentText.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectDocumentText.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $DetectDocumentTextResponse = $textract->DetectDocumentText(
      Document => {
        Bytes    => 'BlobImageBlob',    # min: 1, max: 10485760; OPTIONAL
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },

    );

    # Results:
    my $Blocks = $DetectDocumentTextResponse->Blocks;
    my $DetectDocumentTextModelVersion =
      $DetectDocumentTextResponse->DetectDocumentTextModelVersion;
    my $DocumentMetadata = $DetectDocumentTextResponse->DocumentMetadata;

    # Returns a L<Paws::Textract::DetectDocumentTextResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/DetectDocumentText>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Document => L<Paws::Textract::Document>

The input document as base64-encoded bytes or an Amazon S3 object. If
you use the AWS CLI to call Amazon Textract operations, you can't pass
image bytes. The document must be an image in JPEG or PNG format.

If you're using an AWS SDK to call Amazon Textract, you might not need
to base64-encode image bytes that are passed using the C<Bytes> field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectDocumentText in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

