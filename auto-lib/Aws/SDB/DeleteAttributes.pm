
package Aws::SDB::DeleteAttributes {
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::Attribute]', traits => ['NameInRequest'], request_name => 'Attribute' );
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Expected => (is => 'ro', isa => 'Aws::SDB::UpdateCondition');
  has ItemName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
  