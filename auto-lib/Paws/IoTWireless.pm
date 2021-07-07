package Paws::IoTWireless;
  use Moose;
  sub service { 'api.iotwireless' }
  sub signing_name { 'iotwireless' }
  sub version { '2020-11-22' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateAwsAccountWithPartnerAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::AssociateAwsAccountWithPartnerAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateWirelessDeviceWithThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::AssociateWirelessDeviceWithThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateWirelessGatewayWithCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::AssociateWirelessGatewayWithCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateWirelessGatewayWithThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::AssociateWirelessGatewayWithThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeviceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateDeviceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateServiceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWirelessDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateWirelessDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWirelessGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateWirelessGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWirelessGatewayTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateWirelessGatewayTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWirelessGatewayTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::CreateWirelessGatewayTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeviceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteDeviceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteServiceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWirelessDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteWirelessDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWirelessGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteWirelessGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWirelessGatewayTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteWirelessGatewayTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWirelessGatewayTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DeleteWirelessGatewayTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAwsAccountFromPartnerAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DisassociateAwsAccountFromPartnerAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateWirelessDeviceFromThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DisassociateWirelessDeviceFromThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateWirelessGatewayFromCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DisassociateWirelessGatewayFromCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateWirelessGatewayFromThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::DisassociateWirelessGatewayFromThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeviceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetDeviceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLogLevelsByResourceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetLogLevelsByResourceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPartnerAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetPartnerAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceLogLevel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetResourceLogLevel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetServiceEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetServiceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessDeviceStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessDeviceStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessGatewayCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessGatewayCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessGatewayFirmwareInformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessGatewayFirmwareInformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessGatewayStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessGatewayStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessGatewayTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessGatewayTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWirelessGatewayTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::GetWirelessGatewayTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDestinations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListDestinations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeviceProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListDeviceProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPartnerAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListPartnerAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListServiceProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWirelessDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListWirelessDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWirelessGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListWirelessGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWirelessGatewayTaskDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ListWirelessGatewayTaskDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourceLogLevel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::PutResourceLogLevel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetAllResourceLogLevels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ResetAllResourceLogLevels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetResourceLogLevel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::ResetResourceLogLevel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendDataToWirelessDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::SendDataToWirelessDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestWirelessDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::TestWirelessDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLogLevelsByResourceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateLogLevelsByResourceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePartnerAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdatePartnerAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWirelessDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateWirelessDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWirelessGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTWireless::UpdateWirelessGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateAwsAccountWithPartnerAccount AssociateWirelessDeviceWithThing AssociateWirelessGatewayWithCertificate AssociateWirelessGatewayWithThing CreateDestination CreateDeviceProfile CreateServiceProfile CreateWirelessDevice CreateWirelessGateway CreateWirelessGatewayTask CreateWirelessGatewayTaskDefinition DeleteDestination DeleteDeviceProfile DeleteServiceProfile DeleteWirelessDevice DeleteWirelessGateway DeleteWirelessGatewayTask DeleteWirelessGatewayTaskDefinition DisassociateAwsAccountFromPartnerAccount DisassociateWirelessDeviceFromThing DisassociateWirelessGatewayFromCertificate DisassociateWirelessGatewayFromThing GetDestination GetDeviceProfile GetLogLevelsByResourceTypes GetPartnerAccount GetResourceLogLevel GetServiceEndpoint GetServiceProfile GetWirelessDevice GetWirelessDeviceStatistics GetWirelessGateway GetWirelessGatewayCertificate GetWirelessGatewayFirmwareInformation GetWirelessGatewayStatistics GetWirelessGatewayTask GetWirelessGatewayTaskDefinition ListDestinations ListDeviceProfiles ListPartnerAccounts ListServiceProfiles ListTagsForResource ListWirelessDevices ListWirelessGateways ListWirelessGatewayTaskDefinitions PutResourceLogLevel ResetAllResourceLogLevels ResetResourceLogLevel SendDataToWirelessDevice TagResource TestWirelessDevice UntagResource UpdateDestination UpdateLogLevelsByResourceTypes UpdatePartnerAccount UpdateWirelessDevice UpdateWirelessGateway / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless - Perl Interface to AWS AWS IoT Wireless

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTWireless');
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

AWS IoT Wireless API documentation

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless-2020-11-22>


=head1 METHODS

=head2 AssociateAwsAccountWithPartnerAccount

=over

=item Sidewalk => L<Paws::IoTWireless::SidewalkAccountInfo>

=item [ClientRequestToken => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::AssociateAwsAccountWithPartnerAccount>

Returns: a L<Paws::IoTWireless::AssociateAwsAccountWithPartnerAccountResponse> instance

Associates a partner account with your AWS account.


=head2 AssociateWirelessDeviceWithThing

=over

=item Id => Str

=item ThingArn => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::AssociateWirelessDeviceWithThing>

Returns: a L<Paws::IoTWireless::AssociateWirelessDeviceWithThingResponse> instance

Associates a wireless device with a thing.


=head2 AssociateWirelessGatewayWithCertificate

=over

=item Id => Str

=item IotCertificateId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::AssociateWirelessGatewayWithCertificate>

Returns: a L<Paws::IoTWireless::AssociateWirelessGatewayWithCertificateResponse> instance

Associates a wireless gateway with a certificate.


=head2 AssociateWirelessGatewayWithThing

=over

=item Id => Str

=item ThingArn => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::AssociateWirelessGatewayWithThing>

Returns: a L<Paws::IoTWireless::AssociateWirelessGatewayWithThingResponse> instance

Associates a wireless gateway with a thing.


=head2 CreateDestination

=over

=item Expression => Str

=item ExpressionType => Str

=item Name => Str

=item RoleArn => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateDestination>

Returns: a L<Paws::IoTWireless::CreateDestinationResponse> instance

Creates a new destination that maps a device message to an AWS IoT
rule.


=head2 CreateDeviceProfile

=over

=item [ClientRequestToken => Str]

=item [LoRaWAN => L<Paws::IoTWireless::LoRaWANDeviceProfile>]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateDeviceProfile>

Returns: a L<Paws::IoTWireless::CreateDeviceProfileResponse> instance

Creates a new device profile.


=head2 CreateServiceProfile

=over

=item [ClientRequestToken => Str]

=item [LoRaWAN => L<Paws::IoTWireless::LoRaWANServiceProfile>]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateServiceProfile>

Returns: a L<Paws::IoTWireless::CreateServiceProfileResponse> instance

Creates a new service profile.


=head2 CreateWirelessDevice

=over

=item DestinationName => Str

=item Type => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [LoRaWAN => L<Paws::IoTWireless::LoRaWANDevice>]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateWirelessDevice>

Returns: a L<Paws::IoTWireless::CreateWirelessDeviceResponse> instance

Provisions a wireless device.


=head2 CreateWirelessGateway

=over

=item LoRaWAN => L<Paws::IoTWireless::LoRaWANGateway>

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateWirelessGateway>

Returns: a L<Paws::IoTWireless::CreateWirelessGatewayResponse> instance

Provisions a wireless gateway.


=head2 CreateWirelessGatewayTask

=over

=item Id => Str

=item WirelessGatewayTaskDefinitionId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateWirelessGatewayTask>

Returns: a L<Paws::IoTWireless::CreateWirelessGatewayTaskResponse> instance

Creates a task for a wireless gateway.


=head2 CreateWirelessGatewayTaskDefinition

=over

=item AutoCreateTasks => Bool

=item [ClientRequestToken => Str]

=item [Name => Str]

=item [Tags => ArrayRef[L<Paws::IoTWireless::Tag>]]

=item [Update => L<Paws::IoTWireless::UpdateWirelessGatewayTaskCreate>]


=back

Each argument is described in detail in: L<Paws::IoTWireless::CreateWirelessGatewayTaskDefinition>

Returns: a L<Paws::IoTWireless::CreateWirelessGatewayTaskDefinitionResponse> instance

Creates a gateway task definition.


=head2 DeleteDestination

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteDestination>

Returns: a L<Paws::IoTWireless::DeleteDestinationResponse> instance

Deletes a destination.


=head2 DeleteDeviceProfile

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteDeviceProfile>

Returns: a L<Paws::IoTWireless::DeleteDeviceProfileResponse> instance

Deletes a device profile.


=head2 DeleteServiceProfile

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteServiceProfile>

Returns: a L<Paws::IoTWireless::DeleteServiceProfileResponse> instance

Deletes a service profile.


=head2 DeleteWirelessDevice

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteWirelessDevice>

Returns: a L<Paws::IoTWireless::DeleteWirelessDeviceResponse> instance

Deletes a wireless device.


=head2 DeleteWirelessGateway

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteWirelessGateway>

Returns: a L<Paws::IoTWireless::DeleteWirelessGatewayResponse> instance

Deletes a wireless gateway.


=head2 DeleteWirelessGatewayTask

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteWirelessGatewayTask>

Returns: a L<Paws::IoTWireless::DeleteWirelessGatewayTaskResponse> instance

Deletes a wireless gateway task.


=head2 DeleteWirelessGatewayTaskDefinition

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DeleteWirelessGatewayTaskDefinition>

Returns: a L<Paws::IoTWireless::DeleteWirelessGatewayTaskDefinitionResponse> instance

Deletes a wireless gateway task definition. Deleting this task
definition does not affect tasks that are currently in progress.


=head2 DisassociateAwsAccountFromPartnerAccount

=over

=item PartnerAccountId => Str

=item PartnerType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DisassociateAwsAccountFromPartnerAccount>

Returns: a L<Paws::IoTWireless::DisassociateAwsAccountFromPartnerAccountResponse> instance

Disassociates your AWS account from a partner account. If
C<PartnerAccountId> and C<PartnerType> are C<null>, disassociates your
AWS account from all partner accounts.


=head2 DisassociateWirelessDeviceFromThing

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DisassociateWirelessDeviceFromThing>

Returns: a L<Paws::IoTWireless::DisassociateWirelessDeviceFromThingResponse> instance

Disassociates a wireless device from its currently associated thing.


=head2 DisassociateWirelessGatewayFromCertificate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DisassociateWirelessGatewayFromCertificate>

Returns: a L<Paws::IoTWireless::DisassociateWirelessGatewayFromCertificateResponse> instance

Disassociates a wireless gateway from its currently associated
certificate.


=head2 DisassociateWirelessGatewayFromThing

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::DisassociateWirelessGatewayFromThing>

Returns: a L<Paws::IoTWireless::DisassociateWirelessGatewayFromThingResponse> instance

Disassociates a wireless gateway from its currently associated thing.


=head2 GetDestination

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetDestination>

Returns: a L<Paws::IoTWireless::GetDestinationResponse> instance

Gets information about a destination.


=head2 GetDeviceProfile

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetDeviceProfile>

Returns: a L<Paws::IoTWireless::GetDeviceProfileResponse> instance

Gets information about a device profile.


=head2 GetLogLevelsByResourceTypes






Each argument is described in detail in: L<Paws::IoTWireless::GetLogLevelsByResourceTypes>

Returns: a L<Paws::IoTWireless::GetLogLevelsByResourceTypesResponse> instance

Returns current default log-levels, or log levels by resource types,
could be for wireless device log options or wireless gateway log
options.


=head2 GetPartnerAccount

=over

=item PartnerAccountId => Str

=item PartnerType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetPartnerAccount>

Returns: a L<Paws::IoTWireless::GetPartnerAccountResponse> instance

Gets information about a partner account. If C<PartnerAccountId> and
C<PartnerType> are C<null>, returns all partner accounts.


=head2 GetResourceLogLevel

=over

=item ResourceIdentifier => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetResourceLogLevel>

Returns: a L<Paws::IoTWireless::GetResourceLogLevelResponse> instance

Fetches the log-level override if any for a given resource-ID and
resource-type, coulde be a wireless device or a wireless gateway.


=head2 GetServiceEndpoint

=over

=item [ServiceType => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetServiceEndpoint>

Returns: a L<Paws::IoTWireless::GetServiceEndpointResponse> instance

Gets the account-specific endpoint for Configuration and Update Server
(CUPS) protocol or LoRaWAN Network Server (LNS) connections.


=head2 GetServiceProfile

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetServiceProfile>

Returns: a L<Paws::IoTWireless::GetServiceProfileResponse> instance

Gets information about a service profile.


=head2 GetWirelessDevice

=over

=item Identifier => Str

=item IdentifierType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessDevice>

Returns: a L<Paws::IoTWireless::GetWirelessDeviceResponse> instance

Gets information about a wireless device.


=head2 GetWirelessDeviceStatistics

=over

=item WirelessDeviceId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessDeviceStatistics>

Returns: a L<Paws::IoTWireless::GetWirelessDeviceStatisticsResponse> instance

Gets operating information about a wireless device.


=head2 GetWirelessGateway

=over

=item Identifier => Str

=item IdentifierType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessGateway>

Returns: a L<Paws::IoTWireless::GetWirelessGatewayResponse> instance

Gets information about a wireless gateway.


=head2 GetWirelessGatewayCertificate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessGatewayCertificate>

Returns: a L<Paws::IoTWireless::GetWirelessGatewayCertificateResponse> instance

Gets the ID of the certificate that is currently associated with a
wireless gateway.


=head2 GetWirelessGatewayFirmwareInformation

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessGatewayFirmwareInformation>

Returns: a L<Paws::IoTWireless::GetWirelessGatewayFirmwareInformationResponse> instance

Gets the firmware version and other information about a wireless
gateway.


=head2 GetWirelessGatewayStatistics

=over

=item WirelessGatewayId => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessGatewayStatistics>

Returns: a L<Paws::IoTWireless::GetWirelessGatewayStatisticsResponse> instance

Gets operating information about a wireless gateway.


=head2 GetWirelessGatewayTask

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessGatewayTask>

Returns: a L<Paws::IoTWireless::GetWirelessGatewayTaskResponse> instance

Gets information about a wireless gateway task.


=head2 GetWirelessGatewayTaskDefinition

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::GetWirelessGatewayTaskDefinition>

Returns: a L<Paws::IoTWireless::GetWirelessGatewayTaskDefinitionResponse> instance

Gets information about a wireless gateway task definition.


=head2 ListDestinations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListDestinations>

Returns: a L<Paws::IoTWireless::ListDestinationsResponse> instance

Lists the destinations registered to your AWS account.


=head2 ListDeviceProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListDeviceProfiles>

Returns: a L<Paws::IoTWireless::ListDeviceProfilesResponse> instance

Lists the device profiles registered to your AWS account.


=head2 ListPartnerAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListPartnerAccounts>

Returns: a L<Paws::IoTWireless::ListPartnerAccountsResponse> instance

Lists the partner accounts associated with your AWS account.


=head2 ListServiceProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListServiceProfiles>

Returns: a L<Paws::IoTWireless::ListServiceProfilesResponse> instance

Lists the service profiles registered to your AWS account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListTagsForResource>

Returns: a L<Paws::IoTWireless::ListTagsForResourceResponse> instance

Lists the tags (metadata) you have assigned to the resource.


=head2 ListWirelessDevices

=over

=item [DestinationName => Str]

=item [DeviceProfileId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceProfileId => Str]

=item [WirelessDeviceType => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListWirelessDevices>

Returns: a L<Paws::IoTWireless::ListWirelessDevicesResponse> instance

Lists the wireless devices registered to your AWS account.


=head2 ListWirelessGateways

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListWirelessGateways>

Returns: a L<Paws::IoTWireless::ListWirelessGatewaysResponse> instance

Lists the wireless gateways registered to your AWS account.


=head2 ListWirelessGatewayTaskDefinitions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TaskDefinitionType => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::ListWirelessGatewayTaskDefinitions>

Returns: a L<Paws::IoTWireless::ListWirelessGatewayTaskDefinitionsResponse> instance

List the wireless gateway tasks definitions registered to your AWS
account.


=head2 PutResourceLogLevel

=over

=item LogLevel => Str

=item ResourceIdentifier => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::PutResourceLogLevel>

Returns: a L<Paws::IoTWireless::PutResourceLogLevelResponse> instance

Sets the log-level override for a resource-ID and resource-type, could
be a wireless gateway or a wireless device.


=head2 ResetAllResourceLogLevels






Each argument is described in detail in: L<Paws::IoTWireless::ResetAllResourceLogLevels>

Returns: a L<Paws::IoTWireless::ResetAllResourceLogLevelsResponse> instance

Remove log-level overrides if any for all resources (both wireless
devices and wireless gateways).


=head2 ResetResourceLogLevel

=over

=item ResourceIdentifier => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::ResetResourceLogLevel>

Returns: a L<Paws::IoTWireless::ResetResourceLogLevelResponse> instance

Remove log-level override if any for a specific resource-ID and
resource-type, could be a wireless device or a wireless gateway.


=head2 SendDataToWirelessDevice

=over

=item Id => Str

=item PayloadData => Str

=item TransmitMode => Int

=item [WirelessMetadata => L<Paws::IoTWireless::WirelessMetadata>]


=back

Each argument is described in detail in: L<Paws::IoTWireless::SendDataToWirelessDevice>

Returns: a L<Paws::IoTWireless::SendDataToWirelessDeviceResponse> instance

Sends a decrypted application data frame to a device.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::IoTWireless::Tag>]


=back

Each argument is described in detail in: L<Paws::IoTWireless::TagResource>

Returns: a L<Paws::IoTWireless::TagResourceResponse> instance

Adds a tag to a resource.


=head2 TestWirelessDevice

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTWireless::TestWirelessDevice>

Returns: a L<Paws::IoTWireless::TestWirelessDeviceResponse> instance

Simulates a provisioned device by sending an uplink data payload of
C<Hello>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UntagResource>

Returns: a L<Paws::IoTWireless::UntagResourceResponse> instance

Removes one or more tags from a resource.


=head2 UpdateDestination

=over

=item Name => Str

=item [Description => Str]

=item [Expression => Str]

=item [ExpressionType => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateDestination>

Returns: a L<Paws::IoTWireless::UpdateDestinationResponse> instance

Updates properties of a destination.


=head2 UpdateLogLevelsByResourceTypes

=over

=item [DefaultLogLevel => Str]

=item [WirelessDeviceLogOptions => ArrayRef[L<Paws::IoTWireless::WirelessDeviceLogOption>]]

=item [WirelessGatewayLogOptions => ArrayRef[L<Paws::IoTWireless::WirelessGatewayLogOption>]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateLogLevelsByResourceTypes>

Returns: a L<Paws::IoTWireless::UpdateLogLevelsByResourceTypesResponse> instance

Set default log level, or log levels by resource types, could be for
wireless device log options or wireless gateways log options. This is
to control the log messages that will be displayed in CloudWatch.


=head2 UpdatePartnerAccount

=over

=item PartnerAccountId => Str

=item PartnerType => Str

=item Sidewalk => L<Paws::IoTWireless::SidewalkUpdateAccount>


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdatePartnerAccount>

Returns: a L<Paws::IoTWireless::UpdatePartnerAccountResponse> instance

Updates properties of a partner account.


=head2 UpdateWirelessDevice

=over

=item Id => Str

=item [Description => Str]

=item [DestinationName => Str]

=item [LoRaWAN => L<Paws::IoTWireless::LoRaWANUpdateDevice>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateWirelessDevice>

Returns: a L<Paws::IoTWireless::UpdateWirelessDeviceResponse> instance

Updates properties of a wireless device.


=head2 UpdateWirelessGateway

=over

=item Id => Str

=item [Description => Str]

=item [JoinEuiFilters => ArrayRef[ArrayRef[Str|Undef]]]

=item [Name => Str]

=item [NetIdFilters => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::IoTWireless::UpdateWirelessGateway>

Returns: a L<Paws::IoTWireless::UpdateWirelessGatewayResponse> instance

Updates properties of a wireless gateway.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

