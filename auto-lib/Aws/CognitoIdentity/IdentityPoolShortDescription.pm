package Aws::CognitoIdentity::IdentityPoolShortDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has IdentityPoolName => (is => 'ro', isa => 'Str');
}
1
