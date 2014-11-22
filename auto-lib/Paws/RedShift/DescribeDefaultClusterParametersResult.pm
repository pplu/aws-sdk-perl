
package Paws::RedShift::DescribeDefaultClusterParametersResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DefaultClusterParameters => (is => 'ro', isa => 'Paws::RedShift::DefaultClusterParameters');

}
1;