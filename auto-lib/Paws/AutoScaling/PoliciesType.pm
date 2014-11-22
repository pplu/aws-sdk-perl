
package Paws::AutoScaling::PoliciesType {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPolicies => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::ScalingPolicy]');

}
1;