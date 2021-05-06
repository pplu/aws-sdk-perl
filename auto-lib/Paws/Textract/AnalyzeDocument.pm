
package Paws::Textract::AnalyzeDocument;
  use Moose;
  has Document => (is => 'ro', isa => 'Paws::Textract::Document', required => 1);
  has FeatureTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has HumanLoopConfig => (is => 'ro', isa => 'Paws::Textract::HumanLoopConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AnalyzeDocument');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::AnalyzeDocumentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::AnalyzeDocument - Arguments for method AnalyzeDocument on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AnalyzeDocument on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method AnalyzeDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AnalyzeDocument.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $AnalyzeDocumentResponse = $textract->AnalyzeDocument(
      Document => {
        Bytes    => 'BlobImageBlob',    # min: 1, max: 10485760; OPTIONAL
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      FeatureTypes => [
        'TABLES', ...    # values: TABLES, FORMS
      ],
      HumanLoopConfig => {
        FlowDefinitionArn => 'MyFlowDefinitionArn',    # max: 256
        HumanLoopName     => 'MyHumanLoopName',        # min: 1, max: 63
        DataAttributes    => {
          ContentClassifiers => [
            'FreeOfPersonallyIdentifiableInformation',
            ... # values: FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
          ],    # max: 256; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AnalyzeDocumentModelVersion =
      $AnalyzeDocumentResponse->AnalyzeDocumentModelVersion;
    my $Blocks           = $AnalyzeDocumentResponse->Blocks;
    my $DocumentMetadata = $AnalyzeDocumentResponse->DocumentMetadata;
    my $HumanLoopActivationOutput =
      $AnalyzeDocumentResponse->HumanLoopActivationOutput;

    # Returns a L<Paws::Textract::AnalyzeDocumentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/AnalyzeDocument>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Document => L<Paws::Textract::Document>

The input document as base64-encoded bytes or an Amazon S3 object. If
you use the AWS CLI to call Amazon Textract operations, you can't pass
image bytes. The document must be an image in JPEG or PNG format.

If you're using an AWS SDK to call Amazon Textract, you might not need
to base64-encode image bytes that are passed using the C<Bytes> field.



=head2 B<REQUIRED> FeatureTypes => ArrayRef[Str|Undef]

A list of the types of analysis to perform. Add TABLES to the list to
return information about the tables that are detected in the input
document. Add FORMS to return detected form data. To perform both types
of analysis, add TABLES and FORMS to C<FeatureTypes>. All lines and
words detected in the document are included in the response (including
text that isn't related to the value of C<FeatureTypes>).



=head2 HumanLoopConfig => L<Paws::Textract::HumanLoopConfig>

Sets the configuration for the human in the loop workflow for analyzing
documents.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AnalyzeDocument in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

