
package Paws::WorkDocs::GetFolderResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkDocs::Types qw/WorkDocs_FolderMetadata WorkDocs_CustomMetadataMap/;
  has CustomMetadata => (is => 'ro', isa => WorkDocs_CustomMetadataMap);
  has Metadata => (is => 'ro', isa => WorkDocs_FolderMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CustomMetadata' => {
                                     'type' => 'WorkDocs_CustomMetadataMap',
                                     'class' => 'Paws::WorkDocs::CustomMetadataMap'
                                   },
               'Metadata' => {
                               'type' => 'WorkDocs_FolderMetadata',
                               'class' => 'Paws::WorkDocs::FolderMetadata'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetFolderResponse

=head1 ATTRIBUTES


=head2 CustomMetadata => WorkDocs_CustomMetadataMap

The custom metadata on the folder.


=head2 Metadata => WorkDocs_FolderMetadata

The metadata of the folder.


=head2 _request_id => Str


=cut

