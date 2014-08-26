package Aws::RDS::IPRange {
  use Moose;
  with ('AWS::API::ResultParser');
  has CIDRIP => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1
