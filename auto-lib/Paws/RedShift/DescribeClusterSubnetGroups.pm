
package Paws::RedShift::DescribeClusterSubnetGroups {
  use Moose;
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterSubnetGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ClusterSubnetGroupMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterSubnetGroupsResult');
}
1;