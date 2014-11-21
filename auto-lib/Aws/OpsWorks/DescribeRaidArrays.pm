
package Aws::OpsWorks::DescribeRaidArrays {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has RaidArrayIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRaidArrays');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeRaidArraysResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;