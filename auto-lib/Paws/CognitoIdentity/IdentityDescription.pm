package Paws::CognitoIdentity::IdentityDescription {
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str');
  has Logins => (is => 'ro', isa => 'ArrayRef[Str]');
}
1;
