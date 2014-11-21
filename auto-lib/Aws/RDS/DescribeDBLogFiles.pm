
package Aws::RDS::DescribeDBLogFiles {
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FileLastWritten => (is => 'ro', isa => 'Num');
  has FilenameContains => (is => 'ro', isa => 'Str');
  has FileSize => (is => 'ro', isa => 'Num');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBLogFiles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::DescribeDBLogFilesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBLogFilesResult');
}
1;