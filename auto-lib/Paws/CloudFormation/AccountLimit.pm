package Paws::CloudFormation::AccountLimit;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Int');
1;
