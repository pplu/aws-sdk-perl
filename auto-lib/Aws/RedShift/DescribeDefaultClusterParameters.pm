
package Aws::RedShift::DescribeDefaultClusterParameters {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDefaultClusterParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::DescribeDefaultClusterParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDefaultClusterParametersResult');
}
1;