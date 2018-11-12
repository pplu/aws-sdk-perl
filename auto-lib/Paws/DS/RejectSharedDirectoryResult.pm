
package Paws::DS::RejectSharedDirectoryResult;
  use Moose;
  has SharedDirectoryId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::RejectSharedDirectoryResult

=head1 ATTRIBUTES


=head2 SharedDirectoryId => Str

Identifier of the shared directory in the directory consumer account.


=head2 _request_id => Str


=cut

1;