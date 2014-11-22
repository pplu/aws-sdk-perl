package Paws::RDS::DescribeDBLogFilesDetails {
  use Moose;
  has LastWritten => (is => 'ro', isa => 'Num');
  has LogFileName => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Num');
}
1;
