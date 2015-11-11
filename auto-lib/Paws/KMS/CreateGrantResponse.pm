
package Paws::KMS::CreateGrantResponse;
  use Moose;
  has GrantId => (is => 'ro', isa => 'Str');
  has GrantToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateGrantResponse

=head1 ATTRIBUTES


=head2 GrantId => Str

  The unique identifier for the grant.

You can use the C<GrantId> in a subsequent RetireGrant or RevokeGrant
operation.

=head2 GrantToken => Str

  The grant token.

For more information about using grant tokens, see Grant Tokens in the
I<AWS Key Management Service Developer Guide>.


=cut

1;