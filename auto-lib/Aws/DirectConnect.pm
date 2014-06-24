
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::DirectConnect::ConnectionState', ['ordering','requested','pending','available','down','deleting','deleted','rejected',];
enum 'Aws::DirectConnect::InterconnectState', ['requested','pending','available','down','deleting','deleted',];
enum 'Aws::DirectConnect::VirtualInterfaceState', ['confirming','verifying','pending','available','deleting','deleted','rejected',];


package Aws::DirectConnect::Connection {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has bandwidth => (is => 'ro', isa => 'Str');
  has interconnectId => (is => 'ro', isa => 'Str');
  has interconnectName => (is => 'ro', isa => 'Str');
  has interconnectState => (is => 'ro', isa => 'Aws::DirectConnect::InterconnectState');
  has location => (is => 'ro', isa => 'Str');
  has region => (is => 'ro', isa => 'Str');
}

package Aws::DirectConnect::Location {
  use Moose;
  with ('AWS::API::ResultParser');
  has locationCode => (is => 'ro', isa => 'Str');
  has locationName => (is => 'ro', isa => 'Str');
}

package Aws::DirectConnect::NewPrivateVirtualInterface {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has amazonAddress => (is => 'ro', isa => 'Str');
  has asn => (is => 'ro', isa => 'Int', required => 1);
  has authKey => (is => 'ro', isa => 'Str');
  has customerAddress => (is => 'ro', isa => 'Str');
  has virtualInterfaceName => (is => 'ro', isa => 'Str', required => 1);
  has vlan => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::DirectConnect::NewPublicVirtualInterface {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has cidr => (is => 'ro', isa => 'Str');
}

package Aws::DirectConnect::VirtualGateway {
  use Moose;
  with ('AWS::API::ResultParser');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualGatewayState => (is => 'ro', isa => 'Str');
}

package Aws::DirectConnect::VirtualInterface {
  use Moose;
  with ('AWS::API::ResultParser');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateConnectionOnInterconnect');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::AllocateConnectionOnInterconnectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::AllocatePrivateVirtualInterface {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPrivateVirtualInterfaceAllocation => (is => 'ro', isa => 'Aws::DirectConnect::NewPrivateVirtualInterfaceAllocation', required => 1);
  has ownerAccount => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocatePrivateVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::AllocatePrivateVirtualInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
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
package Aws::DirectConnect::ConfirmConnection {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::ConfirmConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::ConfirmPrivateVirtualInterface {
  use Moose;
  has virtualGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has virtualInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmPrivateVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::ConfirmPrivateVirtualInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::ConfirmPublicVirtualInterface {
  use Moose;
  has virtualInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmPublicVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::ConfirmPublicVirtualInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::CreateConnection {
  use Moose;
  has bandwidth => (is => 'ro', isa => 'Str', required => 1);
  has connectionName => (is => 'ro', isa => 'Str', required => 1);
  has location => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::CreateConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::CreateInterconnect {
  use Moose;
  has bandwidth => (is => 'ro', isa => 'Str', required => 1);
  has interconnectName => (is => 'ro', isa => 'Str', required => 1);
  has location => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInterconnect');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::CreateInterconnectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::CreatePrivateVirtualInterface {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPrivateVirtualInterface => (is => 'ro', isa => 'Aws::DirectConnect::NewPrivateVirtualInterface', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePrivateVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::CreatePrivateVirtualInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::CreatePublicVirtualInterface {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);
  has newPublicVirtualInterface => (is => 'ro', isa => 'Aws::DirectConnect::NewPublicVirtualInterface', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePublicVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::CreatePublicVirtualInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::DeleteConnection {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::DeleteConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::DeleteInterconnect {
  use Moose;
  has interconnectId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInterconnect');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::DeleteInterconnectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::DeleteVirtualInterface {
  use Moose;
  has virtualInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::DeleteVirtualInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::DescribeConnections {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::DescribeConnectionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::DescribeConnectionsOnInterconnect {
  use Moose;
  has interconnectId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnectionsOnInterconnect');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::DescribeConnectionsOnInterconnectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::DescribeInterconnects {
  use Moose;
  has interconnectId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInterconnects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::DescribeInterconnectsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::DescribeLocations {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::DescribeLocationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::DescribeVirtualGateways {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::DescribeVirtualGatewaysResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DirectConnect::DescribeVirtualInterfaces {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str');
  has virtualInterfaceId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVirtualInterfaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::DescribeVirtualInterfacesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
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

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub AllocateConnectionOnInterconnect {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::AllocateConnectionOnInterconnect', @_);
  }
  sub AllocatePrivateVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::AllocatePrivateVirtualInterface', @_);
  }
  sub AllocatePublicVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::AllocatePublicVirtualInterface', @_);
  }
  sub ConfirmConnection {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::ConfirmConnection', @_);
  }
  sub ConfirmPrivateVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::ConfirmPrivateVirtualInterface', @_);
  }
  sub ConfirmPublicVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::ConfirmPublicVirtualInterface', @_);
  }
  sub CreateConnection {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::CreateConnection', @_);
  }
  sub CreateInterconnect {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::CreateInterconnect', @_);
  }
  sub CreatePrivateVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::CreatePrivateVirtualInterface', @_);
  }
  sub CreatePublicVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::CreatePublicVirtualInterface', @_);
  }
  sub DeleteConnection {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DeleteConnection', @_);
  }
  sub DeleteInterconnect {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DeleteInterconnect', @_);
  }
  sub DeleteVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DeleteVirtualInterface', @_);
  }
  sub DescribeConnections {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DescribeConnections', @_);
  }
  sub DescribeConnectionsOnInterconnect {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DescribeConnectionsOnInterconnect', @_);
  }
  sub DescribeInterconnects {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DescribeInterconnects', @_);
  }
  sub DescribeLocations {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DescribeLocations', @_);
  }
  sub DescribeVirtualGateways {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DescribeVirtualGateways', @_);
  }
  sub DescribeVirtualInterfaces {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DescribeVirtualInterfaces', @_);
  }
}
1;
