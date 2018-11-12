
package Paws::DS::AcceptSharedDirectoryResult;
  use Moose;
  has SharedDirectory => (is => 'ro', isa => 'Paws::DS::SharedDirectory');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::AcceptSharedDirectoryResult

=head1 ATTRIBUTES


=head2 SharedDirectory => L<Paws::DS::SharedDirectory>

The shared directory in the directory consumer account.


=head2 _request_id => Str


=cut

1;