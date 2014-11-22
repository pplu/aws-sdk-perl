
package Paws::STS::GetFederationToken {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFederationToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::STS::GetFederationTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetFederationTokenResult');
}
1;