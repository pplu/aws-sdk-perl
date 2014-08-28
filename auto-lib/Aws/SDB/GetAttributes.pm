
package Aws::SDB::GetAttributes {
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AttributeName' );
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ItemName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SDB::GetAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetAttributesResult');
}
1;
