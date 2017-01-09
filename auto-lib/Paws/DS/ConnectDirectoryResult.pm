
package Paws::DS::ConnectDirectoryResult;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::ConnectDirectoryResult

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The identifier of the new directory.


=head2 _request_id => Str


=cut

1;