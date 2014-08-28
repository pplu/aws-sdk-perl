
package Aws::AutoScaling::PutScalingPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyARN => (is => 'ro', isa => 'Str');

}
1;