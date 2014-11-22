
package Paws::SES::DeleteIdentity {
  use Moose;
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::DeleteIdentityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIdentityResult');
}
1;