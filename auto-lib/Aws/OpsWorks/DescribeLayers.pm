
package Aws::OpsWorks::DescribeLayers {
  use Moose;
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLayers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeLayersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;