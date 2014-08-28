
package Aws::RDS::CreateDBSubnetGroup {
  use Moose;
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetIdentifier' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::CreateDBSubnetGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBSubnetGroupResult');
}
1;
