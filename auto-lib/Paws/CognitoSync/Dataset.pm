package Paws::CognitoSync::Dataset {
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str');
  has DataStorage => (is => 'ro', isa => 'Num');
  has DatasetName => (is => 'ro', isa => 'Str');
  has IdentityId => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has NumRecords => (is => 'ro', isa => 'Num');
}
1;
