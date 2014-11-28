package Paws::CognitoSync::IdentityPoolUsage {
  use Moose;
  has DataStorage => (is => 'ro', isa => 'Num');
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has SyncSessionsCount => (is => 'ro', isa => 'Num');
}
1;
