
package Paws::STS::AssumeRoleWithSAML {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Policy => (is => 'ro', isa => 'Str');
  has PrincipalArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SAMLAssertion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithSAML');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::STS::AssumeRoleWithSAMLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithSAMLResult');
}
1;