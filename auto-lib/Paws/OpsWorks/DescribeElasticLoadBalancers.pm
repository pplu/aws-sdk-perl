
package Paws::OpsWorks::DescribeElasticLoadBalancers {
  use Moose;
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticLoadBalancers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeElasticLoadBalancersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;