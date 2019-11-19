
package Paws::WorkDocs::GetDocumentVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkDocs::Types qw/WorkDocs_CustomMetadataMap WorkDocs_DocumentVersionMetadata/;
  has CustomMetadata => (is => 'ro', isa => WorkDocs_CustomMetadataMap);
  has Metadata => (is => 'ro', isa => WorkDocs_DocumentVersionMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Metadata' => {
                               'class' => 'Paws::WorkDocs::DocumentVersionMetadata',
                               'type' => 'WorkDocs_DocumentVersionMetadata'
                             },
               'CustomMetadata' => {
                                     'type' => 'WorkDocs_CustomMetadataMap',
                                     'class' => 'Paws::WorkDocs::CustomMetadataMap'
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

Paws::WorkDocs::GetDocumentVersionResponse

=head1 ATTRIBUTES


=head2 CustomMetadata => WorkDocs_CustomMetadataMap

The custom metadata on the document version.


=head2 Metadata => WorkDocs_DocumentVersionMetadata

The version metadata.


=head2 _request_id => Str


=cut

