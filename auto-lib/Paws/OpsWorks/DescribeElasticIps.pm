
package Paws::OpsWorks::DescribeElasticIps {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has Ips => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticIps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeElasticIpsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;