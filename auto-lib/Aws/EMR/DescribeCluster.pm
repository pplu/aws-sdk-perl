
package Aws::EMR::DescribeCluster {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::DescribeClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;