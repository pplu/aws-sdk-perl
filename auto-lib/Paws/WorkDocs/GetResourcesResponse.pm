
package Paws::WorkDocs::GetResourcesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkDocs::Types qw/WorkDocs_DocumentMetadata WorkDocs_FolderMetadata/;
  has Documents => (is => 'ro', isa => ArrayRef[WorkDocs_DocumentMetadata]);
  has Folders => (is => 'ro', isa => ArrayRef[WorkDocs_FolderMetadata]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Documents' => {
                                'class' => 'Paws::WorkDocs::DocumentMetadata',
                                'type' => 'ArrayRef[WorkDocs_DocumentMetadata]'
                              },
               'Marker' => {
                             'type' => 'Str'
                           },
               'Folders' => {
                              'type' => 'ArrayRef[WorkDocs_FolderMetadata]',
                              'class' => 'Paws::WorkDocs::FolderMetadata'
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

Paws::WorkDocs::GetResourcesResponse

=head1 ATTRIBUTES


=head2 Documents => ArrayRef[WorkDocs_DocumentMetadata]

The documents in the specified collection.


=head2 Folders => ArrayRef[WorkDocs_FolderMetadata]

The folders in the specified folder.


=head2 Marker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 _request_id => Str


=cut

