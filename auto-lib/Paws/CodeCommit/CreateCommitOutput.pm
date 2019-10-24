# Generated from json/callresult_class.tt

package Paws::CodeCommit::CreateCommitOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_FileMetadata/;
  has CommitId => (is => 'ro', isa => Str);
  has FilesAdded => (is => 'ro', isa => ArrayRef[CodeCommit_FileMetadata]);
  has FilesDeleted => (is => 'ro', isa => ArrayRef[CodeCommit_FileMetadata]);
  has FilesUpdated => (is => 'ro', isa => ArrayRef[CodeCommit_FileMetadata]);
  has TreeId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TreeId' => {
                             'type' => 'Str'
                           },
               'FilesUpdated' => {
                                   'class' => 'Paws::CodeCommit::FileMetadata',
                                   'type' => 'ArrayRef[CodeCommit_FileMetadata]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FilesDeleted' => {
                                   'class' => 'Paws::CodeCommit::FileMetadata',
                                   'type' => 'ArrayRef[CodeCommit_FileMetadata]'
                                 },
               'FilesAdded' => {
                                 'class' => 'Paws::CodeCommit::FileMetadata',
                                 'type' => 'ArrayRef[CodeCommit_FileMetadata]'
                               },
               'CommitId' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'TreeId' => 'treeId',
                       'FilesUpdated' => 'filesUpdated',
                       'FilesDeleted' => 'filesDeleted',
                       'FilesAdded' => 'filesAdded',
                       'CommitId' => 'commitId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CreateCommitOutput

=head1 ATTRIBUTES


=head2 CommitId => Str

The full commit ID of the commit that contains your committed file
changes.


=head2 FilesAdded => ArrayRef[CodeCommit_FileMetadata]

The files added as part of the committed file changes.


=head2 FilesDeleted => ArrayRef[CodeCommit_FileMetadata]

The files deleted as part of the committed file changes.


=head2 FilesUpdated => ArrayRef[CodeCommit_FileMetadata]

The files updated as part of the commited file changes.


=head2 TreeId => Str

The full SHA-1 pointer of the tree information for the commit that
contains the commited file changes.


=head2 _request_id => Str


=cut

1;