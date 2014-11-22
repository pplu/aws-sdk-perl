
package Paws::DirectConnect::ConfirmConnection {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::ConfirmConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;