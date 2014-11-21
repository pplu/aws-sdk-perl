package Aws::RDS::OptionGroupMembership {
  use Moose;
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1;
