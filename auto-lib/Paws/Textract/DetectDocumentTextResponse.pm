# Generated from json/callresult_class.tt

package Paws::Textract::DetectDocumentTextResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Textract::Types qw/Textract_DocumentMetadata Textract_Block/;
  has Blocks => (is => 'ro', isa => ArrayRef[Textract_Block]);
  has DocumentMetadata => (is => 'ro', isa => Textract_DocumentMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Blocks' => {
                             'class' => 'Paws::Textract::Block',
                             'type' => 'ArrayRef[Textract_Block]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DocumentMetadata' => {
                                       'type' => 'Textract_DocumentMetadata',
                                       'class' => 'Paws::Textract::DocumentMetadata'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Textract::DetectDocumentTextResponse

=head1 ATTRIBUTES


=head2 Blocks => ArrayRef[Textract_Block]

An array of Block objects containing the text detected in the document.


=head2 DocumentMetadata => Textract_DocumentMetadata

Metadata about the document. Contains the number of pages that are
detected in the document.


=head2 _request_id => Str


=cut

1;