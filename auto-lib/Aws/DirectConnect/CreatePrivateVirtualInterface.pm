
package Aws::DirectConnect::CreatePrivateVirtualInterface {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPrivateVirtualInterface => (is => 'ro', isa => 'Aws::DirectConnect::NewPrivateVirtualInterface', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePrivateVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::CreatePrivateVirtualInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;