
package Aws::RDS::ResetDBParameterGroup {
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]');
  has ResetAllParameters => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetDBParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::DBParameterGroupNameMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ResetDBParameterGroupResult');
}
1;