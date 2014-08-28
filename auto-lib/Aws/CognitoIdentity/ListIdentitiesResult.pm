
package Aws::CognitoIdentity::ListIdentitiesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Identities => (is => 'ro', isa => 'ArrayRef[Aws::CognitoIdentity::IdentityDescription]');
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;
