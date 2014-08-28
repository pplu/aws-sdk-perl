
use AWS::API;


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
