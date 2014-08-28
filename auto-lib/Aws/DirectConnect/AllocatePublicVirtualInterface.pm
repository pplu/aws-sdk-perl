
package Aws::DirectConnect::AllocatePublicVirtualInterface {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPublicVirtualInterfaceAllocation => (is => 'ro', isa => 'Aws::DirectConnect::NewPublicVirtualInterfaceAllocation', required => 1);
  has ownerAccount => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocatePublicVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::AllocatePublicVirtualInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;