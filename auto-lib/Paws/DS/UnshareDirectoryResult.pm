
package Paws::DS::UnshareDirectoryResult;
  use Moose;
  has SharedDirectoryId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::UnshareDirectoryResult

=head1 ATTRIBUTES


=head2 SharedDirectoryId => Str

Identifier of the directory stored in the directory consumer account
that is to be unshared from the specified directory (C<DirectoryId>).


=head2 _request_id => Str


=cut

1;