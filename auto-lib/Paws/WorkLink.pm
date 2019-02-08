package Paws::WorkLink;
  use Moose;
  sub service { 'worklink' }
  sub signing_name { 'worklink' }
  sub version { '2018-09-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateWebsiteCertificateAuthority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::AssociateWebsiteCertificateAuthority', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::CreateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::DeleteFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAuditStreamConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::DescribeAuditStreamConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCompanyNetworkConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::DescribeCompanyNetworkConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::DescribeDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDevicePolicyConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::DescribeDevicePolicyConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::DescribeFleetMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentityProviderConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::DescribeIdentityProviderConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWebsiteCertificateAuthority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::DescribeWebsiteCertificateAuthority', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateWebsiteCertificateAuthority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::DisassociateWebsiteCertificateAuthority', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::ListDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::ListFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWebsiteCertificateAuthorities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::ListWebsiteCertificateAuthorities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SignOutUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::SignOutUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAuditStreamConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::UpdateAuditStreamConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCompanyNetworkConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::UpdateCompanyNetworkConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDevicePolicyConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::UpdateDevicePolicyConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFleetMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::UpdateFleetMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIdentityProviderConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkLink::UpdateIdentityProviderConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateWebsiteCertificateAuthority CreateFleet DeleteFleet DescribeAuditStreamConfiguration DescribeCompanyNetworkConfiguration DescribeDevice DescribeDevicePolicyConfiguration DescribeFleetMetadata DescribeIdentityProviderConfiguration DescribeWebsiteCertificateAuthority DisassociateWebsiteCertificateAuthority ListDevices ListFleets ListWebsiteCertificateAuthorities SignOutUser UpdateAuditStreamConfiguration UpdateCompanyNetworkConfiguration UpdateDevicePolicyConfiguration UpdateFleetMetadata UpdateIdentityProviderConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink - Perl Interface to AWS Amazon WorkLink

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WorkLink');
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

Amazon WorkLink is a cloud-based service that provides secure access to
internal websites and web apps from iOS phones. In a single step, your
users, such as employees, can access internal websites as efficiently
as they access any other public website. They enter a URL in their web
browser, or choose a link to an internal website in an email. Amazon
WorkLink authenticates the user's access and securely renders
authorized internal web content in a secure rendering service in the
AWS cloud. Amazon WorkLink doesn't download or store any internal web
content on mobile devices.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25>


=head1 METHODS

=head2 AssociateWebsiteCertificateAuthority

=over

=item Certificate => Str

=item FleetArn => Str

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::WorkLink::AssociateWebsiteCertificateAuthority>

Returns: a L<Paws::WorkLink::AssociateWebsiteCertificateAuthorityResponse> instance

Imports the root certificate of a certificate authority (CA) used to
obtain TLS certificates used by associated websites within the company
network.


=head2 CreateFleet

=over

=item FleetName => Str

=item [DisplayName => Str]

=item [OptimizeForEndUserLocation => Bool]


=back

Each argument is described in detail in: L<Paws::WorkLink::CreateFleet>

Returns: a L<Paws::WorkLink::CreateFleetResponse> instance

Creates a fleet. A fleet consists of resources and the configuration
that delivers associated websites to authorized users who download and
set up the Amazon WorkLink app.


=head2 DeleteFleet

=over

=item FleetArn => Str


=back

Each argument is described in detail in: L<Paws::WorkLink::DeleteFleet>

Returns: a L<Paws::WorkLink::DeleteFleetResponse> instance

Deletes a fleet. Prevents users from accessing previously associated
websites.


=head2 DescribeAuditStreamConfiguration

=over

=item FleetArn => Str


=back

Each argument is described in detail in: L<Paws::WorkLink::DescribeAuditStreamConfiguration>

Returns: a L<Paws::WorkLink::DescribeAuditStreamConfigurationResponse> instance

Describes the configuration for delivering audit streams to the
customer account.


=head2 DescribeCompanyNetworkConfiguration

=over

=item FleetArn => Str


=back

Each argument is described in detail in: L<Paws::WorkLink::DescribeCompanyNetworkConfiguration>

Returns: a L<Paws::WorkLink::DescribeCompanyNetworkConfigurationResponse> instance

Describes the networking configuration to access the internal websites
associated with the specified fleet.


=head2 DescribeDevice

=over

=item DeviceId => Str

=item FleetArn => Str


=back

Each argument is described in detail in: L<Paws::WorkLink::DescribeDevice>

Returns: a L<Paws::WorkLink::DescribeDeviceResponse> instance

Provides information about a user's device.


=head2 DescribeDevicePolicyConfiguration

=over

=item FleetArn => Str


=back

Each argument is described in detail in: L<Paws::WorkLink::DescribeDevicePolicyConfiguration>

Returns: a L<Paws::WorkLink::DescribeDevicePolicyConfigurationResponse> instance

Describes the device policy configuration for the specified fleet.


=head2 DescribeFleetMetadata

=over

=item FleetArn => Str


=back

Each argument is described in detail in: L<Paws::WorkLink::DescribeFleetMetadata>

Returns: a L<Paws::WorkLink::DescribeFleetMetadataResponse> instance

Provides basic information for the specified fleet, excluding identity
provider, networking, and device configuration details.


=head2 DescribeIdentityProviderConfiguration

=over

=item FleetArn => Str


=back

Each argument is described in detail in: L<Paws::WorkLink::DescribeIdentityProviderConfiguration>

Returns: a L<Paws::WorkLink::DescribeIdentityProviderConfigurationResponse> instance

Describes the identity provider configuration of the specified fleet.


=head2 DescribeWebsiteCertificateAuthority

=over

=item FleetArn => Str

=item WebsiteCaId => Str


=back

Each argument is described in detail in: L<Paws::WorkLink::DescribeWebsiteCertificateAuthority>

Returns: a L<Paws::WorkLink::DescribeWebsiteCertificateAuthorityResponse> instance

Provides information about the certificate authority.


=head2 DisassociateWebsiteCertificateAuthority

=over

=item FleetArn => Str

=item WebsiteCaId => Str


=back

Each argument is described in detail in: L<Paws::WorkLink::DisassociateWebsiteCertificateAuthority>

Returns: a L<Paws::WorkLink::DisassociateWebsiteCertificateAuthorityResponse> instance

Removes a certificate authority (CA).


=head2 ListDevices

=over

=item FleetArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkLink::ListDevices>

Returns: a L<Paws::WorkLink::ListDevicesResponse> instance

Retrieves a list of devices registered with the specified fleet.


=head2 ListFleets

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkLink::ListFleets>

Returns: a L<Paws::WorkLink::ListFleetsResponse> instance

Retrieves a list of fleets for the current account and Region.


=head2 ListWebsiteCertificateAuthorities

=over

=item FleetArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkLink::ListWebsiteCertificateAuthorities>

Returns: a L<Paws::WorkLink::ListWebsiteCertificateAuthoritiesResponse> instance

Retrieves a list of certificate authorities added for the current
account and Region.


=head2 SignOutUser

=over

=item FleetArn => Str

=item Username => Str


=back

Each argument is described in detail in: L<Paws::WorkLink::SignOutUser>

Returns: a L<Paws::WorkLink::SignOutUserResponse> instance

Signs the user out from all of their devices. The user can sign in
again if they have valid credentials.


=head2 UpdateAuditStreamConfiguration

=over

=item FleetArn => Str

=item [AuditStreamArn => Str]


=back

Each argument is described in detail in: L<Paws::WorkLink::UpdateAuditStreamConfiguration>

Returns: a L<Paws::WorkLink::UpdateAuditStreamConfigurationResponse> instance

Updates the audit stream configuration for the fleet.


=head2 UpdateCompanyNetworkConfiguration

=over

=item FleetArn => Str

=item SecurityGroupIds => ArrayRef[Str|Undef]

=item SubnetIds => ArrayRef[Str|Undef]

=item VpcId => Str


=back

Each argument is described in detail in: L<Paws::WorkLink::UpdateCompanyNetworkConfiguration>

Returns: a L<Paws::WorkLink::UpdateCompanyNetworkConfigurationResponse> instance

Updates the company network configuration for the fleet.


=head2 UpdateDevicePolicyConfiguration

=over

=item FleetArn => Str

=item [DeviceCaCertificate => Str]


=back

Each argument is described in detail in: L<Paws::WorkLink::UpdateDevicePolicyConfiguration>

Returns: a L<Paws::WorkLink::UpdateDevicePolicyConfigurationResponse> instance

Updates the device policy configuration for the fleet.


=head2 UpdateFleetMetadata

=over

=item FleetArn => Str

=item [DisplayName => Str]

=item [OptimizeForEndUserLocation => Bool]


=back

Each argument is described in detail in: L<Paws::WorkLink::UpdateFleetMetadata>

Returns: a L<Paws::WorkLink::UpdateFleetMetadataResponse> instance

Updates fleet metadata, such as DisplayName.


=head2 UpdateIdentityProviderConfiguration

=over

=item FleetArn => Str

=item IdentityProviderType => Str

=item [IdentityProviderSamlMetadata => Str]


=back

Each argument is described in detail in: L<Paws::WorkLink::UpdateIdentityProviderConfiguration>

Returns: a L<Paws::WorkLink::UpdateIdentityProviderConfigurationResponse> instance

Updates the identity provider configuration for the fleet.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

