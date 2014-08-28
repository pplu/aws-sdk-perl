
package Aws::DirectConnect::ConfirmPrivateVirtualInterface {
  use Moose;
  has virtualGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has virtualInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmPrivateVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::ConfirmPrivateVirtualInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;