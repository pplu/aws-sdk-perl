
package Paws::EMR::ListInstances {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceGroupId => (is => 'ro', isa => 'Str');
  has InstanceGroupTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::ListInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;