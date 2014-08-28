
package Aws::RDS::CreateDBSecurityGroup {
  use Moose;
  has DBSecurityGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBSecurityGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::CreateDBSecurityGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBSecurityGroupResult');
}
1;
