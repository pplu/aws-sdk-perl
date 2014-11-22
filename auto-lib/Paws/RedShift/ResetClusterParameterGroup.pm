
package Paws::RedShift::ResetClusterParameterGroup {
  use Moose;
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Parameter]');
  has ResetAllParameters => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetClusterParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ClusterParameterGroupNameMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ResetClusterParameterGroupResult');
}
1;