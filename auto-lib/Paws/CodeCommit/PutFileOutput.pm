
package Paws::CodeCommit::PutFileOutput;
  use Moose;
  has BlobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blobId' , required => 1);
  has CommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitId' , required => 1);
  has TreeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'treeId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PutFileOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlobId => Str

The ID of the blob, which is its SHA-1 pointer.


=head2 B<REQUIRED> CommitId => Str

The full SHA of the commit that contains this file change.


=head2 B<REQUIRED> TreeId => Str

The full SHA-1 pointer of the tree information for the commit that
contains this file change.


=head2 _request_id => Str


=cut

1;