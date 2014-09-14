
package Aws::OpsWorks::DescribeApps {
  use Moose;
  has AppIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeAppsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;