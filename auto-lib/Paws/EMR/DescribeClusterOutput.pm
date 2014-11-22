
package Paws::EMR::DescribeClusterOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Paws::EMR::Cluster');

}
1;