
package Paws::OpsWorks::SetLoadBasedAutoScaling {
  use Moose;
  has DownScaling => (is => 'ro', isa => 'Paws::OpsWorks::AutoScalingThresholds');
  has Enable => (is => 'ro', isa => 'Bool');
  has LayerId => (is => 'ro', isa => 'Str', required => 1);
  has UpScaling => (is => 'ro', isa => 'Paws::OpsWorks::AutoScalingThresholds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBasedAutoScaling');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;