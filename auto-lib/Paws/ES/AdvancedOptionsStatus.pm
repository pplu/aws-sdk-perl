package Paws::ES::AdvancedOptionsStatus;
  use Moose;
  has Options => (is => 'ro', isa => 'Paws::ES::AdvancedOptions', required => 1);
  has Status => (is => 'ro', isa => 'Paws::ES::OptionStatus', required => 1);
1;
