package Paws::EMR::Configuration;
  use Moose;
  has Classification => (is => 'ro', isa => 'Str');
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Configuration]');
  has Properties => (is => 'ro', isa => 'Paws::EMR::StringMap');
1;
