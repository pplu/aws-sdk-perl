
package Paws::STS::DecodeAuthorizationMessage {
  use Moose;
  has EncodedMessage => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DecodeAuthorizationMessage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::STS::DecodeAuthorizationMessageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DecodeAuthorizationMessageResult');
}
1;