# Generated from json/callargs_class.tt

package Paws::Textract::GetDocumentAnalysis;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Textract::Types qw//;
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetDocumentAnalysis');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Textract::GetDocumentAnalysisResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobId' => {
                            'type' => 'Str'
                          },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'JobId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::GetDocumentAnalysis - Arguments for method GetDocumentAnalysis on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDocumentAnalysis on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method GetDocumentAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDocumentAnalysis.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $GetDocumentAnalysisResponse = $textract->GetDocumentAnalysis(
      JobId      => 'MyJobId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Blocks           = $GetDocumentAnalysisResponse->Blocks;
    my $DocumentMetadata = $GetDocumentAnalysisResponse->DocumentMetadata;
    my $JobStatus        = $GetDocumentAnalysisResponse->JobStatus;
    my $NextToken        = $GetDocumentAnalysisResponse->NextToken;
    my $StatusMessage    = $GetDocumentAnalysisResponse->StatusMessage;
    my $Warnings         = $GetDocumentAnalysisResponse->Warnings;

    # Returns a L<Paws::Textract::GetDocumentAnalysisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/GetDocumentAnalysis>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

A unique identifier for the text-detection job. The C<JobId> is
returned from C<StartDocumentAnalysis>.



=head2 MaxResults => Int

The maximum number of results to return per paginated call. The largest
value that you can specify is 1,000. If you specify a value greater
than 1,000, a maximum of 1,000 results is returned. The default value
is 1,000.



=head2 NextToken => Str

If the previous response was incomplete (because there are more blocks
to retrieve), Amazon Textract returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
blocks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDocumentAnalysis in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

