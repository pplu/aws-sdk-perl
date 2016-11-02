
package Paws::CognitoIdentity::DeleteIdentitiesResponse;
  use Moose;
  has UnprocessedIdentityIds => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdentity::UnprocessedIdentityId]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::DeleteIdentitiesResponse

=head1 ATTRIBUTES


=head2 UnprocessedIdentityIds => ArrayRef[L<Paws::CognitoIdentity::UnprocessedIdentityId>]

An array of UnprocessedIdentityId objects, each of which contains an
ErrorCode and IdentityId.


=head2 _request_id => Str


=cut

1;