
package Paws::QLDB::UpdateLedgerPermissionsModeResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PermissionsMode => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::UpdateLedgerPermissionsModeResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) for the ledger.


=head2 Name => Str

The name of the ledger.


=head2 PermissionsMode => Str

The current permissions mode of the ledger.

Valid values are: C<"ALLOW_ALL">, C<"STANDARD">
=head2 _request_id => Str


=cut

