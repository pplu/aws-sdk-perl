package Paws::IAM::PolicyVersion {
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Str');
  has Document => (is => 'ro', isa => 'Str');
  has IsDefaultVersion => (is => 'ro', isa => 'Bool');
  has VersionId => (is => 'ro', isa => 'Str');
}
1;
