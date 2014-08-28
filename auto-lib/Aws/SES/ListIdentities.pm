
package Aws::SES::ListIdentities {
  use Moose;
  has IdentityType => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::ListIdentitiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListIdentitiesResult');
}
1;
  