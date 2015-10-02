package Paws::RDS::UpgradeTarget;
  use Moose;
  has AutoUpgrade => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has IsMajorVersionUpgrade => (is => 'ro', isa => 'Bool');
1;
