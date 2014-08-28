
package Aws::EMR::DescribeClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::EMR::Cluster');

}
1;
