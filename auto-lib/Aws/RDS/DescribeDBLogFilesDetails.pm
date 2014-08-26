package Aws::RDS::DescribeDBLogFilesDetails {
  use Moose;
  with ('AWS::API::ResultParser');
  has LastWritten => (is => 'ro', isa => 'Num');
  has LogFileName => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Num');
}
1
