
package Paws::CodeCommit::DeleteFileOutput;
  use Moose;
  has BlobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blobId' , required => 1);
  has CommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitId' , required => 1);
  has FilePath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filePath' , required => 1);
  has TreeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'treeId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DeleteFileOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlobId => Str

The blob ID removed from the tree as part of deleting the file.


=head2 B<REQUIRED> CommitId => Str

The full commit ID of the commit that contains the change that deletes
the file.


=head2 B<REQUIRED> FilePath => Str

The fully-qualified path to the file that will be deleted, including
the full name and extension of that file.


=head2 B<REQUIRED> TreeId => Str

The full SHA-1 pointer of the tree information for the commit that
contains the delete file change.


=head2 _request_id => Str


=cut

1;