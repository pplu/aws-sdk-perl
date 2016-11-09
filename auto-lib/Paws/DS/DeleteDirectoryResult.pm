
package Paws::DS::DeleteDirectoryResult;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DeleteDirectoryResult

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The directory identifier.


=head2 _request_id => Str


=cut

1;