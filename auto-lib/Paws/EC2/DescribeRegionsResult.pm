
package Paws::EC2::DescribeRegionsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Regions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Region]', traits => ['Unwrapped'], xmlname => 'regionInfo');

}
1;