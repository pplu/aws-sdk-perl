
package Paws::FSX::DeleteFileSystemResponse;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str');
  has Lifecycle => (is => 'ro', isa => 'Str');
  has WindowsResponse => (is => 'ro', isa => 'Paws::FSX::DeleteFileSystemWindowsResponse');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteFileSystemResponse

=head1 ATTRIBUTES


=head2 FileSystemId => Str

The ID of the file system being deleted.


=head2 Lifecycle => Str

The file system lifecycle for the deletion request. Should be
C<DELETING>.

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"FAILED">, C<"DELETING">
=head2 WindowsResponse => L<Paws::FSX::DeleteFileSystemWindowsResponse>




=head2 _request_id => Str


=cut

1;