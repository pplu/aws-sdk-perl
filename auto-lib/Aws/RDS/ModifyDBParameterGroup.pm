
package Aws::RDS::ModifyDBParameterGroup {
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]', traits => ['NameInRequest'], request_name => 'Parameter' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::ModifyDBParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBParameterGroupResult');
}
1;
  