
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::DirectConnect::ConnectionState', ['ordering','requested','pending','available','down','deleting','deleted','rejected',];
enum 'Aws::DirectConnect::InterconnectState', ['requested','pending','available','down','deleting','deleted',];
enum 'Aws::DirectConnect::VirtualInterfaceState', ['confirming','verifying','pending','available','deleting','deleted','rejected',];


class Aws::DirectConnect::Connection with (AWS::API::ResultParser, AWS::API::ToParams) {
  has bandwidth => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has connectionName => (is => 'ro', isa => 'Str');
  has connectionState => (is => 'ro', isa => 'Aws::DirectConnect::ConnectionState');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has partnerName => (is => 'ro', isa => 'Str');
  has region => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');
}

class Aws::DirectConnect::Interconnect with (AWS::API::ResultParser, AWS::API::ToParams) {
  has bandwidth => (is => 'ro', isa => 'Str');
  has interconnectId => (is => 'ro', isa => 'Str');
  has interconnectName => (is => 'ro', isa => 'Str');
  has interconnectState => (is => 'ro', isa => 'Aws::DirectConnect::InterconnectState');
  has location => (is => 'ro', isa => 'Str');
  has region => (is => 'ro', isa => 'Str');
}

class Aws::DirectConnect::Location with (AWS::API::ResultParser, AWS::API::ToParams) {
  has locationCode => (is => 'ro', isa => 'Str');
  has locationName => (is => 'ro', isa => 'Str');
}

class Aws::DirectConnect::NewPrivateVirtualInterface with (AWS::API::ResultParser, AWS::API::ToParams) {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has virtualGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
}

class Aws::DirectConnect::NewPrivateVirtualInterfaceAllocation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
}

class Aws::DirectConnect::NewPublicVirtualInterface with (AWS::API::ResultParser, AWS::API::ToParams) {
  has amazonAddress => (is => 'ro', isa => 'Str', required => 1);
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str', required => 1);
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::RouteFilterPrefix]', required => 1);
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
}

class Aws::DirectConnect::NewPublicVirtualInterfaceAllocation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has amazonAddress => (is => 'ro', isa => 'Str', required => 1);
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str', required => 1);
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::RouteFilterPrefix]', required => 1);
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
}

class Aws::DirectConnect::RouteFilterPrefix with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cidr => (is => 'ro', isa => 'Str');
}

class Aws::DirectConnect::VirtualGateway with (AWS::API::ResultParser, AWS::API::ToParams) {
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualGatewayState => (is => 'ro', isa => 'Str');
}

class Aws::DirectConnect::VirtualInterface with (AWS::API::ResultParser, AWS::API::ToParams) {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int');
  has authKey => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has customerRouterConfig => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::RouteFilterPrefix]');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str');
  has virtualInterfaceState => (is => 'ro', isa => 'Aws::DirectConnect::VirtualInterfaceState');
  has virtualInterfaceType => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');
}



class Aws::DirectConnect::AllocateConnectionOnInterconnect {
  has bandwidth => (is => 'ro', isa => 'Str', required => 1);
  has connectionName => (is => 'ro', isa => 'Str', required => 1);
  has interconnectId => (is => 'ro', isa => 'Str', required => 1);
  has ownerAccount => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateConnectionOnInterconnect');
  has _returns => (isa => 'Aws::DirectConnect::AllocateConnectionOnInterconnectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AllocateConnectionOnInterconnectResult');  
}
class Aws::DirectConnect::AllocatePrivateVirtualInterface {
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPrivateVirtualInterfaceAllocation => (is => 'ro', isa => 'Aws::DirectConnect::NewPrivateVirtualInterfaceAllocation', required => 1);
  has ownerAccount => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AllocatePrivateVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::AllocatePrivateVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AllocatePrivateVirtualInterfaceResult');  
}
class Aws::DirectConnect::AllocatePublicVirtualInterface {
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPublicVirtualInterfaceAllocation => (is => 'ro', isa => 'Aws::DirectConnect::NewPublicVirtualInterfaceAllocation', required => 1);
  has ownerAccount => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AllocatePublicVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::AllocatePublicVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AllocatePublicVirtualInterfaceResult');  
}
class Aws::DirectConnect::ConfirmConnection {
  has connectionId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmConnection');
  has _returns => (isa => 'Aws::DirectConnect::ConfirmConnectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmConnectionResult');  
}
class Aws::DirectConnect::ConfirmPrivateVirtualInterface {
  has virtualGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has virtualInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmPrivateVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::ConfirmPrivateVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmPrivateVirtualInterfaceResult');  
}
class Aws::DirectConnect::ConfirmPublicVirtualInterface {
  has virtualInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmPublicVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::ConfirmPublicVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmPublicVirtualInterfaceResult');  
}
class Aws::DirectConnect::CreateConnection {
  has bandwidth => (is => 'ro', isa => 'Str', required => 1);
  has connectionName => (is => 'ro', isa => 'Str', required => 1);
  has location => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnection');
  has _returns => (isa => 'Aws::DirectConnect::CreateConnectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateConnectionResult');  
}
class Aws::DirectConnect::CreateInterconnect {
  has bandwidth => (is => 'ro', isa => 'Str', required => 1);
  has interconnectName => (is => 'ro', isa => 'Str', required => 1);
  has location => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInterconnect');
  has _returns => (isa => 'Aws::DirectConnect::CreateInterconnectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInterconnectResult');  
}
class Aws::DirectConnect::CreatePrivateVirtualInterface {
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPrivateVirtualInterface => (is => 'ro', isa => 'Aws::DirectConnect::NewPrivateVirtualInterface', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePrivateVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::CreatePrivateVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePrivateVirtualInterfaceResult');  
}
class Aws::DirectConnect::CreatePublicVirtualInterface {
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPublicVirtualInterface => (is => 'ro', isa => 'Aws::DirectConnect::NewPublicVirtualInterface', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePublicVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::CreatePublicVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePublicVirtualInterfaceResult');  
}
class Aws::DirectConnect::DeleteConnection {
  has connectionId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnection');
  has _returns => (isa => 'Aws::DirectConnect::DeleteConnectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteConnectionResult');  
}
class Aws::DirectConnect::DeleteInterconnect {
  has interconnectId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInterconnect');
  has _returns => (isa => 'Aws::DirectConnect::DeleteInterconnectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteInterconnectResult');  
}
class Aws::DirectConnect::DeleteVirtualInterface {
  has virtualInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::DeleteVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVirtualInterfaceResult');  
}
class Aws::DirectConnect::DescribeConnections {
  has connectionId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnections');
  has _returns => (isa => 'Aws::DirectConnect::DescribeConnectionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConnectionsResult');  
}
class Aws::DirectConnect::DescribeConnectionsOnInterconnect {
  has interconnectId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnectionsOnInterconnect');
  has _returns => (isa => 'Aws::DirectConnect::DescribeConnectionsOnInterconnectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConnectionsOnInterconnectResult');  
}
class Aws::DirectConnect::DescribeInterconnects {
  has interconnectId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInterconnects');
  has _returns => (isa => 'Aws::DirectConnect::DescribeInterconnectsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInterconnectsResult');  
}
class Aws::DirectConnect::DescribeLocations {

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocations');
  has _returns => (isa => 'Aws::DirectConnect::DescribeLocationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLocationsResult');  
}
class Aws::DirectConnect::DescribeVirtualGateways {

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualGateways');
  has _returns => (isa => 'Aws::DirectConnect::DescribeVirtualGatewaysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVirtualGatewaysResult');  
}
class Aws::DirectConnect::DescribeVirtualInterfaces {
  has connectionId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualInterfaces');
  has _returns => (isa => 'Aws::DirectConnect::DescribeVirtualInterfacesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVirtualInterfacesResult');  
}

class Aws::DirectConnect::AllocateConnectionOnInterconnectResult with AWS::API::ResultParser {
  has bandwidth => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has connectionName => (is => 'ro', isa => 'Str');
  has connectionState => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has partnerName => (is => 'ro', isa => 'Str');
  has region => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');

}
class Aws::DirectConnect::AllocatePrivateVirtualInterfaceResult with AWS::API::ResultParser {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int');
  has authKey => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has customerRouterConfig => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::RouteFilterPrefix]');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str');
  has virtualInterfaceState => (is => 'ro', isa => 'Str');
  has virtualInterfaceType => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');

}
class Aws::DirectConnect::AllocatePublicVirtualInterfaceResult with AWS::API::ResultParser {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int');
  has authKey => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has customerRouterConfig => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::RouteFilterPrefix]');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str');
  has virtualInterfaceState => (is => 'ro', isa => 'Str');
  has virtualInterfaceType => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');

}
class Aws::DirectConnect::ConfirmConnectionResult with AWS::API::ResultParser {
  has connectionState => (is => 'ro', isa => 'Str');

}
class Aws::DirectConnect::ConfirmPrivateVirtualInterfaceResult with AWS::API::ResultParser {
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
class Aws::DirectConnect::ConfirmPublicVirtualInterfaceResult with AWS::API::ResultParser {
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
class Aws::DirectConnect::CreateConnectionResult with AWS::API::ResultParser {
  has bandwidth => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has connectionName => (is => 'ro', isa => 'Str');
  has connectionState => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has partnerName => (is => 'ro', isa => 'Str');
  has region => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');

}
class Aws::DirectConnect::CreateInterconnectResult with AWS::API::ResultParser {
  has bandwidth => (is => 'ro', isa => 'Str');
  has interconnectId => (is => 'ro', isa => 'Str');
  has interconnectName => (is => 'ro', isa => 'Str');
  has interconnectState => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has region => (is => 'ro', isa => 'Str');

}
class Aws::DirectConnect::CreatePrivateVirtualInterfaceResult with AWS::API::ResultParser {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int');
  has authKey => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has customerRouterConfig => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::RouteFilterPrefix]');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str');
  has virtualInterfaceState => (is => 'ro', isa => 'Str');
  has virtualInterfaceType => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');

}
class Aws::DirectConnect::CreatePublicVirtualInterfaceResult with AWS::API::ResultParser {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int');
  has authKey => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has customerRouterConfig => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::RouteFilterPrefix]');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str');
  has virtualInterfaceState => (is => 'ro', isa => 'Str');
  has virtualInterfaceType => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');

}
class Aws::DirectConnect::DeleteConnectionResult with AWS::API::ResultParser {
  has bandwidth => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has connectionName => (is => 'ro', isa => 'Str');
  has connectionState => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has partnerName => (is => 'ro', isa => 'Str');
  has region => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');

}
class Aws::DirectConnect::DeleteInterconnectResult with AWS::API::ResultParser {
  has interconnectState => (is => 'ro', isa => 'Str');

}
class Aws::DirectConnect::DeleteVirtualInterfaceResult with AWS::API::ResultParser {
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
class Aws::DirectConnect::DescribeConnectionsResult with AWS::API::ResultParser {
  has connections => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::Connection]');

}
class Aws::DirectConnect::DescribeConnectionsOnInterconnectResult with AWS::API::ResultParser {
  has connections => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::Connection]');

}
class Aws::DirectConnect::DescribeInterconnectsResult with AWS::API::ResultParser {
  has interconnects => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::Interconnect]');

}
class Aws::DirectConnect::DescribeLocationsResult with AWS::API::ResultParser {
  has locations => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::Location]');

}
class Aws::DirectConnect::DescribeVirtualGatewaysResult with AWS::API::ResultParser {
  has virtualGateways => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::VirtualGateway]');

}
class Aws::DirectConnect::DescribeVirtualInterfacesResult with AWS::API::ResultParser {
  has virtualInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::VirtualInterface]');

}

class Aws::DirectConnect with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::JsonResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'directconnect');
  has version => (is => 'ro', isa => 'Str', default => '2012-10-25');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'OvertureService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");
  
  method AllocateConnectionOnInterconnect (%args) {
    my $call = Aws::DirectConnect::AllocateConnectionOnInterconnect->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::AllocateConnectionOnInterconnectResult->from_result($result);return $o_result;
  }
  method AllocatePrivateVirtualInterface (%args) {
    my $call = Aws::DirectConnect::AllocatePrivateVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::AllocatePrivateVirtualInterfaceResult->from_result($result);return $o_result;
  }
  method AllocatePublicVirtualInterface (%args) {
    my $call = Aws::DirectConnect::AllocatePublicVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::AllocatePublicVirtualInterfaceResult->from_result($result);return $o_result;
  }
  method ConfirmConnection (%args) {
    my $call = Aws::DirectConnect::ConfirmConnection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::ConfirmConnectionResult->from_result($result);return $o_result;
  }
  method ConfirmPrivateVirtualInterface (%args) {
    my $call = Aws::DirectConnect::ConfirmPrivateVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::ConfirmPrivateVirtualInterfaceResult->from_result($result);return $o_result;
  }
  method ConfirmPublicVirtualInterface (%args) {
    my $call = Aws::DirectConnect::ConfirmPublicVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::ConfirmPublicVirtualInterfaceResult->from_result($result);return $o_result;
  }
  method CreateConnection (%args) {
    my $call = Aws::DirectConnect::CreateConnection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::CreateConnectionResult->from_result($result);return $o_result;
  }
  method CreateInterconnect (%args) {
    my $call = Aws::DirectConnect::CreateInterconnect->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::CreateInterconnectResult->from_result($result);return $o_result;
  }
  method CreatePrivateVirtualInterface (%args) {
    my $call = Aws::DirectConnect::CreatePrivateVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::CreatePrivateVirtualInterfaceResult->from_result($result);return $o_result;
  }
  method CreatePublicVirtualInterface (%args) {
    my $call = Aws::DirectConnect::CreatePublicVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::CreatePublicVirtualInterfaceResult->from_result($result);return $o_result;
  }
  method DeleteConnection (%args) {
    my $call = Aws::DirectConnect::DeleteConnection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DeleteConnectionResult->from_result($result);return $o_result;
  }
  method DeleteInterconnect (%args) {
    my $call = Aws::DirectConnect::DeleteInterconnect->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DeleteInterconnectResult->from_result($result);return $o_result;
  }
  method DeleteVirtualInterface (%args) {
    my $call = Aws::DirectConnect::DeleteVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DeleteVirtualInterfaceResult->from_result($result);return $o_result;
  }
  method DescribeConnections (%args) {
    my $call = Aws::DirectConnect::DescribeConnections->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DescribeConnectionsResult->from_result($result);return $o_result;
  }
  method DescribeConnectionsOnInterconnect (%args) {
    my $call = Aws::DirectConnect::DescribeConnectionsOnInterconnect->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DescribeConnectionsOnInterconnectResult->from_result($result);return $o_result;
  }
  method DescribeInterconnects (%args) {
    my $call = Aws::DirectConnect::DescribeInterconnects->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DescribeInterconnectsResult->from_result($result);return $o_result;
  }
  method DescribeLocations (%args) {
    my $call = Aws::DirectConnect::DescribeLocations->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DescribeLocationsResult->from_result($result);return $o_result;
  }
  method DescribeVirtualGateways (%args) {
    my $call = Aws::DirectConnect::DescribeVirtualGateways->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DescribeVirtualGatewaysResult->from_result($result);return $o_result;
  }
  method DescribeVirtualInterfaces (%args) {
    my $call = Aws::DirectConnect::DescribeVirtualInterfaces->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DescribeVirtualInterfacesResult->from_result($result);return $o_result;
  }
}
