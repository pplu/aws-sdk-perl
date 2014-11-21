
package Aws::EC2::DescribeVpcAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeVpcAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;