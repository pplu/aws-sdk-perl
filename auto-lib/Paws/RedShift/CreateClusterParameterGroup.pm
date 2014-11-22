
package Paws::RedShift::CreateClusterParameterGroup {
  use Moose;
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has ParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::CreateClusterParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterParameterGroupResult');
}
1;