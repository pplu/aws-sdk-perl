
package Paws::CloudTrail::DescribeTrailsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has trailList => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Trail]');

}
1;