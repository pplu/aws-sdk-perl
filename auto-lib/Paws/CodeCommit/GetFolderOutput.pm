
package Paws::CodeCommit::GetFolderOutput;
  use Moose;
  has CommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitId' , required => 1);
  has Files => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::File]', traits => ['NameInRequest'], request_name => 'files' );
  has FolderPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'folderPath' , required => 1);
  has SubFolders => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::Folder]', traits => ['NameInRequest'], request_name => 'subFolders' );
  has SubModules => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::SubModule]', traits => ['NameInRequest'], request_name => 'subModules' );
  has SymbolicLinks => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::SymbolicLink]', traits => ['NameInRequest'], request_name => 'symbolicLinks' );
  has TreeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'treeId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetFolderOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommitId => Str

The full commit ID used as a reference for which version of the folder
content is returned.


=head2 Files => ArrayRef[L<Paws::CodeCommit::File>]

The list of files that exist in the specified folder, if any.


=head2 B<REQUIRED> FolderPath => Str

The fully-qualified path of the folder whose contents are returned.


=head2 SubFolders => ArrayRef[L<Paws::CodeCommit::Folder>]

The list of folders that exist beneath the specified folder, if any.


=head2 SubModules => ArrayRef[L<Paws::CodeCommit::SubModule>]

The list of submodules that exist in the specified folder, if any.


=head2 SymbolicLinks => ArrayRef[L<Paws::CodeCommit::SymbolicLink>]

The list of symbolic links to other files and folders that exist in the
specified folder, if any.


=head2 TreeId => Str

The full SHA-1 pointer of the tree information for the commit that
contains the folder.


=head2 _request_id => Str


=cut

1;