
package Aws::SES::VerifyDomainDkim {
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDomainDkim');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::VerifyDomainDkimResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyDomainDkimResult');
}
1;
  