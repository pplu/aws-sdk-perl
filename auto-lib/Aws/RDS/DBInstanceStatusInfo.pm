package Aws::RDS::DBInstanceStatusInfo {
  use Moose;
  with ('AWS::API::ResultParser');
  has Message => (is => 'ro', isa => 'Str');
  has Normal => (is => 'ro', isa => 'Bool');
  has Status => (is => 'ro', isa => 'Str');
  has StatusType => (is => 'ro', isa => 'Str');
}
1
