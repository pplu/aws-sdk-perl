
package Paws::Glacier::InitiateVaultLockOutput;
  use Moose;
  has LockId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::InitiateVaultLockOutput

=head1 ATTRIBUTES

=head2 LockId => Str

  The lock ID, which is used to complete the vault locking process.


=cut

