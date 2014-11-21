
package Aws::IAM::CreateSAMLProvider {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSAMLProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateSAMLProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSAMLProviderResult');
}
1;