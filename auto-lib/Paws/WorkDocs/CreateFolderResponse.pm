
package Paws::WorkDocs::CreateFolderResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkDocs::Types qw/WorkDocs_FolderMetadata/;
  has Metadata => (is => 'ro', isa => WorkDocs_FolderMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Metadata' => {
                               'type' => 'WorkDocs_FolderMetadata',
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

Paws::WorkDocs::CreateFolderResponse

=head1 ATTRIBUTES


=head2 Metadata => WorkDocs_FolderMetadata

The metadata of the folder.


=head2 _request_id => Str


=cut

