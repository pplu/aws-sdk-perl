
package Paws::IAM::CreateOpenIDConnectProvider {
  use Moose;
  has ClientIDList => (is => 'ro', isa => 'ArrayRef[Str]');
  has ThumbprintList => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Url => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOpenIDConnectProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::CreateOpenIDConnectProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateOpenIDConnectProviderResult');
}
1;