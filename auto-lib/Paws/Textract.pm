package Paws::Textract;
  use Moose;
  sub service { 'textract' }
  sub signing_name { 'textract' }
  sub version { '2018-06-27' }
  sub target_prefix { 'Textract' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AnalyzeDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::AnalyzeDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectDocumentText {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::DetectDocumentText', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocumentAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::GetDocumentAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocumentTextDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::GetDocumentTextDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDocumentAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::StartDocumentAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDocumentTextDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::StartDocumentTextDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AnalyzeDocument DetectDocumentText GetDocumentAnalysis GetDocumentTextDetection StartDocumentAnalysis StartDocumentTextDetection / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract - Perl Interface to AWS Amazon Textract

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Textract');
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

Amazon Textract detects and analyzes text in documents and converts it
into machine-readable text. This is the API reference documentation for
Amazon Textract.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27>


=head1 METHODS

=head2 AnalyzeDocument

=over

=item Document => L<Paws::Textract::Document>

=item FeatureTypes => ArrayRef[Str|Undef]

=item [HumanLoopConfig => L<Paws::Textract::HumanLoopConfig>]


=back

Each argument is described in detail in: L<Paws::Textract::AnalyzeDocument>

Returns: a L<Paws::Textract::AnalyzeDocumentResponse> instance

Analyzes an input document for relationships between detected items.

The types of information returned are as follows:

=over

=item *

Form data (key-value pairs). The related information is returned in two
Block objects, each of type C<KEY_VALUE_SET>: a KEY C<Block> object and
a VALUE C<Block> object. For example, I<Name: Ana Silva Carolina>
contains a key and value. I<Name:> is the key. I<Ana Silva Carolina> is
the value.

=item *

Table and table cell data. A TABLE C<Block> object contains information
about a detected table. A CELL C<Block> object is returned for each
cell in a table.

=item *

Lines and words of text. A LINE C<Block> object contains one or more
WORD C<Block> objects. All lines and words that are detected in the
document are returned (including text that doesn't have a relationship
with the value of C<FeatureTypes>).

=back

Selection elements such as check boxes and option buttons (radio
buttons) can be detected in form data and in tables. A
SELECTION_ELEMENT C<Block> object contains information about a
selection element, including the selection status.

You can choose which type of analysis to perform by specifying the
C<FeatureTypes> list.

The output is returned in a list of C<Block> objects.

C<AnalyzeDocument> is a synchronous operation. To analyze documents
asynchronously, use StartDocumentAnalysis.

For more information, see Document Text Analysis
(https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).


=head2 DetectDocumentText

=over

=item Document => L<Paws::Textract::Document>


=back

Each argument is described in detail in: L<Paws::Textract::DetectDocumentText>

Returns: a L<Paws::Textract::DetectDocumentTextResponse> instance

Detects text in the input document. Amazon Textract can detect lines of
text and the words that make up a line of text. The input document must
be an image in JPEG or PNG format. C<DetectDocumentText> returns the
detected text in an array of Block objects.

Each document page has as an associated C<Block> of type PAGE. Each
PAGE C<Block> object is the parent of LINE C<Block> objects that
represent the lines of detected text on a page. A LINE C<Block> object
is a parent for each word that makes up the line. Words are represented
by C<Block> objects of type WORD.

C<DetectDocumentText> is a synchronous operation. To analyze documents
asynchronously, use StartDocumentTextDetection.

For more information, see Document Text Detection
(https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).


=head2 GetDocumentAnalysis

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Textract::GetDocumentAnalysis>

Returns: a L<Paws::Textract::GetDocumentAnalysisResponse> instance

Gets the results for an Amazon Textract asynchronous operation that
analyzes text in a document.

You start asynchronous text analysis by calling StartDocumentAnalysis,
which returns a job identifier (C<JobId>). When the text analysis
operation finishes, Amazon Textract publishes a completion status to
the Amazon Simple Notification Service (Amazon SNS) topic that's
registered in the initial call to C<StartDocumentAnalysis>. To get the
results of the text-detection operation, first check that the status
value published to the Amazon SNS topic is C<SUCCEEDED>. If so, call
C<GetDocumentAnalysis>, and pass the job identifier (C<JobId>) from the
initial call to C<StartDocumentAnalysis>.

C<GetDocumentAnalysis> returns an array of Block objects. The following
types of information are returned:

=over

=item *

Form data (key-value pairs). The related information is returned in two
Block objects, each of type C<KEY_VALUE_SET>: a KEY C<Block> object and
a VALUE C<Block> object. For example, I<Name: Ana Silva Carolina>
contains a key and value. I<Name:> is the key. I<Ana Silva Carolina> is
the value.

=item *

Table and table cell data. A TABLE C<Block> object contains information
about a detected table. A CELL C<Block> object is returned for each
cell in a table.

=item *

Lines and words of text. A LINE C<Block> object contains one or more
WORD C<Block> objects. All lines and words that are detected in the
document are returned (including text that doesn't have a relationship
with the value of the C<StartDocumentAnalysis> C<FeatureTypes> input
parameter).

=back

Selection elements such as check boxes and option buttons (radio
buttons) can be detected in form data and in tables. A
SELECTION_ELEMENT C<Block> object contains information about a
selection element, including the selection status.

Use the C<MaxResults> parameter to limit the number of blocks that are
returned. If there are more results than specified in C<MaxResults>,
the value of C<NextToken> in the operation response contains a
pagination token for getting the next set of results. To get the next
page of results, call C<GetDocumentAnalysis>, and populate the
C<NextToken> request parameter with the token value that's returned
from the previous call to C<GetDocumentAnalysis>.

For more information, see Document Text Analysis
(https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).


=head2 GetDocumentTextDetection

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Textract::GetDocumentTextDetection>

Returns: a L<Paws::Textract::GetDocumentTextDetectionResponse> instance

Gets the results for an Amazon Textract asynchronous operation that
detects text in a document. Amazon Textract can detect lines of text
and the words that make up a line of text.

You start asynchronous text detection by calling
StartDocumentTextDetection, which returns a job identifier (C<JobId>).
When the text detection operation finishes, Amazon Textract publishes a
completion status to the Amazon Simple Notification Service (Amazon
SNS) topic that's registered in the initial call to
C<StartDocumentTextDetection>. To get the results of the text-detection
operation, first check that the status value published to the Amazon
SNS topic is C<SUCCEEDED>. If so, call C<GetDocumentTextDetection>, and
pass the job identifier (C<JobId>) from the initial call to
C<StartDocumentTextDetection>.

C<GetDocumentTextDetection> returns an array of Block objects.

Each document page has as an associated C<Block> of type PAGE. Each
PAGE C<Block> object is the parent of LINE C<Block> objects that
represent the lines of detected text on a page. A LINE C<Block> object
is a parent for each word that makes up the line. Words are represented
by C<Block> objects of type WORD.

Use the MaxResults parameter to limit the number of blocks that are
returned. If there are more results than specified in C<MaxResults>,
the value of C<NextToken> in the operation response contains a
pagination token for getting the next set of results. To get the next
page of results, call C<GetDocumentTextDetection>, and populate the
C<NextToken> request parameter with the token value that's returned
from the previous call to C<GetDocumentTextDetection>.

For more information, see Document Text Detection
(https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).


=head2 StartDocumentAnalysis

=over

=item DocumentLocation => L<Paws::Textract::DocumentLocation>

=item FeatureTypes => ArrayRef[Str|Undef]

=item [ClientRequestToken => Str]

=item [JobTag => Str]

=item [NotificationChannel => L<Paws::Textract::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Textract::StartDocumentAnalysis>

Returns: a L<Paws::Textract::StartDocumentAnalysisResponse> instance

Starts the asynchronous analysis of an input document for relationships
between detected items such as key-value pairs, tables, and selection
elements.

C<StartDocumentAnalysis> can analyze text in documents that are in
JPEG, PNG, and PDF format. The documents are stored in an Amazon S3
bucket. Use DocumentLocation to specify the bucket name and file name
of the document.

C<StartDocumentAnalysis> returns a job identifier (C<JobId>) that you
use to get the results of the operation. When text analysis is
finished, Amazon Textract publishes a completion status to the Amazon
Simple Notification Service (Amazon SNS) topic that you specify in
C<NotificationChannel>. To get the results of the text analysis
operation, first check that the status value published to the Amazon
SNS topic is C<SUCCEEDED>. If so, call GetDocumentAnalysis, and pass
the job identifier (C<JobId>) from the initial call to
C<StartDocumentAnalysis>.

For more information, see Document Text Analysis
(https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).


=head2 StartDocumentTextDetection

=over

=item DocumentLocation => L<Paws::Textract::DocumentLocation>

=item [ClientRequestToken => Str]

=item [JobTag => Str]

=item [NotificationChannel => L<Paws::Textract::NotificationChannel>]


=back

Each argument is described in detail in: L<Paws::Textract::StartDocumentTextDetection>

Returns: a L<Paws::Textract::StartDocumentTextDetectionResponse> instance

Starts the asynchronous detection of text in a document. Amazon
Textract can detect lines of text and the words that make up a line of
text.

C<StartDocumentTextDetection> can analyze text in documents that are in
JPEG, PNG, and PDF format. The documents are stored in an Amazon S3
bucket. Use DocumentLocation to specify the bucket name and file name
of the document.

C<StartTextDetection> returns a job identifier (C<JobId>) that you use
to get the results of the operation. When text detection is finished,
Amazon Textract publishes a completion status to the Amazon Simple
Notification Service (Amazon SNS) topic that you specify in
C<NotificationChannel>. To get the results of the text detection
operation, first check that the status value published to the Amazon
SNS topic is C<SUCCEEDED>. If so, call GetDocumentTextDetection, and
pass the job identifier (C<JobId>) from the initial call to
C<StartDocumentTextDetection>.

For more information, see Document Text Detection
(https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

