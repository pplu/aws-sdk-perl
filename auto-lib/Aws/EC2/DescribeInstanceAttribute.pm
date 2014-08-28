
package Aws::EC2::DescribeInstanceAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeInstanceAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
