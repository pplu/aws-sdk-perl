
package Paws::Textract::GetDocumentTextDetection;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDocumentTextDetection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::GetDocumentTextDetectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::GetDocumentTextDetection - Arguments for method GetDocumentTextDetection on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDocumentTextDetection on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method GetDocumentTextDetection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDocumentTextDetection.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $GetDocumentTextDetectionResponse = $textract->GetDocumentTextDetection(
      JobId      => 'MyJobId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Blocks           = $GetDocumentTextDetectionResponse->Blocks;
    my $DocumentMetadata = $GetDocumentTextDetectionResponse->DocumentMetadata;
    my $JobStatus        = $GetDocumentTextDetectionResponse->JobStatus;
    my $NextToken        = $GetDocumentTextDetectionResponse->NextToken;
    my $StatusMessage    = $GetDocumentTextDetectionResponse->StatusMessage;
    my $Warnings         = $GetDocumentTextDetectionResponse->Warnings;

    # Returns a L<Paws::Textract::GetDocumentTextDetectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/GetDocumentTextDetection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

A unique identifier for the text detection job. The C<JobId> is
returned from C<StartDocumentTextDetection>.



=head2 MaxResults => Int

The maximum number of results to return per paginated call. The largest
value you can specify is 1,000. If you specify a value greater than
1,000, a maximum of 1,000 results is returned. The default value is
1,000.



=head2 NextToken => Str

If the previous response was incomplete (because there are more blocks
to retrieve), Amazon Textract returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
blocks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDocumentTextDetection in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

