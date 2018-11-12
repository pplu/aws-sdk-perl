
package Paws::CodeCommit::GetFileOutput;
  use Moose;
  has BlobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blobId' , required => 1);
  has CommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitId' , required => 1);
  has FileContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileContent' , required => 1);
  has FileMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileMode' , required => 1);
  has FilePath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filePath' , required => 1);
  has FileSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'fileSize' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetFileOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlobId => Str

The blob ID of the object that represents the file content.


=head2 B<REQUIRED> CommitId => Str

The full commit ID of the commit that contains the content returned by
GetFile.


=head2 B<REQUIRED> FileContent => Str

The base-64 encoded binary data object that represents the content of
the file.


=head2 B<REQUIRED> FileMode => Str

The extrapolated file mode permissions of the blob. Valid values
include strings such as EXECUTABLE and not numeric values.

The file mode permissions returned by this API are not the standard
file mode permission values, such as 100644, but rather extrapolated
values. See below for a full list of supported return values.

Valid values are: C<"EXECUTABLE">, C<"NORMAL">, C<"SYMLINK">
=head2 B<REQUIRED> FilePath => Str

The fully qualified path to the specified file. This returns the name
and extension of the file.


=head2 B<REQUIRED> FileSize => Int

The size of the contents of the file, in bytes.


=head2 _request_id => Str


=cut

1;