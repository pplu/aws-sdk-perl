
package Aws::EC2::DescribeImages {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has ExecutableUsers => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ExecutableBy' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has ImageIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ImageId' );
  has Owners => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'Owner' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeImagesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;