
package Paws::DirectConnect::AllocateConnectionOnInterconnect {
  use Moose;
  has bandwidth => (is => 'ro', isa => 'Str', required => 1);
  has connectionName => (is => 'ro', isa => 'Str', required => 1);
  has interconnectId => (is => 'ro', isa => 'Str', required => 1);
  has ownerAccount => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateConnectionOnInterconnect');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::Connection');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;