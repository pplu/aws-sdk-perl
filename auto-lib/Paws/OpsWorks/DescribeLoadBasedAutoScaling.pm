
package Paws::OpsWorks::DescribeLoadBasedAutoScaling {
  use Moose;
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBasedAutoScaling');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeLoadBasedAutoScalingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;