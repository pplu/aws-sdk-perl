
package Aws::CognitoIdentity::MergeDeveloperIdentities {
  use Moose;
  has DestinationUserIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DeveloperProviderName => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has SourceUserIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'MergeDeveloperIdentities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CognitoIdentity::MergeDeveloperIdentitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;