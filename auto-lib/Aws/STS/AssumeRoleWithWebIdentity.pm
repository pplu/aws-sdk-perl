
package Aws::STS::AssumeRoleWithWebIdentity {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Policy => (is => 'ro', isa => 'Str');
  has ProviderId => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleSessionName => (is => 'ro', isa => 'Str', required => 1);
  has WebIdentityToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithWebIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::STS::AssumeRoleWithWebIdentityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithWebIdentityResult');
}
1;