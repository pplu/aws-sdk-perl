
package Paws::EC2::DescribeInstanceAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attribute' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::InstanceAttribute');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;