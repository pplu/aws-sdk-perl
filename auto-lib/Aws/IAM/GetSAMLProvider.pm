
package Aws::IAM::GetSAMLProvider {
  use Moose;
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSAMLProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetSAMLProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSAMLProviderResult');
}
1;