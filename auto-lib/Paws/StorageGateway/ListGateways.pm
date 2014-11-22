
package Paws::StorageGateway::ListGateways {
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::ListGatewaysOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;