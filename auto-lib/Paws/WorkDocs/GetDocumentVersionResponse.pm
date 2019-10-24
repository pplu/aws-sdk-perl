
package Paws::WorkDocs::GetDocumentVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkDocs::Types qw/WorkDocs_DocumentVersionMetadata WorkDocs_CustomMetadataMap/;
  has CustomMetadata => (is => 'ro', isa => WorkDocs_CustomMetadataMap);
  has Metadata => (is => 'ro', isa => WorkDocs_DocumentVersionMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CustomMetadata' => {
                                     'class' => 'Paws::WorkDocs::CustomMetadataMap',
                                     'type' => 'WorkDocs_CustomMetadataMap'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Metadata' => {
                               'class' => 'Paws::WorkDocs::DocumentVersionMetadata',
                               'type' => 'WorkDocs_DocumentVersionMetadata'
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

