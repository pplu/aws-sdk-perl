
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

You can use the C<GrantId> in a ListGrants, RetireGrant, or RevokeGrant
operation.


=head2 GrantToken => Str

The grant token.

Use a grant token when your permission to call this operation comes
from a new grant that has not yet achieved I<eventual consistency>. For
more information, see Grant token
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token)
in the I<AWS Key Management Service Developer Guide>.


=head2 _request_id => Str


=cut

1;