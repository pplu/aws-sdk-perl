package Aws::CognitoIdentity::IdentityDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has IdentityId => (is => 'ro', isa => 'Str');
  has Logins => (is => 'ro', isa => 'ArrayRef[Str]');
}
1
