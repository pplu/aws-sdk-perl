
package Paws::AppStream::UpdateDirectoryConfigResult;
  use Moose;
  has DirectoryConfig => (is => 'ro', isa => 'Paws::AppStream::DirectoryConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UpdateDirectoryConfigResult

=head1 ATTRIBUTES


=head2 DirectoryConfig => L<Paws::AppStream::DirectoryConfig>

Information about the Directory Config object.


=head2 _request_id => Str


=cut

1;