package Aws::RDS::OptionGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has AllowsVpcAndNonVpcInstanceMemberships => (is => 'ro', isa => 'Bool');
  has EngineName => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has OptionGroupDescription => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Option]');
  has VpcId => (is => 'ro', isa => 'Str');
}
1
