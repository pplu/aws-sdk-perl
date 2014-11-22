
package Paws::CloudSearch::DescribeAvailabilityOptionsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has AvailabilityOptions => (is => 'ro', isa => 'Paws::CloudSearch::AvailabilityOptionsStatus');

}
1;