
package Aws::SES::VerifyDomainIdentity {
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDomainIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::VerifyDomainIdentityResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyDomainIdentityResult');
}
1;
  