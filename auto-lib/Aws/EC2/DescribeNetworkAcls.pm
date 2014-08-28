
package Aws::EC2::DescribeNetworkAcls {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has NetworkAclIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'NetworkAclId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkAcls');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeNetworkAclsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;