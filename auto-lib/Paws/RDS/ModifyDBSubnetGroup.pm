
package Paws::RDS::ModifyDBSubnetGroup {
  use Moose;
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyDBSubnetGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBSubnetGroupResult');
}
1;