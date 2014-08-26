package Aws::RDS::OptionGroupMembership {
  use Moose;
  with ('AWS::API::ResultParser');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1
