
package Aws::CognitoIdentity::ListIdentityPoolsResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has IdentityPools => (is => 'ro', isa => 'ArrayRef[Aws::CognitoIdentity::IdentityPoolShortDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;