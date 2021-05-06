
package Paws::Glacier::GetVaultLockOutput;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str');
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::GetVaultLockOutput

=head1 ATTRIBUTES


=head2 CreationDate => Str

The UTC date and time at which the vault lock was put into the
C<InProgress> state.


=head2 ExpirationDate => Str

The UTC date and time at which the lock ID expires. This value can be
C<null> if the vault lock is in a C<Locked> state.


=head2 Policy => Str

The vault lock policy as a JSON string, which uses "\" as an escape
character.


=head2 State => Str

The state of the vault lock. C<InProgress> or C<Locked>.


=head2 _request_id => Str


=cut

