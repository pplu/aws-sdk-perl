
package Paws::AppStream::CreateDirectoryConfigResult;
  use Moose;
  has DirectoryConfig => (is => 'ro', isa => 'Paws::AppStream::DirectoryConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateDirectoryConfigResult

=head1 ATTRIBUTES


=head2 DirectoryConfig => L<Paws::AppStream::DirectoryConfig>

Information about the directory configuration.


=head2 _request_id => Str


=cut

1;