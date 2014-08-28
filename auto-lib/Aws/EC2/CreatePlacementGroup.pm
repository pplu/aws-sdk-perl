
package Aws::EC2::CreatePlacementGroup {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Strategy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlacementGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
