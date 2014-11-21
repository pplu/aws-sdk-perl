
package Aws::STS::GetSessionToken {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has SerialNumber => (is => 'ro', isa => 'Str');
  has TokenCode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSessionToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::STS::GetSessionTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSessionTokenResult');
}
1;