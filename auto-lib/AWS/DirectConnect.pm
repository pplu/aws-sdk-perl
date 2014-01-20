
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'AWS::DirectConnect::ConnectionState', ['ordering','requested','pending','available','down','deleting','deleted','rejected',];
enum 'AWS::DirectConnect::InterconnectState', ['requested','pending','available','down','deleting','deleted',];
enum 'AWS::DirectConnect::VirtualInterfaceState', ['confirming','verifying','pending','available','deleting','deleted','rejected',];


class AWS::DirectConnect::Connection with (AWS::API::ResultParser, AWS::API::ToParams) {
  has bandwidth => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has connectionName => (is => 'ro', isa => 'Str');
  has connectionState => (is => 'ro', isa => 'AWS::DirectConnect::ConnectionState');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has partnerName => (is => 'ro', isa => 'Str');
  has region => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');
}

class AWS::DirectConnect::Interconnect with (AWS::API::ResultParser, AWS::API::ToParams) {
  has bandwidth => (is => 'ro', isa => 'Str');
  has interconnectId => (is => 'ro', isa => 'Str');
  has interconnectName => (is => 'ro', isa => 'Str');
  has interconnectState => (is => 'ro', isa => 'AWS::DirectConnect::InterconnectState');
  has location => (is => 'ro', isa => 'Str');
  has region => (is => 'ro', isa => 'Str');
}

class AWS::DirectConnect::Location with (AWS::API::ResultParser, AWS::API::ToParams) {
  has locationCode => (is => 'ro', isa => 'Str');
  has locationName => (is => 'ro', isa => 'Str');
}

class AWS::DirectConnect::NewPrivateVirtualInterface with (AWS::API::ResultParser, AWS::API::ToParams) {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has virtualGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
}

class AWS::DirectConnect::NewPrivateVirtualInterfaceAllocation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
}

class AWS::DirectConnect::NewPublicVirtualInterface with (AWS::API::ResultParser, AWS::API::ToParams) {
  has amazonAddress => (is => 'ro', isa => 'Str', required => 1);
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str', required => 1);
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[AWS::DirectConnect::RouteFilterPrefix]', required => 1);
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
}

class AWS::DirectConnect::NewPublicVirtualInterfaceAllocation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has amazonAddress => (is => 'ro', isa => 'Str', required => 1);
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str', required => 1);
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[AWS::DirectConnect::RouteFilterPrefix]', required => 1);
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
}

class AWS::DirectConnect::RouteFilterPrefix with (AWS::API::ResultParser, AWS::API::ToParams) {
  has cidr => (is => 'ro', isa => 'Str');
}

class AWS::DirectConnect::VirtualGateway with (AWS::API::ResultParser, AWS::API::ToParams) {
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualGatewayState => (is => 'ro', isa => 'Str');
}

class AWS::DirectConnect::VirtualInterface with (AWS::API::ResultParser, AWS::API::ToParams) {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int');
  has authKey => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has customerRouterConfig => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[AWS::DirectConnect::RouteFilterPrefix]');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str');
  has virtualInterfaceState => (is => 'ro', isa => 'AWS::DirectConnect::VirtualInterfaceState');
  has virtualInterfaceType => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');
}



class AWS::DirectConnect::AllocateConnectionOnInterconnect {
  has bandwidth => (is => 'ro', isa => 'Str', required => 1);
  has connectionName => (is => 'ro', isa => 'Str', required => 1);
  has interconnectId => (is => 'ro', isa => 'Str', required => 1);
  has ownerAccount => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateConnectionOnInterconnect');
  has _returns => (isa => 'AWS::DirectConnect::AllocateConnectionOnInterconnectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AllocateConnectionOnInterconnectResult');  
}
class AWS::DirectConnect::AllocatePrivateVirtualInterface {
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPrivateVirtualInterfaceAllocation => (is => 'ro', isa => 'AWS::DirectConnect::NewPrivateVirtualInterfaceAllocation', required => 1);
  has ownerAccount => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AllocatePrivateVirtualInterface');
  has _returns => (isa => 'AWS::DirectConnect::AllocatePrivateVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AllocatePrivateVirtualInterfaceResult');  
}
class AWS::DirectConnect::AllocatePublicVirtualInterface {
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPublicVirtualInterfaceAllocation => (is => 'ro', isa => 'AWS::DirectConnect::NewPublicVirtualInterfaceAllocation', required => 1);
  has ownerAccount => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AllocatePublicVirtualInterface');
  has _returns => (isa => 'AWS::DirectConnect::AllocatePublicVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AllocatePublicVirtualInterfaceResult');  
}
class AWS::DirectConnect::ConfirmConnection {
  has connectionId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmConnection');
  has _returns => (isa => 'AWS::DirectConnect::ConfirmConnectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmConnectionResult');  
}
class AWS::DirectConnect::ConfirmPrivateVirtualInterface {
  has virtualGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has virtualInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmPrivateVirtualInterface');
  has _returns => (isa => 'AWS::DirectConnect::ConfirmPrivateVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmPrivateVirtualInterfaceResult');  
}
class AWS::DirectConnect::ConfirmPublicVirtualInterface {
  has virtualInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmPublicVirtualInterface');
  has _returns => (isa => 'AWS::DirectConnect::ConfirmPublicVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmPublicVirtualInterfaceResult');  
}
class AWS::DirectConnect::CreateConnection {
  has bandwidth => (is => 'ro', isa => 'Str', required => 1);
  has connectionName => (is => 'ro', isa => 'Str', required => 1);
  has location => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnection');
  has _returns => (isa => 'AWS::DirectConnect::CreateConnectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateConnectionResult');  
}
class AWS::DirectConnect::CreateInterconnect {
  has bandwidth => (is => 'ro', isa => 'Str', required => 1);
  has interconnectName => (is => 'ro', isa => 'Str', required => 1);
  has location => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInterconnect');
  has _returns => (isa => 'AWS::DirectConnect::CreateInterconnectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInterconnectResult');  
}
class AWS::DirectConnect::CreatePrivateVirtualInterface {
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPrivateVirtualInterface => (is => 'ro', isa => 'AWS::DirectConnect::NewPrivateVirtualInterface', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePrivateVirtualInterface');
  has _returns => (isa => 'AWS::DirectConnect::CreatePrivateVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePrivateVirtualInterfaceResult');  
}
class AWS::DirectConnect::CreatePublicVirtualInterface {
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPublicVirtualInterface => (is => 'ro', isa => 'AWS::DirectConnect::NewPublicVirtualInterface', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePublicVirtualInterface');
  has _returns => (isa => 'AWS::DirectConnect::CreatePublicVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePublicVirtualInterfaceResult');  
}
class AWS::DirectConnect::DeleteConnection {
  has connectionId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnection');
  has _returns => (isa => 'AWS::DirectConnect::DeleteConnectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteConnectionResult');  
}
class AWS::DirectConnect::DeleteInterconnect {
  has interconnectId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInterconnect');
  has _returns => (isa => 'AWS::DirectConnect::DeleteInterconnectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteInterconnectResult');  
}
class AWS::DirectConnect::DeleteVirtualInterface {
  has virtualInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVirtualInterface');
  has _returns => (isa => 'AWS::DirectConnect::DeleteVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVirtualInterfaceResult');  
}
class AWS::DirectConnect::DescribeConnections {
  has connectionId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnections');
  has _returns => (isa => 'AWS::DirectConnect::DescribeConnectionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConnectionsResult');  
}
class AWS::DirectConnect::DescribeConnectionsOnInterconnect {
  has interconnectId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnectionsOnInterconnect');
  has _returns => (isa => 'AWS::DirectConnect::DescribeConnectionsOnInterconnectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConnectionsOnInterconnectResult');  
}
class AWS::DirectConnect::DescribeInterconnects {
  has interconnectId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInterconnects');
  has _returns => (isa => 'AWS::DirectConnect::DescribeInterconnectsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInterconnectsResult');  
}
class AWS::DirectConnect::DescribeLocations {

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocations');
  has _returns => (isa => 'AWS::DirectConnect::DescribeLocationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLocationsResult');  
}
class AWS::DirectConnect::DescribeVirtualGateways {

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualGateways');
  has _returns => (isa => 'AWS::DirectConnect::DescribeVirtualGatewaysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVirtualGatewaysResult');  
}
class AWS::DirectConnect::DescribeVirtualInterfaces {
  has connectionId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualInterfaces');
  has _returns => (isa => 'AWS::DirectConnect::DescribeVirtualInterfacesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVirtualInterfacesResult');  
}

class AWS::DirectConnect::AllocateConnectionOnInterconnectResult with AWS::API::ResultParser {
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
class AWS::DirectConnect::AllocatePrivateVirtualInterfaceResult with AWS::API::ResultParser {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int');
  has authKey => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has customerRouterConfig => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[AWS::DirectConnect::RouteFilterPrefix]');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str');
  has virtualInterfaceState => (is => 'ro', isa => 'Str');
  has virtualInterfaceType => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');

}
class AWS::DirectConnect::AllocatePublicVirtualInterfaceResult with AWS::API::ResultParser {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int');
  has authKey => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has customerRouterConfig => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[AWS::DirectConnect::RouteFilterPrefix]');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str');
  has virtualInterfaceState => (is => 'ro', isa => 'Str');
  has virtualInterfaceType => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');

}
class AWS::DirectConnect::ConfirmConnectionResult with AWS::API::ResultParser {
  has connectionState => (is => 'ro', isa => 'Str');

}
class AWS::DirectConnect::ConfirmPrivateVirtualInterfaceResult with AWS::API::ResultParser {
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
class AWS::DirectConnect::ConfirmPublicVirtualInterfaceResult with AWS::API::ResultParser {
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
class AWS::DirectConnect::CreateConnectionResult with AWS::API::ResultParser {
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
class AWS::DirectConnect::CreateInterconnectResult with AWS::API::ResultParser {
  has bandwidth => (is => 'ro', isa => 'Str');
  has interconnectId => (is => 'ro', isa => 'Str');
  has interconnectName => (is => 'ro', isa => 'Str');
  has interconnectState => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has region => (is => 'ro', isa => 'Str');

}
class AWS::DirectConnect::CreatePrivateVirtualInterfaceResult with AWS::API::ResultParser {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int');
  has authKey => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has customerRouterConfig => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[AWS::DirectConnect::RouteFilterPrefix]');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str');
  has virtualInterfaceState => (is => 'ro', isa => 'Str');
  has virtualInterfaceType => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');

}
class AWS::DirectConnect::CreatePublicVirtualInterfaceResult with AWS::API::ResultParser {
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int');
  has authKey => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has customerRouterConfig => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[AWS::DirectConnect::RouteFilterPrefix]');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str');
  has virtualInterfaceState => (is => 'ro', isa => 'Str');
  has virtualInterfaceType => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');

}
class AWS::DirectConnect::DeleteConnectionResult with AWS::API::ResultParser {
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
class AWS::DirectConnect::DeleteInterconnectResult with AWS::API::ResultParser {
  has interconnectState => (is => 'ro', isa => 'Str');

}
class AWS::DirectConnect::DeleteVirtualInterfaceResult with AWS::API::ResultParser {
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
class AWS::DirectConnect::DescribeConnectionsResult with AWS::API::ResultParser {
  has connections => (is => 'ro', isa => 'ArrayRef[AWS::DirectConnect::Connection]');

}
class AWS::DirectConnect::DescribeConnectionsOnInterconnectResult with AWS::API::ResultParser {
  has connections => (is => 'ro', isa => 'ArrayRef[AWS::DirectConnect::Connection]');

}
class AWS::DirectConnect::DescribeInterconnectsResult with AWS::API::ResultParser {
  has interconnects => (is => 'ro', isa => 'ArrayRef[AWS::DirectConnect::Interconnect]');

}
class AWS::DirectConnect::DescribeLocationsResult with AWS::API::ResultParser {
  has locations => (is => 'ro', isa => 'ArrayRef[AWS::DirectConnect::Location]');

}
class AWS::DirectConnect::DescribeVirtualGatewaysResult with AWS::API::ResultParser {
  has virtualGateways => (is => 'ro', isa => 'ArrayRef[AWS::DirectConnect::VirtualGateway]');

}
class AWS::DirectConnect::DescribeVirtualInterfacesResult with AWS::API::ResultParser {
  has virtualInterfaces => (is => 'ro', isa => 'ArrayRef[AWS::DirectConnect::VirtualInterface]');

}

class AWS::DirectConnect with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'directconnect');
  has version => (is => 'ro', isa => 'Str', default => '2012-10-25');
  
  method AllocateConnectionOnInterconnect (%args) {
    my $call = AWS::DirectConnect::AllocateConnectionOnInterconnect->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::AllocateConnectionOnInterconnectResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AllocatePrivateVirtualInterface (%args) {
    my $call = AWS::DirectConnect::AllocatePrivateVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::AllocatePrivateVirtualInterfaceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AllocatePublicVirtualInterface (%args) {
    my $call = AWS::DirectConnect::AllocatePublicVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::AllocatePublicVirtualInterfaceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ConfirmConnection (%args) {
    my $call = AWS::DirectConnect::ConfirmConnection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::ConfirmConnectionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ConfirmPrivateVirtualInterface (%args) {
    my $call = AWS::DirectConnect::ConfirmPrivateVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::ConfirmPrivateVirtualInterfaceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ConfirmPublicVirtualInterface (%args) {
    my $call = AWS::DirectConnect::ConfirmPublicVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::ConfirmPublicVirtualInterfaceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateConnection (%args) {
    my $call = AWS::DirectConnect::CreateConnection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::CreateConnectionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateInterconnect (%args) {
    my $call = AWS::DirectConnect::CreateInterconnect->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::CreateInterconnectResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreatePrivateVirtualInterface (%args) {
    my $call = AWS::DirectConnect::CreatePrivateVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::CreatePrivateVirtualInterfaceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreatePublicVirtualInterface (%args) {
    my $call = AWS::DirectConnect::CreatePublicVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::CreatePublicVirtualInterfaceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteConnection (%args) {
    my $call = AWS::DirectConnect::DeleteConnection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::DeleteConnectionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteInterconnect (%args) {
    my $call = AWS::DirectConnect::DeleteInterconnect->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::DeleteInterconnectResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteVirtualInterface (%args) {
    my $call = AWS::DirectConnect::DeleteVirtualInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::DeleteVirtualInterfaceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeConnections (%args) {
    my $call = AWS::DirectConnect::DescribeConnections->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::DescribeConnectionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeConnectionsOnInterconnect (%args) {
    my $call = AWS::DirectConnect::DescribeConnectionsOnInterconnect->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::DescribeConnectionsOnInterconnectResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeInterconnects (%args) {
    my $call = AWS::DirectConnect::DescribeInterconnects->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::DescribeInterconnectsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeLocations (%args) {
    my $call = AWS::DirectConnect::DescribeLocations->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::DescribeLocationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeVirtualGateways (%args) {
    my $call = AWS::DirectConnect::DescribeVirtualGateways->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::DescribeVirtualGatewaysResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeVirtualInterfaces (%args) {
    my $call = AWS::DirectConnect::DescribeVirtualInterfaces->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DirectConnect::DescribeVirtualInterfacesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
