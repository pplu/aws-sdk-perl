
package Aws::CloudTrail::DescribeTrailsResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has trailList => (is => 'ro', isa => 'ArrayRef[Aws::CloudTrail::Trail]');

}
1;