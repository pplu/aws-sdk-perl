
package Aws::RDS::CreateDBParameterGroup {
  use Moose;
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::CreateDBParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBParameterGroupResult');
}
1;
