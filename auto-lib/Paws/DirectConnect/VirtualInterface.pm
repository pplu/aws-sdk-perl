
package Paws::DirectConnect::VirtualInterface {
  use Moose;
  with 'Paws::API::ResultParser';
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int');
  has authKey => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has customerRouterConfig => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::RouteFilterPrefix]');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str');
  has virtualInterfaceState => (is => 'ro', isa => 'Str');
  has virtualInterfaceType => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');

}
1;