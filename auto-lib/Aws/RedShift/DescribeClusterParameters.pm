
package Aws::RedShift::DescribeClusterParameters {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Source => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::ClusterParameterGroupDetails');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterParametersResult');
}
1;