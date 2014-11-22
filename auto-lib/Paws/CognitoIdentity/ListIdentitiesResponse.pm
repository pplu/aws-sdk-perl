
package Paws::CognitoIdentity::ListIdentitiesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Identities => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdentity::IdentityDescription]');
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;