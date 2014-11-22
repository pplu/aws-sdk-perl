
package Paws::SES::ListVerifiedEmailAddresses {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVerifiedEmailAddresses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::ListVerifiedEmailAddressesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListVerifiedEmailAddressesResult');
}
1;