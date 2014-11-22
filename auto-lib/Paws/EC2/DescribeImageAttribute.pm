
package Paws::EC2::DescribeImageAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImageAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ImageAttribute');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;