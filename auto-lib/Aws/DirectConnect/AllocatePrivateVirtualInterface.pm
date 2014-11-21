
package Aws::DirectConnect::AllocatePrivateVirtualInterface {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPrivateVirtualInterfaceAllocation => (is => 'ro', isa => 'Aws::DirectConnect::NewPrivateVirtualInterfaceAllocation', required => 1);
  has ownerAccount => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocatePrivateVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::VirtualInterface');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;