
package Aws::EC2::DescribeRegionsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Regions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Region]', traits => ['Unwrapped'], xmlname => 'regionInfo');

}
1;