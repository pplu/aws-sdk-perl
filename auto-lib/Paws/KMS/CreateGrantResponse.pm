
package Paws::KMS::CreateGrantResponse;
  use Moose;
  has GrantId => (is => 'ro', isa => 'Str');
  has GrantToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

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

For more information, see Grant Tokens
(http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token)
in the I<AWS Key Management Service Developer Guide>.


=head2 _request_id => Str


=cut

1;