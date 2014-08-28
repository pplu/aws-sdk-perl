
package Aws::SES::GetIdentityVerificationAttributes {
  use Moose;
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityVerificationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::GetIdentityVerificationAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityVerificationAttributesResult');
}
1;
