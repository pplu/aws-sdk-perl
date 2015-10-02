package Paws::ES::AccessPoliciesStatus;
  use Moose;
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Paws::ES::OptionStatus', required => 1);
1;
