
package Aws::RedShift::DescribeClusterSecurityGroups {
  use Moose;
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterSecurityGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::DescribeClusterSecurityGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterSecurityGroupsResult');
}
1;
