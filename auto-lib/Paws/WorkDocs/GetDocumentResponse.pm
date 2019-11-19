
package Paws::WorkDocs::GetDocumentResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkDocs::Types qw/WorkDocs_DocumentMetadata WorkDocs_CustomMetadataMap/;
  has CustomMetadata => (is => 'ro', isa => WorkDocs_CustomMetadataMap);
  has Metadata => (is => 'ro', isa => WorkDocs_DocumentMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CustomMetadata' => {
                                     'class' => 'Paws::WorkDocs::CustomMetadataMap',
                                     'type' => 'WorkDocs_CustomMetadataMap'
                                   },
               'Metadata' => {
                               'type' => 'WorkDocs_DocumentMetadata',
                               'class' => 'Paws::WorkDocs::DocumentMetadata'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetDocumentResponse

=head1 ATTRIBUTES


=head2 CustomMetadata => WorkDocs_CustomMetadataMap

The custom metadata on the document.


=head2 Metadata => WorkDocs_DocumentMetadata

The metadata details of the document.


=head2 _request_id => Str


=cut

