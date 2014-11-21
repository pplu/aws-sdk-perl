
package Aws::CognitoIdentity::UnlinkDeveloperIdentity {
  use Moose;
  has DeveloperProviderName => (is => 'ro', isa => 'Str', required => 1);
  has DeveloperUserIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has IdentityId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnlinkDeveloperIdentity');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;