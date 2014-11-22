
package Paws::CognitoIdentity::ListIdentityPoolsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IdentityPools => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdentity::IdentityPoolShortDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;