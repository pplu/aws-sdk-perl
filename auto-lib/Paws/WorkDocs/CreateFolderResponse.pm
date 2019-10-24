
package Paws::WorkDocs::CreateFolderResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkDocs::Types qw/WorkDocs_FolderMetadata/;
  has Metadata => (is => 'ro', isa => WorkDocs_FolderMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Metadata' => {
                               'class' => 'Paws::WorkDocs::FolderMetadata',
                               'type' => 'WorkDocs_FolderMetadata'
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

