package Paws::NetworkManager;
  use Moose;
  sub service { 'networkmanager' }
  sub signing_name { 'networkmanager' }
  sub version { '2019-07-05' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateCustomerGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::AssociateCustomerGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::AssociateLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTransitGatewayConnectPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::AssociateTransitGatewayConnectPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGlobalNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateGlobalNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::CreateSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGlobalNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteGlobalNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeleteSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterTransitGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DeregisterTransitGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGlobalNetworks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DescribeGlobalNetworks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateCustomerGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DisassociateCustomerGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DisassociateLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTransitGatewayConnectPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::DisassociateTransitGatewayConnectPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCustomerGatewayAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetCustomerGatewayAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLinkAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetLinkAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLinks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetLinks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSites {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetSites', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayConnectPeerAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetTransitGatewayConnectPeerAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayRegistrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::GetTransitGatewayRegistrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterTransitGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::RegisterTransitGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGlobalNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateGlobalNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkManager::UpdateSite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllGlobalNetworks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeGlobalNetworks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeGlobalNetworks(@_, NextToken => $next_result->NextToken);
        push @{ $result->GlobalNetworks }, @{ $next_result->GlobalNetworks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GlobalNetworks') foreach (@{ $result->GlobalNetworks });
        $result = $self->DescribeGlobalNetworks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GlobalNetworks') foreach (@{ $result->GlobalNetworks });
    }

    return undef
  }
  sub GetAllConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetConnections(@_, NextToken => $next_result->NextToken);
        push @{ $result->Connections }, @{ $next_result->Connections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Connections') foreach (@{ $result->Connections });
        $result = $self->GetConnections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Connections') foreach (@{ $result->Connections });
    }

    return undef
  }
  sub GetAllCustomerGatewayAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCustomerGatewayAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetCustomerGatewayAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->CustomerGatewayAssociations }, @{ $next_result->CustomerGatewayAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CustomerGatewayAssociations') foreach (@{ $result->CustomerGatewayAssociations });
        $result = $self->GetCustomerGatewayAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CustomerGatewayAssociations') foreach (@{ $result->CustomerGatewayAssociations });
    }

    return undef
  }
  sub GetAllDevices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDevices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetDevices(@_, NextToken => $next_result->NextToken);
        push @{ $result->Devices }, @{ $next_result->Devices };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Devices') foreach (@{ $result->Devices });
        $result = $self->GetDevices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Devices') foreach (@{ $result->Devices });
    }

    return undef
  }
  sub GetAllLinkAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetLinkAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetLinkAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->LinkAssociations }, @{ $next_result->LinkAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LinkAssociations') foreach (@{ $result->LinkAssociations });
        $result = $self->GetLinkAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LinkAssociations') foreach (@{ $result->LinkAssociations });
    }

    return undef
  }
  sub GetAllLinks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetLinks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetLinks(@_, NextToken => $next_result->NextToken);
        push @{ $result->Links }, @{ $next_result->Links };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Links') foreach (@{ $result->Links });
        $result = $self->GetLinks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Links') foreach (@{ $result->Links });
    }

    return undef
  }
  sub GetAllSites {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSites(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetSites(@_, NextToken => $next_result->NextToken);
        push @{ $result->Sites }, @{ $next_result->Sites };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Sites') foreach (@{ $result->Sites });
        $result = $self->GetSites(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Sites') foreach (@{ $result->Sites });
    }

    return undef
  }
  sub GetAllTransitGatewayConnectPeerAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayConnectPeerAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayConnectPeerAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayConnectPeerAssociations }, @{ $next_result->TransitGatewayConnectPeerAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayConnectPeerAssociations') foreach (@{ $result->TransitGatewayConnectPeerAssociations });
        $result = $self->GetTransitGatewayConnectPeerAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayConnectPeerAssociations') foreach (@{ $result->TransitGatewayConnectPeerAssociations });
    }

    return undef
  }
  sub GetAllTransitGatewayRegistrations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayRegistrations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayRegistrations(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayRegistrations }, @{ $next_result->TransitGatewayRegistrations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayRegistrations') foreach (@{ $result->TransitGatewayRegistrations });
        $result = $self->GetTransitGatewayRegistrations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayRegistrations') foreach (@{ $result->TransitGatewayRegistrations });
    }

    return undef
  }


  sub operations { qw/AssociateCustomerGateway AssociateLink AssociateTransitGatewayConnectPeer CreateConnection CreateDevice CreateGlobalNetwork CreateLink CreateSite DeleteConnection DeleteDevice DeleteGlobalNetwork DeleteLink DeleteSite DeregisterTransitGateway DescribeGlobalNetworks DisassociateCustomerGateway DisassociateLink DisassociateTransitGatewayConnectPeer GetConnections GetCustomerGatewayAssociations GetDevices GetLinkAssociations GetLinks GetSites GetTransitGatewayConnectPeerAssociations GetTransitGatewayRegistrations ListTagsForResource RegisterTransitGateway TagResource UntagResource UpdateConnection UpdateDevice UpdateGlobalNetwork UpdateLink UpdateSite / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager - Perl Interface to AWS AWS Network Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('NetworkManager');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Transit Gateway Network Manager (Network Manager) enables you to create
a global network, in which you can monitor your AWS and on-premises
networks that are built around transit gateways.

The Network Manager APIs are supported in the US West (Oregon) Region
only. You must specify the C<us-west-2> Region in all requests made to
Network Manager.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05>


=head1 METHODS

=head2 AssociateCustomerGateway

=over

=item CustomerGatewayArn => Str

=item DeviceId => Str

=item GlobalNetworkId => Str

=item [LinkId => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::AssociateCustomerGateway>

Returns: a L<Paws::NetworkManager::AssociateCustomerGatewayResponse> instance

Associates a customer gateway with a device and optionally, with a
link. If you specify a link, it must be associated with the specified
device.

You can only associate customer gateways that are connected to a VPN
attachment on a transit gateway. The transit gateway must be registered
in your global network. When you register a transit gateway, customer
gateways that are connected to the transit gateway are automatically
included in the global network. To list customer gateways that are
connected to a transit gateway, use the DescribeVpnConnections
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html)
EC2 API and filter by C<transit-gateway-id>.

You cannot associate a customer gateway with more than one device and
link.


=head2 AssociateLink

=over

=item DeviceId => Str

=item GlobalNetworkId => Str

=item LinkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::AssociateLink>

Returns: a L<Paws::NetworkManager::AssociateLinkResponse> instance

Associates a link to a device. A device can be associated to multiple
links and a link can be associated to multiple devices. The device and
link must be in the same global network and the same site.


=head2 AssociateTransitGatewayConnectPeer

=over

=item DeviceId => Str

=item GlobalNetworkId => Str

=item TransitGatewayConnectPeerArn => Str

=item [LinkId => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::AssociateTransitGatewayConnectPeer>

Returns: a L<Paws::NetworkManager::AssociateTransitGatewayConnectPeerResponse> instance

Associates a transit gateway Connect peer with a device, and
optionally, with a link. If you specify a link, it must be associated
with the specified device.

You can only associate transit gateway Connect peers that have been
created on a transit gateway that's registered in your global network.

You cannot associate a transit gateway Connect peer with more than one
device and link.


=head2 CreateConnection

=over

=item ConnectedDeviceId => Str

=item DeviceId => Str

=item GlobalNetworkId => Str

=item [ConnectedLinkId => Str]

=item [Description => Str]

=item [LinkId => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateConnection>

Returns: a L<Paws::NetworkManager::CreateConnectionResponse> instance

Creates a connection between two devices. The devices can be a physical
or virtual appliance that connects to a third-party appliance in a VPC,
or a physical appliance that connects to another physical appliance in
an on-premises network.


=head2 CreateDevice

=over

=item GlobalNetworkId => Str

=item [AWSLocation => L<Paws::NetworkManager::AWSLocation>]

=item [Description => Str]

=item [Location => L<Paws::NetworkManager::Location>]

=item [Model => Str]

=item [SerialNumber => Str]

=item [SiteId => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]

=item [Type => Str]

=item [Vendor => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateDevice>

Returns: a L<Paws::NetworkManager::CreateDeviceResponse> instance

Creates a new device in a global network. If you specify both a site ID
and a location, the location of the site is used for visualization in
the Network Manager console.


=head2 CreateGlobalNetwork

=over

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateGlobalNetwork>

Returns: a L<Paws::NetworkManager::CreateGlobalNetworkResponse> instance

Creates a new, empty global network.


=head2 CreateLink

=over

=item Bandwidth => L<Paws::NetworkManager::Bandwidth>

=item GlobalNetworkId => Str

=item SiteId => Str

=item [Description => Str]

=item [Provider => Str]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateLink>

Returns: a L<Paws::NetworkManager::CreateLinkResponse> instance

Creates a new link for a specified site.


=head2 CreateSite

=over

=item GlobalNetworkId => Str

=item [Description => Str]

=item [Location => L<Paws::NetworkManager::Location>]

=item [Tags => ArrayRef[L<Paws::NetworkManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::CreateSite>

Returns: a L<Paws::NetworkManager::CreateSiteResponse> instance

Creates a new site in a global network.


=head2 DeleteConnection

=over

=item ConnectionId => Str

=item GlobalNetworkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteConnection>

Returns: a L<Paws::NetworkManager::DeleteConnectionResponse> instance

Deletes the specified connection in your global network.


=head2 DeleteDevice

=over

=item DeviceId => Str

=item GlobalNetworkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteDevice>

Returns: a L<Paws::NetworkManager::DeleteDeviceResponse> instance

Deletes an existing device. You must first disassociate the device from
any links and customer gateways.


=head2 DeleteGlobalNetwork

=over

=item GlobalNetworkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteGlobalNetwork>

Returns: a L<Paws::NetworkManager::DeleteGlobalNetworkResponse> instance

Deletes an existing global network. You must first delete all global
network objects (devices, links, and sites) and deregister all transit
gateways.


=head2 DeleteLink

=over

=item GlobalNetworkId => Str

=item LinkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteLink>

Returns: a L<Paws::NetworkManager::DeleteLinkResponse> instance

Deletes an existing link. You must first disassociate the link from any
devices and customer gateways.


=head2 DeleteSite

=over

=item GlobalNetworkId => Str

=item SiteId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeleteSite>

Returns: a L<Paws::NetworkManager::DeleteSiteResponse> instance

Deletes an existing site. The site cannot be associated with any device
or link.


=head2 DeregisterTransitGateway

=over

=item GlobalNetworkId => Str

=item TransitGatewayArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DeregisterTransitGateway>

Returns: a L<Paws::NetworkManager::DeregisterTransitGatewayResponse> instance

Deregisters a transit gateway from your global network. This action
does not delete your transit gateway, or modify any of its attachments.
This action removes any customer gateway associations.


=head2 DescribeGlobalNetworks

=over

=item [GlobalNetworkIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::DescribeGlobalNetworks>

Returns: a L<Paws::NetworkManager::DescribeGlobalNetworksResponse> instance

Describes one or more global networks. By default, all global networks
are described. To describe the objects in your global network, you must
use the appropriate C<Get*> action. For example, to list the transit
gateways in your global network, use GetTransitGatewayRegistrations.


=head2 DisassociateCustomerGateway

=over

=item CustomerGatewayArn => Str

=item GlobalNetworkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DisassociateCustomerGateway>

Returns: a L<Paws::NetworkManager::DisassociateCustomerGatewayResponse> instance

Disassociates a customer gateway from a device and a link.


=head2 DisassociateLink

=over

=item DeviceId => Str

=item GlobalNetworkId => Str

=item LinkId => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DisassociateLink>

Returns: a L<Paws::NetworkManager::DisassociateLinkResponse> instance

Disassociates an existing device from a link. You must first
disassociate any customer gateways that are associated with the link.


=head2 DisassociateTransitGatewayConnectPeer

=over

=item GlobalNetworkId => Str

=item TransitGatewayConnectPeerArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::DisassociateTransitGatewayConnectPeer>

Returns: a L<Paws::NetworkManager::DisassociateTransitGatewayConnectPeerResponse> instance

Disassociates a transit gateway Connect peer from a device and link.


=head2 GetConnections

=over

=item GlobalNetworkId => Str

=item [ConnectionIds => ArrayRef[Str|Undef]]

=item [DeviceId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetConnections>

Returns: a L<Paws::NetworkManager::GetConnectionsResponse> instance

Gets information about one or more of your connections in a global
network.


=head2 GetCustomerGatewayAssociations

=over

=item GlobalNetworkId => Str

=item [CustomerGatewayArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetCustomerGatewayAssociations>

Returns: a L<Paws::NetworkManager::GetCustomerGatewayAssociationsResponse> instance

Gets the association information for customer gateways that are
associated with devices and links in your global network.


=head2 GetDevices

=over

=item GlobalNetworkId => Str

=item [DeviceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SiteId => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetDevices>

Returns: a L<Paws::NetworkManager::GetDevicesResponse> instance

Gets information about one or more of your devices in a global network.


=head2 GetLinkAssociations

=over

=item GlobalNetworkId => Str

=item [DeviceId => Str]

=item [LinkId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetLinkAssociations>

Returns: a L<Paws::NetworkManager::GetLinkAssociationsResponse> instance

Gets the link associations for a device or a link. Either the device ID
or the link ID must be specified.


=head2 GetLinks

=over

=item GlobalNetworkId => Str

=item [LinkIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Provider => Str]

=item [SiteId => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetLinks>

Returns: a L<Paws::NetworkManager::GetLinksResponse> instance

Gets information about one or more links in a specified global network.

If you specify the site ID, you cannot specify the type or provider in
the same request. You can specify the type and provider in the same
request.


=head2 GetSites

=over

=item GlobalNetworkId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SiteIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetSites>

Returns: a L<Paws::NetworkManager::GetSitesResponse> instance

Gets information about one or more of your sites in a global network.


=head2 GetTransitGatewayConnectPeerAssociations

=over

=item GlobalNetworkId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayConnectPeerArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetTransitGatewayConnectPeerAssociations>

Returns: a L<Paws::NetworkManager::GetTransitGatewayConnectPeerAssociationsResponse> instance

Gets information about one or more of your transit gateway Connect peer
associations in a global network.


=head2 GetTransitGatewayRegistrations

=over

=item GlobalNetworkId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NetworkManager::GetTransitGatewayRegistrations>

Returns: a L<Paws::NetworkManager::GetTransitGatewayRegistrationsResponse> instance

Gets information about the transit gateway registrations in a specified
global network.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::ListTagsForResource>

Returns: a L<Paws::NetworkManager::ListTagsForResourceResponse> instance

Lists the tags for a specified resource.


=head2 RegisterTransitGateway

=over

=item GlobalNetworkId => Str

=item TransitGatewayArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkManager::RegisterTransitGateway>

Returns: a L<Paws::NetworkManager::RegisterTransitGatewayResponse> instance

Registers a transit gateway in your global network. The transit gateway
can be in any AWS Region, but it must be owned by the same AWS account
that owns the global network. You cannot register a transit gateway in
more than one global network.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::NetworkManager::Tag>]


=back

Each argument is described in detail in: L<Paws::NetworkManager::TagResource>

Returns: a L<Paws::NetworkManager::TagResourceResponse> instance

Tags a specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UntagResource>

Returns: a L<Paws::NetworkManager::UntagResourceResponse> instance

Removes tags from a specified resource.


=head2 UpdateConnection

=over

=item ConnectionId => Str

=item GlobalNetworkId => Str

=item [ConnectedLinkId => Str]

=item [Description => Str]

=item [LinkId => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateConnection>

Returns: a L<Paws::NetworkManager::UpdateConnectionResponse> instance

Updates the information for an existing connection. To remove
information for any of the parameters, specify an empty string.


=head2 UpdateDevice

=over

=item DeviceId => Str

=item GlobalNetworkId => Str

=item [AWSLocation => L<Paws::NetworkManager::AWSLocation>]

=item [Description => Str]

=item [Location => L<Paws::NetworkManager::Location>]

=item [Model => Str]

=item [SerialNumber => Str]

=item [SiteId => Str]

=item [Type => Str]

=item [Vendor => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateDevice>

Returns: a L<Paws::NetworkManager::UpdateDeviceResponse> instance

Updates the details for an existing device. To remove information for
any of the parameters, specify an empty string.


=head2 UpdateGlobalNetwork

=over

=item GlobalNetworkId => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateGlobalNetwork>

Returns: a L<Paws::NetworkManager::UpdateGlobalNetworkResponse> instance

Updates an existing global network. To remove information for any of
the parameters, specify an empty string.


=head2 UpdateLink

=over

=item GlobalNetworkId => Str

=item LinkId => Str

=item [Bandwidth => L<Paws::NetworkManager::Bandwidth>]

=item [Description => Str]

=item [Provider => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateLink>

Returns: a L<Paws::NetworkManager::UpdateLinkResponse> instance

Updates the details for an existing link. To remove information for any
of the parameters, specify an empty string.


=head2 UpdateSite

=over

=item GlobalNetworkId => Str

=item SiteId => Str

=item [Description => Str]

=item [Location => L<Paws::NetworkManager::Location>]


=back

Each argument is described in detail in: L<Paws::NetworkManager::UpdateSite>

Returns: a L<Paws::NetworkManager::UpdateSiteResponse> instance

Updates the information for an existing site. To remove information for
any of the parameters, specify an empty string.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllGlobalNetworks(sub { },[GlobalNetworkIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllGlobalNetworks([GlobalNetworkIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GlobalNetworks, passing the object as the first parameter, and the string 'GlobalNetworks' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::DescribeGlobalNetworksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllConnections(sub { },GlobalNetworkId => Str, [ConnectionIds => ArrayRef[Str|Undef], DeviceId => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllConnections(GlobalNetworkId => Str, [ConnectionIds => ArrayRef[Str|Undef], DeviceId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Connections, passing the object as the first parameter, and the string 'Connections' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetConnectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCustomerGatewayAssociations(sub { },GlobalNetworkId => Str, [CustomerGatewayArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllCustomerGatewayAssociations(GlobalNetworkId => Str, [CustomerGatewayArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CustomerGatewayAssociations, passing the object as the first parameter, and the string 'CustomerGatewayAssociations' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetCustomerGatewayAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDevices(sub { },GlobalNetworkId => Str, [DeviceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, SiteId => Str])

=head2 GetAllDevices(GlobalNetworkId => Str, [DeviceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, SiteId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Devices, passing the object as the first parameter, and the string 'Devices' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetDevicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllLinkAssociations(sub { },GlobalNetworkId => Str, [DeviceId => Str, LinkId => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllLinkAssociations(GlobalNetworkId => Str, [DeviceId => Str, LinkId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LinkAssociations, passing the object as the first parameter, and the string 'LinkAssociations' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetLinkAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllLinks(sub { },GlobalNetworkId => Str, [LinkIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Provider => Str, SiteId => Str, Type => Str])

=head2 GetAllLinks(GlobalNetworkId => Str, [LinkIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Provider => Str, SiteId => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Links, passing the object as the first parameter, and the string 'Links' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetLinksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllSites(sub { },GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, SiteIds => ArrayRef[Str|Undef]])

=head2 GetAllSites(GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, SiteIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Sites, passing the object as the first parameter, and the string 'Sites' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetSitesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayConnectPeerAssociations(sub { },GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, TransitGatewayConnectPeerArns => ArrayRef[Str|Undef]])

=head2 GetAllTransitGatewayConnectPeerAssociations(GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, TransitGatewayConnectPeerArns => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayConnectPeerAssociations, passing the object as the first parameter, and the string 'TransitGatewayConnectPeerAssociations' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetTransitGatewayConnectPeerAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayRegistrations(sub { },GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, TransitGatewayArns => ArrayRef[Str|Undef]])

=head2 GetAllTransitGatewayRegistrations(GlobalNetworkId => Str, [MaxResults => Int, NextToken => Str, TransitGatewayArns => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayRegistrations, passing the object as the first parameter, and the string 'TransitGatewayRegistrations' as the second parameter 

If not, it will return a a L<Paws::NetworkManager::GetTransitGatewayRegistrationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

