
package Aws::Support::DescribeServices {
  use Moose;
  has language => (is => 'ro', isa => 'Str');
  has serviceCodeList => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeServicesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;