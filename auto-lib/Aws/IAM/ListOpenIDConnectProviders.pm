
package Aws::IAM::ListOpenIDConnectProviders {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOpenIDConnectProviders');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListOpenIDConnectProvidersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListOpenIDConnectProvidersResult');
}
1;