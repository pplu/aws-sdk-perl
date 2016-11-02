
package Paws::CognitoIdentity::ListIdentityPoolsResponse;
  use Moose;
  has IdentityPools => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdentity::IdentityPoolShortDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::ListIdentityPoolsResponse

=head1 ATTRIBUTES


=head2 IdentityPools => ArrayRef[L<Paws::CognitoIdentity::IdentityPoolShortDescription>]

The identity pools returned by the ListIdentityPools action.


=head2 NextToken => Str

A pagination token.


=head2 _request_id => Str


=cut

1;