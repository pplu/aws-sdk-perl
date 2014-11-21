
package Aws::IAM::GetOpenIDConnectProvider {
  use Moose;
  has OpenIDConnectProviderArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOpenIDConnectProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetOpenIDConnectProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetOpenIDConnectProviderResult');
}
1;