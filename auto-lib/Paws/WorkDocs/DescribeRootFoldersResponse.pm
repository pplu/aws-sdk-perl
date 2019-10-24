
package Paws::WorkDocs::DescribeRootFoldersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkDocs::Types qw/WorkDocs_FolderMetadata/;
  has Folders => (is => 'ro', isa => ArrayRef[WorkDocs_FolderMetadata]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Folders' => {
                              'class' => 'Paws::WorkDocs::FolderMetadata',
                              'type' => 'ArrayRef[WorkDocs_FolderMetadata]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
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

Paws::WorkDocs::DescribeRootFoldersResponse

=head1 ATTRIBUTES


=head2 Folders => ArrayRef[WorkDocs_FolderMetadata]

The user's special folders.


=head2 Marker => Str

The marker for the next set of results.


=head2 _request_id => Str


=cut

