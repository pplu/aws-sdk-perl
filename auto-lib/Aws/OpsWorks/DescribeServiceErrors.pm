
package Aws::OpsWorks::DescribeServiceErrors {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has ServiceErrorIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceErrors');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeServiceErrorsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;