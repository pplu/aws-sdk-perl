# Generated from json/callresult_class.tt

package Paws::Textract::GetDocumentTextDetectionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Textract::Types qw/Textract_Block Textract_Warning Textract_DocumentMetadata/;
  has Blocks => (is => 'ro', isa => ArrayRef[Textract_Block]);
  has DocumentMetadata => (is => 'ro', isa => Textract_DocumentMetadata);
  has JobStatus => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has Warnings => (is => 'ro', isa => ArrayRef[Textract_Warning]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Blocks' => {
                             'class' => 'Paws::Textract::Block',
                             'type' => 'ArrayRef[Textract_Block]'
                           },
               'Warnings' => {
                               'type' => 'ArrayRef[Textract_Warning]',
                               'class' => 'Paws::Textract::Warning'
                             },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'JobStatus' => {
                                'type' => 'Str'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DocumentMetadata' => {
                                       'class' => 'Paws::Textract::DocumentMetadata',
                                       'type' => 'Textract_DocumentMetadata'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Textract::GetDocumentTextDetectionResponse

=head1 ATTRIBUTES


=head2 Blocks => ArrayRef[Textract_Block]

The results of the text-detection operation.


=head2 DocumentMetadata => Textract_DocumentMetadata

Information about a document that Amazon Textract processed.
C<DocumentMetadata> is returned in every page of paginated responses
from an Amazon Textract video operation.


=head2 JobStatus => Str

The current status of the text detection job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">, C<"PARTIAL_SUCCESS">
=head2 NextToken => Str

If the response is truncated, Amazon Textract returns this token. You
can use this token in the subsequent request to retrieve the next set
of text-detection results.


=head2 StatusMessage => Str

The current status of an asynchronous document text-detection
operation.


=head2 Warnings => ArrayRef[Textract_Warning]

A list of warnings that occurred during the document text-detection
operation.


=head2 _request_id => Str


=cut

1;