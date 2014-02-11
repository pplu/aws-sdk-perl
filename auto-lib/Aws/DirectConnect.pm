
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::DirectConnect::ConnectionState', ['ordering','requested','pending','available','down','deleting','deleted','rejected',];
enum 'Aws::DirectConnect::InterconnectState', ['requested','pending','available','down','deleting','deleted',];
enum 'Aws::DirectConnect::VirtualInterfaceState', ['confirming','verifying','pending','available','deleting','deleted','rejected',];


package Aws::DirectConnect::Connection {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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

package Aws::DirectConnect::Interconnect {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has bandwidth => (is => 'ro', isa => 'Str');
  has interconnectId => (is => 'ro', isa => 'Str');
  has interconnectName => (is => 'ro', isa => 'Str');
  has interconnectState => (is => 'ro', isa => 'Aws::DirectConnect::InterconnectState');
  has location => (is => 'ro', isa => 'Str');
  has region => (is => 'ro', isa => 'Str');
}

package Aws::DirectConnect::Location {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has locationCode => (is => 'ro', isa => 'Str');
  has locationName => (is => 'ro', isa => 'Str');
}

package Aws::DirectConnect::NewPrivateVirtualInterface {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has virtualGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::DirectConnect::NewPrivateVirtualInterfaceAllocation {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::DirectConnect::NewPublicVirtualInterface {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has amazonAddress => (is => 'ro', isa => 'Str', required => 1);
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str', required => 1);
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::RouteFilterPrefix]', required => 1);
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::DirectConnect::NewPublicVirtualInterfaceAllocation {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has amazonAddress => (is => 'ro', isa => 'Str', required => 1);
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str', required => 1);
  has routeFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::RouteFilterPrefix]', required => 1);
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::DirectConnect::RouteFilterPrefix {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has cidr => (is => 'ro', isa => 'Str');
}

package Aws::DirectConnect::VirtualGateway {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualGatewayState => (is => 'ro', isa => 'Str');
}

package Aws::DirectConnect::VirtualInterface {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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



package Aws::DirectConnect::AllocateConnectionOnInterconnect {
  use Moose;
  has bandwidth => (is => 'ro', isa => 'Str', required => 1);
  has connectionName => (is => 'ro', isa => 'Str', required => 1);
  has interconnectId => (is => 'ro', isa => 'Str', required => 1);
  has ownerAccount => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateConnectionOnInterconnect');
  has _returns => (isa => 'Aws::DirectConnect::AllocateConnectionOnInterconnectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AllocateConnectionOnInterconnectResult');  
}
package Aws::DirectConnect::AllocatePrivateVirtualInterface {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPrivateVirtualInterfaceAllocation => (is => 'ro', isa => 'Aws::DirectConnect::NewPrivateVirtualInterfaceAllocation', required => 1);
  has ownerAccount => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AllocatePrivateVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::AllocatePrivateVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AllocatePrivateVirtualInterfaceResult');  
}
package Aws::DirectConnect::AllocatePublicVirtualInterface {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPublicVirtualInterfaceAllocation => (is => 'ro', isa => 'Aws::DirectConnect::NewPublicVirtualInterfaceAllocation', required => 1);
  has ownerAccount => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AllocatePublicVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::AllocatePublicVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AllocatePublicVirtualInterfaceResult');  
}
package Aws::DirectConnect::ConfirmConnection {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmConnection');
  has _returns => (isa => 'Aws::DirectConnect::ConfirmConnectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmConnectionResult');  
}
package Aws::DirectConnect::ConfirmPrivateVirtualInterface {
  use Moose;
  has virtualGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has virtualInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmPrivateVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::ConfirmPrivateVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmPrivateVirtualInterfaceResult');  
}
package Aws::DirectConnect::ConfirmPublicVirtualInterface {
  use Moose;
  has virtualInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmPublicVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::ConfirmPublicVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmPublicVirtualInterfaceResult');  
}
package Aws::DirectConnect::CreateConnection {
  use Moose;
  has bandwidth => (is => 'ro', isa => 'Str', required => 1);
  has connectionName => (is => 'ro', isa => 'Str', required => 1);
  has location => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnection');
  has _returns => (isa => 'Aws::DirectConnect::CreateConnectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateConnectionResult');  
}
package Aws::DirectConnect::CreateInterconnect {
  use Moose;
  has bandwidth => (is => 'ro', isa => 'Str', required => 1);
  has interconnectName => (is => 'ro', isa => 'Str', required => 1);
  has location => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInterconnect');
  has _returns => (isa => 'Aws::DirectConnect::CreateInterconnectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInterconnectResult');  
}
package Aws::DirectConnect::CreatePrivateVirtualInterface {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPrivateVirtualInterface => (is => 'ro', isa => 'Aws::DirectConnect::NewPrivateVirtualInterface', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePrivateVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::CreatePrivateVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePrivateVirtualInterfaceResult');  
}
package Aws::DirectConnect::CreatePublicVirtualInterface {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPublicVirtualInterface => (is => 'ro', isa => 'Aws::DirectConnect::NewPublicVirtualInterface', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePublicVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::CreatePublicVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePublicVirtualInterfaceResult');  
}
package Aws::DirectConnect::DeleteConnection {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnection');
  has _returns => (isa => 'Aws::DirectConnect::DeleteConnectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteConnectionResult');  
}
package Aws::DirectConnect::DeleteInterconnect {
  use Moose;
  has interconnectId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInterconnect');
  has _returns => (isa => 'Aws::DirectConnect::DeleteInterconnectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteInterconnectResult');  
}
package Aws::DirectConnect::DeleteVirtualInterface {
  use Moose;
  has virtualInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVirtualInterface');
  has _returns => (isa => 'Aws::DirectConnect::DeleteVirtualInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVirtualInterfaceResult');  
}
package Aws::DirectConnect::DescribeConnections {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnections');
  has _returns => (isa => 'Aws::DirectConnect::DescribeConnectionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConnectionsResult');  
}
package Aws::DirectConnect::DescribeConnectionsOnInterconnect {
  use Moose;
  has interconnectId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnectionsOnInterconnect');
  has _returns => (isa => 'Aws::DirectConnect::DescribeConnectionsOnInterconnectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConnectionsOnInterconnectResult');  
}
package Aws::DirectConnect::DescribeInterconnects {
  use Moose;
  has interconnectId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInterconnects');
  has _returns => (isa => 'Aws::DirectConnect::DescribeInterconnectsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInterconnectsResult');  
}
package Aws::DirectConnect::DescribeLocations {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocations');
  has _returns => (isa => 'Aws::DirectConnect::DescribeLocationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLocationsResult');  
}
package Aws::DirectConnect::DescribeVirtualGateways {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualGateways');
  has _returns => (isa => 'Aws::DirectConnect::DescribeVirtualGatewaysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVirtualGatewaysResult');  
}
package Aws::DirectConnect::DescribeVirtualInterfaces {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualInterfaces');
  has _returns => (isa => 'Aws::DirectConnect::DescribeVirtualInterfacesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVirtualInterfacesResult');  
}

package Aws::DirectConnect::AllocateConnectionOnInterconnectResult {
  use Moose;
  with 'AWS::API::ResultParser';
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
package Aws::DirectConnect::AllocatePrivateVirtualInterfaceResult {
  use Moose;
  with 'AWS::API::ResultParser';
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
package Aws::DirectConnect::AllocatePublicVirtualInterfaceResult {
  use Moose;
  with 'AWS::API::ResultParser';
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
package Aws::DirectConnect::ConfirmConnectionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has connectionState => (is => 'ro', isa => 'Str');

}
package Aws::DirectConnect::ConfirmPrivateVirtualInterfaceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
package Aws::DirectConnect::ConfirmPublicVirtualInterfaceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
package Aws::DirectConnect::CreateConnectionResult {
  use Moose;
  with 'AWS::API::ResultParser';
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
package Aws::DirectConnect::CreateInterconnectResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has bandwidth => (is => 'ro', isa => 'Str');
  has interconnectId => (is => 'ro', isa => 'Str');
  has interconnectName => (is => 'ro', isa => 'Str');
  has interconnectState => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has region => (is => 'ro', isa => 'Str');

}
package Aws::DirectConnect::CreatePrivateVirtualInterfaceResult {
  use Moose;
  with 'AWS::API::ResultParser';
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
package Aws::DirectConnect::CreatePublicVirtualInterfaceResult {
  use Moose;
  with 'AWS::API::ResultParser';
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
package Aws::DirectConnect::DeleteConnectionResult {
  use Moose;
  with 'AWS::API::ResultParser';
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
package Aws::DirectConnect::DeleteInterconnectResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has interconnectState => (is => 'ro', isa => 'Str');

}
package Aws::DirectConnect::DeleteVirtualInterfaceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
package Aws::DirectConnect::DescribeConnectionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has connections => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::Connection]');

}
package Aws::DirectConnect::DescribeConnectionsOnInterconnectResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has connections => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::Connection]');

}
package Aws::DirectConnect::DescribeInterconnectsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has interconnects => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::Interconnect]');

}
package Aws::DirectConnect::DescribeLocationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has locations => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::Location]');

}
package Aws::DirectConnect::DescribeVirtualGatewaysResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has virtualGateways => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::VirtualGateway]');

}
package Aws::DirectConnect::DescribeVirtualInterfacesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has virtualInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::VirtualInterface]');

}

package Aws::DirectConnect {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'directconnect');
  has version => (is => 'ro', isa => 'Str', default => '2012-10-25');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'OvertureService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::JsonCaller', 'Net::AWS::JsonResponse');
  
  sub AllocateConnectionOnInterconnect {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::AllocateConnectionOnInterconnect', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::AllocateConnectionOnInterconnectResult->from_result($result);return $o_result;
  }
  sub AllocatePrivateVirtualInterface {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::AllocatePrivateVirtualInterface', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::AllocatePrivateVirtualInterfaceResult->from_result($result);return $o_result;
  }
  sub AllocatePublicVirtualInterface {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::AllocatePublicVirtualInterface', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::AllocatePublicVirtualInterfaceResult->from_result($result);return $o_result;
  }
  sub ConfirmConnection {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::ConfirmConnection', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::ConfirmConnectionResult->from_result($result);return $o_result;
  }
  sub ConfirmPrivateVirtualInterface {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::ConfirmPrivateVirtualInterface', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::ConfirmPrivateVirtualInterfaceResult->from_result($result);return $o_result;
  }
  sub ConfirmPublicVirtualInterface {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::ConfirmPublicVirtualInterface', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::ConfirmPublicVirtualInterfaceResult->from_result($result);return $o_result;
  }
  sub CreateConnection {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::CreateConnection', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::CreateConnectionResult->from_result($result);return $o_result;
  }
  sub CreateInterconnect {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::CreateInterconnect', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::CreateInterconnectResult->from_result($result);return $o_result;
  }
  sub CreatePrivateVirtualInterface {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::CreatePrivateVirtualInterface', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::CreatePrivateVirtualInterfaceResult->from_result($result);return $o_result;
  }
  sub CreatePublicVirtualInterface {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::CreatePublicVirtualInterface', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::CreatePublicVirtualInterfaceResult->from_result($result);return $o_result;
  }
  sub DeleteConnection {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::DeleteConnection', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DeleteConnectionResult->from_result($result);return $o_result;
  }
  sub DeleteInterconnect {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::DeleteInterconnect', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DeleteInterconnectResult->from_result($result);return $o_result;
  }
  sub DeleteVirtualInterface {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::DeleteVirtualInterface', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DeleteVirtualInterfaceResult->from_result($result);return $o_result;
  }
  sub DescribeConnections {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::DescribeConnections', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DescribeConnectionsResult->from_result($result);return $o_result;
  }
  sub DescribeConnectionsOnInterconnect {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::DescribeConnectionsOnInterconnect', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DescribeConnectionsOnInterconnectResult->from_result($result);return $o_result;
  }
  sub DescribeInterconnects {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::DescribeInterconnects', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DescribeInterconnectsResult->from_result($result);return $o_result;
  }
  sub DescribeLocations {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::DescribeLocations', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DescribeLocationsResult->from_result($result);return $o_result;
  }
  sub DescribeVirtualGateways {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::DescribeVirtualGateways', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DescribeVirtualGatewaysResult->from_result($result);return $o_result;
  }
  sub DescribeVirtualInterfaces {
    my $self = shift;
    my $call = new_with_coercions('Aws::DirectConnect::DescribeVirtualInterfaces', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DirectConnect::DescribeVirtualInterfacesResult->from_result($result);return $o_result;
  }
}
