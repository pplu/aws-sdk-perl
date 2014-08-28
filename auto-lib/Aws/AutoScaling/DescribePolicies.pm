
package Aws::AutoScaling::DescribePolicies {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribePoliciesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePoliciesResult');
}
1;
