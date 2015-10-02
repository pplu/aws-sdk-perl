package Paws::ES::EBSOptionsStatus;
  use Moose;
  has Options => (is => 'ro', isa => 'Paws::ES::EBSOptions', required => 1);
  has Status => (is => 'ro', isa => 'Paws::ES::OptionStatus', required => 1);
1;
