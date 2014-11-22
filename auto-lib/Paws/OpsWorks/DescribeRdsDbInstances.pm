
package Paws::OpsWorks::DescribeRdsDbInstances {
  use Moose;
  has RdsDbInstanceArns => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRdsDbInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeRdsDbInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;