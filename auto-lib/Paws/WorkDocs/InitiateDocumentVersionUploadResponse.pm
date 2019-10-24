
package Paws::WorkDocs::InitiateDocumentVersionUploadResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkDocs::Types qw/WorkDocs_UploadMetadata WorkDocs_DocumentMetadata/;
  has Metadata => (is => 'ro', isa => WorkDocs_DocumentMetadata);
  has UploadMetadata => (is => 'ro', isa => WorkDocs_UploadMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UploadMetadata' => {
                                     'class' => 'Paws::WorkDocs::UploadMetadata',
                                     'type' => 'WorkDocs_UploadMetadata'
                                   },
               'Metadata' => {
                               'class' => 'Paws::WorkDocs::DocumentMetadata',
                               'type' => 'WorkDocs_DocumentMetadata'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::InitiateDocumentVersionUploadResponse

=head1 ATTRIBUTES


=head2 Metadata => WorkDocs_DocumentMetadata

The document metadata.


=head2 UploadMetadata => WorkDocs_UploadMetadata

The upload metadata.


=head2 _request_id => Str


=cut

