
package Aws::DirectConnect::CreatePublicVirtualInterface {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPublicVirtualInterface => (is => 'ro', isa => 'Aws::DirectConnect::NewPublicVirtualInterface', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePublicVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::CreatePublicVirtualInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;