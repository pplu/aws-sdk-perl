
package Aws::SES::GetIdentityDkimAttributes {
  use Moose;
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityDkimAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::GetIdentityDkimAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityDkimAttributesResult');
}
1;
