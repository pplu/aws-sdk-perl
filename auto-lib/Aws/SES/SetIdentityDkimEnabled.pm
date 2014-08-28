
package Aws::SES::SetIdentityDkimEnabled {
  use Moose;
  has DkimEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityDkimEnabled');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::SetIdentityDkimEnabledResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityDkimEnabledResult');
}
1;
  