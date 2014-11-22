
package Paws::IAM::UpdateOpenIDConnectProviderThumbprint {
  use Moose;
  has OpenIDConnectProviderArn => (is => 'ro', isa => 'Str', required => 1);
  has ThumbprintList => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOpenIDConnectProviderThumbprint');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;