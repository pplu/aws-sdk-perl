
package Aws::EC2::DescribeSecurityGroups {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has GroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'GroupId' );
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'GroupName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecurityGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeSecurityGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;