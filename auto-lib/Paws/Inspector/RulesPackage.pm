package Paws::Inspector::RulesPackage;
  use Moose;
  has description => (is => 'ro', isa => 'Paws::Inspector::LocalizedText');
  has provider => (is => 'ro', isa => 'Str');
  has rulesPackageArn => (is => 'ro', isa => 'Str');
  has rulesPackageName => (is => 'ro', isa => 'Str');
  has version => (is => 'ro', isa => 'Str');
1;
