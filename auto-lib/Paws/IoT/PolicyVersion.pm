package Paws::IoT::PolicyVersion;
  use Moose;
  has createDate => (is => 'ro', isa => 'Str');
  has isDefaultVersion => (is => 'ro', isa => 'Bool');
  has versionId => (is => 'ro', isa => 'Str');
1;
