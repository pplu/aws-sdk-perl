
package Paws::EC2::DescribeAccountAttributes {
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'attributeName' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeAccountAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;