
package Aws::AutoScaling::DescribePoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPolicies => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::ScalingPolicy]');

}
1;