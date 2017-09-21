package Paws::Greengrass;
  use Moose;
  sub service { 'greengrass' }
  sub version { '2017-06-07' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub AssociateRoleToGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::AssociateRoleToGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateServiceRoleToAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::AssociateServiceRoleToAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCoreDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateCoreDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCoreDefinitionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateCoreDefinitionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeviceDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateDeviceDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeviceDefinitionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateDeviceDefinitionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFunctionDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateFunctionDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFunctionDefinitionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateFunctionDefinitionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroupCertificateAuthority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateGroupCertificateAuthority', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroupVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateGroupVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLoggerDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateLoggerDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLoggerDefinitionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateLoggerDefinitionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubscriptionDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateSubscriptionDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubscriptionDefinitionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::CreateSubscriptionDefinitionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCoreDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::DeleteCoreDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeviceDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::DeleteDeviceDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunctionDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::DeleteFunctionDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLoggerDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::DeleteLoggerDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubscriptionDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::DeleteSubscriptionDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateRoleFromGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::DisassociateRoleFromGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateServiceRoleFromAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::DisassociateServiceRoleFromAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssociatedRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetAssociatedRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnectivityInfo {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetConnectivityInfo', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCoreDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetCoreDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCoreDefinitionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetCoreDefinitionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeploymentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetDeploymentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeviceDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetDeviceDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeviceDefinitionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetDeviceDefinitionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunctionDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetFunctionDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunctionDefinitionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetFunctionDefinitionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroupCertificateAuthority {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetGroupCertificateAuthority', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroupCertificateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetGroupCertificateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroupVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetGroupVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoggerDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetLoggerDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoggerDefinitionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetLoggerDefinitionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceRoleForAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetServiceRoleForAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSubscriptionDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetSubscriptionDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSubscriptionDefinitionVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::GetSubscriptionDefinitionVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCoreDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListCoreDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCoreDefinitionVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListCoreDefinitionVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeviceDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListDeviceDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeviceDefinitionVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListDeviceDefinitionVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFunctionDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListFunctionDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFunctionDefinitionVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListFunctionDefinitionVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupCertificateAuthorities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListGroupCertificateAuthorities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListGroupVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLoggerDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListLoggerDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLoggerDefinitionVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListLoggerDefinitionVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubscriptionDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListSubscriptionDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubscriptionDefinitionVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ListSubscriptionDefinitionVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::ResetDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnectivityInfo {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::UpdateConnectivityInfo', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCoreDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::UpdateCoreDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeviceDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::UpdateDeviceDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunctionDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::UpdateFunctionDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::UpdateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroupCertificateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::UpdateGroupCertificateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLoggerDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::UpdateLoggerDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubscriptionDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Greengrass::UpdateSubscriptionDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateRoleToGroup AssociateServiceRoleToAccount CreateCoreDefinition CreateCoreDefinitionVersion CreateDeployment CreateDeviceDefinition CreateDeviceDefinitionVersion CreateFunctionDefinition CreateFunctionDefinitionVersion CreateGroup CreateGroupCertificateAuthority CreateGroupVersion CreateLoggerDefinition CreateLoggerDefinitionVersion CreateSubscriptionDefinition CreateSubscriptionDefinitionVersion DeleteCoreDefinition DeleteDeviceDefinition DeleteFunctionDefinition DeleteGroup DeleteLoggerDefinition DeleteSubscriptionDefinition DisassociateRoleFromGroup DisassociateServiceRoleFromAccount GetAssociatedRole GetConnectivityInfo GetCoreDefinition GetCoreDefinitionVersion GetDeploymentStatus GetDeviceDefinition GetDeviceDefinitionVersion GetFunctionDefinition GetFunctionDefinitionVersion GetGroup GetGroupCertificateAuthority GetGroupCertificateConfiguration GetGroupVersion GetLoggerDefinition GetLoggerDefinitionVersion GetServiceRoleForAccount GetSubscriptionDefinition GetSubscriptionDefinitionVersion ListCoreDefinitions ListCoreDefinitionVersions ListDeployments ListDeviceDefinitions ListDeviceDefinitionVersions ListFunctionDefinitions ListFunctionDefinitionVersions ListGroupCertificateAuthorities ListGroups ListGroupVersions ListLoggerDefinitions ListLoggerDefinitionVersions ListSubscriptionDefinitions ListSubscriptionDefinitionVersions ResetDeployments UpdateConnectivityInfo UpdateCoreDefinition UpdateDeviceDefinition UpdateFunctionDefinition UpdateGroup UpdateGroupCertificateConfiguration UpdateLoggerDefinition UpdateSubscriptionDefinition / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass - Perl Interface to AWS AWS Greengrass

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Greengrass');
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

AWS Greengrass seamlessly extends AWS onto physical devices so they can
act locally on the data they generate, while still using the cloud for
management, analytics, and durable storage. AWS Greengrass ensures your
devices can respond quickly to local events and operate with
intermittent connectivity. AWS Greengrass minimizes the cost of
transmitting data to the cloud by allowing you to author AWS Lambda
functions that execute locally.

=head1 METHODS

=head2 AssociateRoleToGroup(GroupId => Str, [RoleArn => Str])

Each argument is described in detail in: L<Paws::Greengrass::AssociateRoleToGroup>

Returns: a L<Paws::Greengrass::AssociateRoleToGroupResponse> instance

  Associates a role with a group. The role will be used by the AWS
Greengrass core in order to access AWS cloud services. The role's
permissions will allow Greengrass core Lambda functions to perform
actions against the cloud.


=head2 AssociateServiceRoleToAccount([RoleArn => Str])

Each argument is described in detail in: L<Paws::Greengrass::AssociateServiceRoleToAccount>

Returns: a L<Paws::Greengrass::AssociateServiceRoleToAccountResponse> instance

  Associates a role which is used by AWS Greengrass. AWS Greengrass uses
the role to access your Lambda functions and AWS IoT resources. This is
necessary for deployments to succeed. It needs to have minimum
permissions in policy ``AWSGreengrassResourceAccessRolePolicy``


=head2 CreateCoreDefinition([AmznClientToken => Str, InitialVersion => L<Paws::Greengrass::CoreDefinitionVersion>, Name => Str])

Each argument is described in detail in: L<Paws::Greengrass::CreateCoreDefinition>

Returns: a L<Paws::Greengrass::CreateCoreDefinitionResponse> instance

  Creates a core definition. You may optionally provide the initial
version of the core definition or use ''CreateCoreDefinitionVersion''
at a later time. AWS Greengrass Groups must each contain exactly 1 AWS
Greengrass Core.


=head2 CreateCoreDefinitionVersion(CoreDefinitionId => Str, [AmznClientToken => Str, Cores => ArrayRef[L<Paws::Greengrass::Core>]])

Each argument is described in detail in: L<Paws::Greengrass::CreateCoreDefinitionVersion>

Returns: a L<Paws::Greengrass::CreateCoreDefinitionVersionResponse> instance

  Creates a version of a core definition that has already been defined.
AWS Greengrass Groups must each contain exactly 1 AWS Greengrass Core.


=head2 CreateDeployment(GroupId => Str, [AmznClientToken => Str, DeploymentId => Str, DeploymentType => Str, GroupVersionId => Str])

Each argument is described in detail in: L<Paws::Greengrass::CreateDeployment>

Returns: a L<Paws::Greengrass::CreateDeploymentResponse> instance

  Creates a deployment.


=head2 CreateDeviceDefinition([AmznClientToken => Str, InitialVersion => L<Paws::Greengrass::DeviceDefinitionVersion>, Name => Str])

Each argument is described in detail in: L<Paws::Greengrass::CreateDeviceDefinition>

Returns: a L<Paws::Greengrass::CreateDeviceDefinitionResponse> instance

  Creates a device definition. You may optinally provide the initial
version of the device definition or use
``CreateDeviceDefinitionVersion`` at a later time.


=head2 CreateDeviceDefinitionVersion(DeviceDefinitionId => Str, [AmznClientToken => Str, Devices => ArrayRef[L<Paws::Greengrass::Device>]])

Each argument is described in detail in: L<Paws::Greengrass::CreateDeviceDefinitionVersion>

Returns: a L<Paws::Greengrass::CreateDeviceDefinitionVersionResponse> instance

  Creates a version of a device definition that has already been defined.


=head2 CreateFunctionDefinition([AmznClientToken => Str, InitialVersion => L<Paws::Greengrass::FunctionDefinitionVersion>, Name => Str])

Each argument is described in detail in: L<Paws::Greengrass::CreateFunctionDefinition>

Returns: a L<Paws::Greengrass::CreateFunctionDefinitionResponse> instance

  Creates a Lambda function definition which contains a list of Lambda
functions and their configurations to be used in a group. You can
create an initial version of the definition by providing a list of
Lambda functions and their configurations now, or use
``CreateFunctionDefinitionVersion`` later.


=head2 CreateFunctionDefinitionVersion(FunctionDefinitionId => Str, [AmznClientToken => Str, Functions => ArrayRef[L<Paws::Greengrass::Function>]])

Each argument is described in detail in: L<Paws::Greengrass::CreateFunctionDefinitionVersion>

Returns: a L<Paws::Greengrass::CreateFunctionDefinitionVersionResponse> instance

  Create a version of a Lambda function definition that has already been
defined.


=head2 CreateGroup([AmznClientToken => Str, InitialVersion => L<Paws::Greengrass::GroupVersion>, Name => Str])

Each argument is described in detail in: L<Paws::Greengrass::CreateGroup>

Returns: a L<Paws::Greengrass::CreateGroupResponse> instance

  Creates a group. You may optionally provide the initial version of the
group or use ''CreateGroupVersion'' at a later time.


=head2 CreateGroupCertificateAuthority(GroupId => Str, [AmznClientToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::CreateGroupCertificateAuthority>

Returns: a L<Paws::Greengrass::CreateGroupCertificateAuthorityResponse> instance

  Creates a CA for the group. If a CA already exists, it will rotate the
existing CA.


=head2 CreateGroupVersion(GroupId => Str, [AmznClientToken => Str, CoreDefinitionVersionArn => Str, DeviceDefinitionVersionArn => Str, FunctionDefinitionVersionArn => Str, LoggerDefinitionVersionArn => Str, SubscriptionDefinitionVersionArn => Str])

Each argument is described in detail in: L<Paws::Greengrass::CreateGroupVersion>

Returns: a L<Paws::Greengrass::CreateGroupVersionResponse> instance

  Creates a version of a group which has already been defined.


=head2 CreateLoggerDefinition([AmznClientToken => Str, InitialVersion => L<Paws::Greengrass::LoggerDefinitionVersion>, Name => Str])

Each argument is described in detail in: L<Paws::Greengrass::CreateLoggerDefinition>

Returns: a L<Paws::Greengrass::CreateLoggerDefinitionResponse> instance

  Creates a logger definition. You may optionally provide the initial
version of the logger definition or use
``CreateLoggerDefinitionVersion`` at a later time.


=head2 CreateLoggerDefinitionVersion(LoggerDefinitionId => Str, [AmznClientToken => Str, Loggers => ArrayRef[L<Paws::Greengrass::Logger>]])

Each argument is described in detail in: L<Paws::Greengrass::CreateLoggerDefinitionVersion>

Returns: a L<Paws::Greengrass::CreateLoggerDefinitionVersionResponse> instance

  Creates a version of a logger definition that has already been defined.


=head2 CreateSubscriptionDefinition([AmznClientToken => Str, InitialVersion => L<Paws::Greengrass::SubscriptionDefinitionVersion>, Name => Str])

Each argument is described in detail in: L<Paws::Greengrass::CreateSubscriptionDefinition>

Returns: a L<Paws::Greengrass::CreateSubscriptionDefinitionResponse> instance

  Creates a subscription definition. You may optionally provide the
initial version of the subscription definition or use
``CreateSubscriptionDefinitionVersion`` at a later time.


=head2 CreateSubscriptionDefinitionVersion(SubscriptionDefinitionId => Str, [AmznClientToken => Str, Subscriptions => ArrayRef[L<Paws::Greengrass::Subscription>]])

Each argument is described in detail in: L<Paws::Greengrass::CreateSubscriptionDefinitionVersion>

Returns: a L<Paws::Greengrass::CreateSubscriptionDefinitionVersionResponse> instance

  Creates a version of a subscription definition which has already been
defined.


=head2 DeleteCoreDefinition(CoreDefinitionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::DeleteCoreDefinition>

Returns: a L<Paws::Greengrass::DeleteCoreDefinitionResponse> instance

  Deletes a core definition. The core definition must not have been used
in a deployment.


=head2 DeleteDeviceDefinition(DeviceDefinitionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::DeleteDeviceDefinition>

Returns: a L<Paws::Greengrass::DeleteDeviceDefinitionResponse> instance

  Deletes a device definition. The device definition must not have been
used in a deployment.


=head2 DeleteFunctionDefinition(FunctionDefinitionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::DeleteFunctionDefinition>

Returns: a L<Paws::Greengrass::DeleteFunctionDefinitionResponse> instance

  Deletes a Lambda function definition. The Lambda function definition
must not have been used in a deployment.


=head2 DeleteGroup(GroupId => Str)

Each argument is described in detail in: L<Paws::Greengrass::DeleteGroup>

Returns: a L<Paws::Greengrass::DeleteGroupResponse> instance

  Deletes a group. The group must not have been used in deployment.


=head2 DeleteLoggerDefinition(LoggerDefinitionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::DeleteLoggerDefinition>

Returns: a L<Paws::Greengrass::DeleteLoggerDefinitionResponse> instance

  Deletes a logger definition. The logger definition must not have been
used in a deployment.


=head2 DeleteSubscriptionDefinition(SubscriptionDefinitionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::DeleteSubscriptionDefinition>

Returns: a L<Paws::Greengrass::DeleteSubscriptionDefinitionResponse> instance

  Deletes a subscription definition. The subscription definition must not
have been used in a deployment.


=head2 DisassociateRoleFromGroup(GroupId => Str)

Each argument is described in detail in: L<Paws::Greengrass::DisassociateRoleFromGroup>

Returns: a L<Paws::Greengrass::DisassociateRoleFromGroupResponse> instance

  Disassociates the role from a group.


=head2 DisassociateServiceRoleFromAccount()

Each argument is described in detail in: L<Paws::Greengrass::DisassociateServiceRoleFromAccount>

Returns: a L<Paws::Greengrass::DisassociateServiceRoleFromAccountResponse> instance

  Disassociates the service role from the account. Without a service
role, deployments will not work.


=head2 GetAssociatedRole(GroupId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetAssociatedRole>

Returns: a L<Paws::Greengrass::GetAssociatedRoleResponse> instance

  Retrieves the role associated with a particular group.


=head2 GetConnectivityInfo(ThingName => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetConnectivityInfo>

Returns: a L<Paws::Greengrass::GetConnectivityInfoResponse> instance

  Retrieves the connectivity information for a core.


=head2 GetCoreDefinition(CoreDefinitionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetCoreDefinition>

Returns: a L<Paws::Greengrass::GetCoreDefinitionResponse> instance

  Retrieves information about a core definition version.


=head2 GetCoreDefinitionVersion(CoreDefinitionId => Str, CoreDefinitionVersionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetCoreDefinitionVersion>

Returns: a L<Paws::Greengrass::GetCoreDefinitionVersionResponse> instance

  Retrieves information about a core definition version.


=head2 GetDeploymentStatus(DeploymentId => Str, GroupId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetDeploymentStatus>

Returns: a L<Paws::Greengrass::GetDeploymentStatusResponse> instance

  Returns the status of a deployment.


=head2 GetDeviceDefinition(DeviceDefinitionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetDeviceDefinition>

Returns: a L<Paws::Greengrass::GetDeviceDefinitionResponse> instance

  Retrieves information about a device definition.


=head2 GetDeviceDefinitionVersion(DeviceDefinitionId => Str, DeviceDefinitionVersionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetDeviceDefinitionVersion>

Returns: a L<Paws::Greengrass::GetDeviceDefinitionVersionResponse> instance

  Retrieves information about a device definition version.


=head2 GetFunctionDefinition(FunctionDefinitionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetFunctionDefinition>

Returns: a L<Paws::Greengrass::GetFunctionDefinitionResponse> instance

  Retrieves information about a Lambda function definition, such as its
creation time and latest version.


=head2 GetFunctionDefinitionVersion(FunctionDefinitionId => Str, FunctionDefinitionVersionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetFunctionDefinitionVersion>

Returns: a L<Paws::Greengrass::GetFunctionDefinitionVersionResponse> instance

  Retrieves information about a Lambda function definition version, such
as which Lambda functions are included in the version and their
configurations.


=head2 GetGroup(GroupId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetGroup>

Returns: a L<Paws::Greengrass::GetGroupResponse> instance

  Retrieves information about a group.


=head2 GetGroupCertificateAuthority(CertificateAuthorityId => Str, GroupId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetGroupCertificateAuthority>

Returns: a L<Paws::Greengrass::GetGroupCertificateAuthorityResponse> instance

  Retreives the CA associated with a group. Returns the public key of the
CA.


=head2 GetGroupCertificateConfiguration(GroupId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetGroupCertificateConfiguration>

Returns: a L<Paws::Greengrass::GetGroupCertificateConfigurationResponse> instance

  Retrieves the current configuration for the CA used by the group.


=head2 GetGroupVersion(GroupId => Str, GroupVersionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetGroupVersion>

Returns: a L<Paws::Greengrass::GetGroupVersionResponse> instance

  Retrieves information about a group version.


=head2 GetLoggerDefinition(LoggerDefinitionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetLoggerDefinition>

Returns: a L<Paws::Greengrass::GetLoggerDefinitionResponse> instance

  Retrieves information about a logger definition.


=head2 GetLoggerDefinitionVersion(LoggerDefinitionId => Str, LoggerDefinitionVersionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetLoggerDefinitionVersion>

Returns: a L<Paws::Greengrass::GetLoggerDefinitionVersionResponse> instance

  Retrieves information about a logger definition version.


=head2 GetServiceRoleForAccount()

Each argument is described in detail in: L<Paws::Greengrass::GetServiceRoleForAccount>

Returns: a L<Paws::Greengrass::GetServiceRoleForAccountResponse> instance

  Retrieves the service role that is attached to the account.


=head2 GetSubscriptionDefinition(SubscriptionDefinitionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetSubscriptionDefinition>

Returns: a L<Paws::Greengrass::GetSubscriptionDefinitionResponse> instance

  Retrieves information about a subscription definition.


=head2 GetSubscriptionDefinitionVersion(SubscriptionDefinitionId => Str, SubscriptionDefinitionVersionId => Str)

Each argument is described in detail in: L<Paws::Greengrass::GetSubscriptionDefinitionVersion>

Returns: a L<Paws::Greengrass::GetSubscriptionDefinitionVersionResponse> instance

  Retrieves information about a subscription definition version.


=head2 ListCoreDefinitions([MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::ListCoreDefinitions>

Returns: a L<Paws::Greengrass::ListCoreDefinitionsResponse> instance

  Retrieves a list of core definitions.


=head2 ListCoreDefinitionVersions(CoreDefinitionId => Str, [MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::ListCoreDefinitionVersions>

Returns: a L<Paws::Greengrass::ListCoreDefinitionVersionsResponse> instance

  Lists versions of a core definition.


=head2 ListDeployments(GroupId => Str, [MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::ListDeployments>

Returns: a L<Paws::Greengrass::ListDeploymentsResponse> instance

  Returns a history of deployments for the group.


=head2 ListDeviceDefinitions([MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::ListDeviceDefinitions>

Returns: a L<Paws::Greengrass::ListDeviceDefinitionsResponse> instance

  Retrieves a list of device definitions.


=head2 ListDeviceDefinitionVersions(DeviceDefinitionId => Str, [MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::ListDeviceDefinitionVersions>

Returns: a L<Paws::Greengrass::ListDeviceDefinitionVersionsResponse> instance

  Lists the versions of a device definition.


=head2 ListFunctionDefinitions([MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::ListFunctionDefinitions>

Returns: a L<Paws::Greengrass::ListFunctionDefinitionsResponse> instance

  Retrieves a list of Lambda function definitions.


=head2 ListFunctionDefinitionVersions(FunctionDefinitionId => Str, [MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::ListFunctionDefinitionVersions>

Returns: a L<Paws::Greengrass::ListFunctionDefinitionVersionsResponse> instance

  Lists the versions of a Lambda function definition.


=head2 ListGroupCertificateAuthorities(GroupId => Str)

Each argument is described in detail in: L<Paws::Greengrass::ListGroupCertificateAuthorities>

Returns: a L<Paws::Greengrass::ListGroupCertificateAuthoritiesResponse> instance

  Retrieves the current CAs for a group.


=head2 ListGroups([MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::ListGroups>

Returns: a L<Paws::Greengrass::ListGroupsResponse> instance

  Retrieves a list of groups.


=head2 ListGroupVersions(GroupId => Str, [MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::ListGroupVersions>

Returns: a L<Paws::Greengrass::ListGroupVersionsResponse> instance

  List the versions of a group.


=head2 ListLoggerDefinitions([MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::ListLoggerDefinitions>

Returns: a L<Paws::Greengrass::ListLoggerDefinitionsResponse> instance

  Retrieves a list of logger definitions.


=head2 ListLoggerDefinitionVersions(LoggerDefinitionId => Str, [MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::ListLoggerDefinitionVersions>

Returns: a L<Paws::Greengrass::ListLoggerDefinitionVersionsResponse> instance

  Lists the versions of a logger definition.


=head2 ListSubscriptionDefinitions([MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::ListSubscriptionDefinitions>

Returns: a L<Paws::Greengrass::ListSubscriptionDefinitionsResponse> instance

  Retrieves a list of subscription definitions.


=head2 ListSubscriptionDefinitionVersions(SubscriptionDefinitionId => Str, [MaxResults => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::Greengrass::ListSubscriptionDefinitionVersions>

Returns: a L<Paws::Greengrass::ListSubscriptionDefinitionVersionsResponse> instance

  Lists the versions of a subscription definition.


=head2 ResetDeployments(GroupId => Str, [AmznClientToken => Str, Force => Bool])

Each argument is described in detail in: L<Paws::Greengrass::ResetDeployments>

Returns: a L<Paws::Greengrass::ResetDeploymentsResponse> instance

  Resets a group's deployments.


=head2 UpdateConnectivityInfo(ThingName => Str, [ConnectivityInfo => ArrayRef[L<Paws::Greengrass::ConnectivityInfo>]])

Each argument is described in detail in: L<Paws::Greengrass::UpdateConnectivityInfo>

Returns: a L<Paws::Greengrass::UpdateConnectivityInfoResponse> instance

  Updates the connectivity information for the core. Any devices that
belong to the group which has this core will receive this information
in order to find the location of the core and connect to it.


=head2 UpdateCoreDefinition(CoreDefinitionId => Str, [Name => Str])

Each argument is described in detail in: L<Paws::Greengrass::UpdateCoreDefinition>

Returns: a L<Paws::Greengrass::UpdateCoreDefinitionResponse> instance

  Updates a core definition.


=head2 UpdateDeviceDefinition(DeviceDefinitionId => Str, [Name => Str])

Each argument is described in detail in: L<Paws::Greengrass::UpdateDeviceDefinition>

Returns: a L<Paws::Greengrass::UpdateDeviceDefinitionResponse> instance

  Updates a device definition.


=head2 UpdateFunctionDefinition(FunctionDefinitionId => Str, [Name => Str])

Each argument is described in detail in: L<Paws::Greengrass::UpdateFunctionDefinition>

Returns: a L<Paws::Greengrass::UpdateFunctionDefinitionResponse> instance

  Updates a Lambda function definition.


=head2 UpdateGroup(GroupId => Str, [Name => Str])

Each argument is described in detail in: L<Paws::Greengrass::UpdateGroup>

Returns: a L<Paws::Greengrass::UpdateGroupResponse> instance

  Updates a group.


=head2 UpdateGroupCertificateConfiguration(GroupId => Str, [CertificateExpiryInMilliseconds => Str])

Each argument is described in detail in: L<Paws::Greengrass::UpdateGroupCertificateConfiguration>

Returns: a L<Paws::Greengrass::UpdateGroupCertificateConfigurationResponse> instance

  Updates the Cert expiry time for a group.


=head2 UpdateLoggerDefinition(LoggerDefinitionId => Str, [Name => Str])

Each argument is described in detail in: L<Paws::Greengrass::UpdateLoggerDefinition>

Returns: a L<Paws::Greengrass::UpdateLoggerDefinitionResponse> instance

  Updates a logger definition.


=head2 UpdateSubscriptionDefinition(SubscriptionDefinitionId => Str, [Name => Str])

Each argument is described in detail in: L<Paws::Greengrass::UpdateSubscriptionDefinition>

Returns: a L<Paws::Greengrass::UpdateSubscriptionDefinitionResponse> instance

  Updates a subscription definition.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

