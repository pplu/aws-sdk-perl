
package Aws::IAM::UpdateSAMLProvider {
  use Moose;
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str', required => 1);
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSAMLProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::UpdateSAMLProviderResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSAMLProviderResult');
}
1;
