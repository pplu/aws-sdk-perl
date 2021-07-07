package Paws::Chime;
  use Moose;
  sub service { 'chime' }
  sub signing_name { 'chime' }
  sub version { '2018-05-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociatePhoneNumbersWithVoiceConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::AssociatePhoneNumbersWithVoiceConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociatePhoneNumbersWithVoiceConnectorGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::AssociatePhoneNumbersWithVoiceConnectorGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociatePhoneNumberWithUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::AssociatePhoneNumberWithUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSigninDelegateGroupsWithAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::AssociateSigninDelegateGroupsWithAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchCreateAttendee {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchCreateAttendee', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchCreateChannelMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchCreateChannelMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchCreateRoomMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchCreateRoomMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeletePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchDeletePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchSuspendUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchSuspendUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUnsuspendUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchUnsuspendUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdatePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchUpdatePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchUpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAppInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateAppInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAppInstanceAdmin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateAppInstanceAdmin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAttendee {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateAttendee', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannelBan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateChannelBan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannelMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateChannelMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannelModerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateChannelModerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMeeting {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateMeeting', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMeetingDialOut {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateMeetingDialOut', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMeetingWithAttendees {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateMeetingWithAttendees', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePhoneNumberOrder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreatePhoneNumberOrder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProxySession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateProxySession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoomMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateRoomMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSipMediaApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateSipMediaApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSipMediaApplicationCall {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateSipMediaApplicationCall', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSipRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateSipRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVoiceConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateVoiceConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVoiceConnectorGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateVoiceConnectorGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteAppInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppInstanceAdmin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteAppInstanceAdmin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppInstanceStreamingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteAppInstanceStreamingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAttendee {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteAttendee', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannelBan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteChannelBan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannelMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteChannelMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannelMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteChannelMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannelModerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteChannelModerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteEventsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMeeting {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteMeeting', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeletePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProxySession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteProxySession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoomMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteRoomMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSipMediaApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteSipMediaApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSipRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteSipRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteVoiceConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorEmergencyCallingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteVoiceConnectorEmergencyCallingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteVoiceConnectorGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorOrigination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteVoiceConnectorOrigination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorProxy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteVoiceConnectorProxy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorStreamingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteVoiceConnectorStreamingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorTermination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteVoiceConnectorTermination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceConnectorTerminationCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteVoiceConnectorTerminationCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DescribeAppInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppInstanceAdmin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DescribeAppInstanceAdmin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DescribeAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DescribeChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannelBan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DescribeChannelBan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannelMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DescribeChannelMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannelMembershipForAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DescribeChannelMembershipForAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannelModeratedByAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DescribeChannelModeratedByAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannelModerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DescribeChannelModerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociatePhoneNumberFromUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DisassociatePhoneNumberFromUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociatePhoneNumbersFromVoiceConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DisassociatePhoneNumbersFromVoiceConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociatePhoneNumbersFromVoiceConnectorGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DisassociatePhoneNumbersFromVoiceConnectorGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateSigninDelegateGroupsFromAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DisassociateSigninDelegateGroupsFromAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAppInstanceRetentionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetAppInstanceRetentionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAppInstanceStreamingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetAppInstanceStreamingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAttendee {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetAttendee', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChannelMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetChannelMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetEventsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGlobalSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetGlobalSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMeeting {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetMeeting', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMessagingSessionEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetMessagingSessionEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetPhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPhoneNumberOrder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetPhoneNumberOrder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPhoneNumberSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetPhoneNumberSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProxySession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetProxySession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRetentionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetRetentionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSipMediaApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetSipMediaApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSipMediaApplicationLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetSipMediaApplicationLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSipRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetSipRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetVoiceConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorEmergencyCallingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetVoiceConnectorEmergencyCallingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetVoiceConnectorGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetVoiceConnectorLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorOrigination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetVoiceConnectorOrigination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorProxy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetVoiceConnectorProxy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorStreamingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetVoiceConnectorStreamingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorTermination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetVoiceConnectorTermination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceConnectorTerminationHealth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetVoiceConnectorTerminationHealth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InviteUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::InviteUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppInstanceAdmins {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListAppInstanceAdmins', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListAppInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppInstanceUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListAppInstanceUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttendees {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListAttendees', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttendeeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListAttendeeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListBots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelBans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListChannelBans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelMemberships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListChannelMemberships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelMembershipsForAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListChannelMembershipsForAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelMessages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListChannelMessages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelModerators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListChannelModerators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelsModeratedByAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListChannelsModeratedByAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMeetings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListMeetings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMeetingTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListMeetingTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPhoneNumberOrders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListPhoneNumberOrders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPhoneNumbers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListPhoneNumbers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProxySessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListProxySessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoomMemberships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListRoomMemberships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRooms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListRooms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSipMediaApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListSipMediaApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSipRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListSipRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSupportedPhoneNumberCountries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListSupportedPhoneNumberCountries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVoiceConnectorGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListVoiceConnectorGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVoiceConnectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListVoiceConnectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVoiceConnectorTerminationCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListVoiceConnectorTerminationCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LogoutUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::LogoutUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAppInstanceRetentionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutAppInstanceRetentionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAppInstanceStreamingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutAppInstanceStreamingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEventsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutEventsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRetentionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutRetentionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSipMediaApplicationLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutSipMediaApplicationLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorEmergencyCallingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutVoiceConnectorEmergencyCallingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutVoiceConnectorLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorOrigination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutVoiceConnectorOrigination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorProxy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutVoiceConnectorProxy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorStreamingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutVoiceConnectorStreamingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorTermination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutVoiceConnectorTermination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutVoiceConnectorTerminationCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutVoiceConnectorTerminationCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RedactChannelMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::RedactChannelMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RedactConversationMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::RedactConversationMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RedactRoomMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::RedactRoomMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegenerateSecurityToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::RegenerateSecurityToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetPersonalPIN {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ResetPersonalPIN', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestorePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::RestorePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchAvailablePhoneNumbers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::SearchAvailablePhoneNumbers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendChannelMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::SendChannelMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagAttendee {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::TagAttendee', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagMeeting {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::TagMeeting', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagAttendee {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UntagAttendee', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagMeeting {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UntagMeeting', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAppInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateAppInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAppInstanceUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateAppInstanceUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannelMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateChannelMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannelReadMarker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateChannelReadMarker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGlobalSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateGlobalSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdatePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePhoneNumberSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdatePhoneNumberSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProxySession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateProxySession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoomMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateRoomMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSipMediaApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateSipMediaApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSipMediaApplicationCall {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateSipMediaApplicationCall', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSipRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateSipRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVoiceConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateVoiceConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVoiceConnectorGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateVoiceConnectorGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccounts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Accounts }, @{ $next_result->Accounts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Accounts') foreach (@{ $result->Accounts });
        $result = $self->ListAccounts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Accounts') foreach (@{ $result->Accounts });
    }

    return undef
  }
  sub ListAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->ListUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }


  sub operations { qw/AssociatePhoneNumbersWithVoiceConnector AssociatePhoneNumbersWithVoiceConnectorGroup AssociatePhoneNumberWithUser AssociateSigninDelegateGroupsWithAccount BatchCreateAttendee BatchCreateChannelMembership BatchCreateRoomMembership BatchDeletePhoneNumber BatchSuspendUser BatchUnsuspendUser BatchUpdatePhoneNumber BatchUpdateUser CreateAccount CreateAppInstance CreateAppInstanceAdmin CreateAppInstanceUser CreateAttendee CreateBot CreateChannel CreateChannelBan CreateChannelMembership CreateChannelModerator CreateMeeting CreateMeetingDialOut CreateMeetingWithAttendees CreatePhoneNumberOrder CreateProxySession CreateRoom CreateRoomMembership CreateSipMediaApplication CreateSipMediaApplicationCall CreateSipRule CreateUser CreateVoiceConnector CreateVoiceConnectorGroup DeleteAccount DeleteAppInstance DeleteAppInstanceAdmin DeleteAppInstanceStreamingConfigurations DeleteAppInstanceUser DeleteAttendee DeleteChannel DeleteChannelBan DeleteChannelMembership DeleteChannelMessage DeleteChannelModerator DeleteEventsConfiguration DeleteMeeting DeletePhoneNumber DeleteProxySession DeleteRoom DeleteRoomMembership DeleteSipMediaApplication DeleteSipRule DeleteVoiceConnector DeleteVoiceConnectorEmergencyCallingConfiguration DeleteVoiceConnectorGroup DeleteVoiceConnectorOrigination DeleteVoiceConnectorProxy DeleteVoiceConnectorStreamingConfiguration DeleteVoiceConnectorTermination DeleteVoiceConnectorTerminationCredentials DescribeAppInstance DescribeAppInstanceAdmin DescribeAppInstanceUser DescribeChannel DescribeChannelBan DescribeChannelMembership DescribeChannelMembershipForAppInstanceUser DescribeChannelModeratedByAppInstanceUser DescribeChannelModerator DisassociatePhoneNumberFromUser DisassociatePhoneNumbersFromVoiceConnector DisassociatePhoneNumbersFromVoiceConnectorGroup DisassociateSigninDelegateGroupsFromAccount GetAccount GetAccountSettings GetAppInstanceRetentionSettings GetAppInstanceStreamingConfigurations GetAttendee GetBot GetChannelMessage GetEventsConfiguration GetGlobalSettings GetMeeting GetMessagingSessionEndpoint GetPhoneNumber GetPhoneNumberOrder GetPhoneNumberSettings GetProxySession GetRetentionSettings GetRoom GetSipMediaApplication GetSipMediaApplicationLoggingConfiguration GetSipRule GetUser GetUserSettings GetVoiceConnector GetVoiceConnectorEmergencyCallingConfiguration GetVoiceConnectorGroup GetVoiceConnectorLoggingConfiguration GetVoiceConnectorOrigination GetVoiceConnectorProxy GetVoiceConnectorStreamingConfiguration GetVoiceConnectorTermination GetVoiceConnectorTerminationHealth InviteUsers ListAccounts ListAppInstanceAdmins ListAppInstances ListAppInstanceUsers ListAttendees ListAttendeeTags ListBots ListChannelBans ListChannelMemberships ListChannelMembershipsForAppInstanceUser ListChannelMessages ListChannelModerators ListChannels ListChannelsModeratedByAppInstanceUser ListMeetings ListMeetingTags ListPhoneNumberOrders ListPhoneNumbers ListProxySessions ListRoomMemberships ListRooms ListSipMediaApplications ListSipRules ListSupportedPhoneNumberCountries ListTagsForResource ListUsers ListVoiceConnectorGroups ListVoiceConnectors ListVoiceConnectorTerminationCredentials LogoutUser PutAppInstanceRetentionSettings PutAppInstanceStreamingConfigurations PutEventsConfiguration PutRetentionSettings PutSipMediaApplicationLoggingConfiguration PutVoiceConnectorEmergencyCallingConfiguration PutVoiceConnectorLoggingConfiguration PutVoiceConnectorOrigination PutVoiceConnectorProxy PutVoiceConnectorStreamingConfiguration PutVoiceConnectorTermination PutVoiceConnectorTerminationCredentials RedactChannelMessage RedactConversationMessage RedactRoomMessage RegenerateSecurityToken ResetPersonalPIN RestorePhoneNumber SearchAvailablePhoneNumbers SendChannelMessage TagAttendee TagMeeting TagResource UntagAttendee UntagMeeting UntagResource UpdateAccount UpdateAccountSettings UpdateAppInstance UpdateAppInstanceUser UpdateBot UpdateChannel UpdateChannelMessage UpdateChannelReadMarker UpdateGlobalSettings UpdatePhoneNumber UpdatePhoneNumberSettings UpdateProxySession UpdateRoom UpdateRoomMembership UpdateSipMediaApplication UpdateSipMediaApplicationCall UpdateSipRule UpdateUser UpdateUserSettings UpdateVoiceConnector UpdateVoiceConnectorGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime - Perl Interface to AWS Amazon Chime

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Chime');
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

The Amazon Chime API (application programming interface) is designed
for developers to perform key tasks, such as creating and managing
Amazon Chime accounts, users, and Voice Connectors. This guide provides
detailed information about the Amazon Chime API, including operations,
types, inputs and outputs, and error codes. It also includes some
server-side API actions to use with the Amazon Chime SDK. For more
information about the Amazon Chime SDK, see Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide>.

You can use an AWS SDK, the AWS Command Line Interface (AWS CLI), or
the REST API to make API calls. We recommend using an AWS SDK or the
AWS CLI. Each API operation includes links to information about using
it with a language-specific AWS SDK or the AWS CLI.

=over

=item Using an AWS SDK

You don't need to write code to calculate a signature for request
authentication. The SDK clients authenticate your requests by using
access keys that you provide. For more information about AWS SDKs, see
the AWS Developer Center (http://aws.amazon.com/developer/).

=item Using the AWS CLI

Use your access keys with the AWS CLI to make API calls. For
information about setting up the AWS CLI, see Installing the AWS
Command Line Interface
(https://docs.aws.amazon.com/cli/latest/userguide/installing.html) in
the I<AWS Command Line Interface User Guide>. For a list of available
Amazon Chime commands, see the Amazon Chime commands
(https://docs.aws.amazon.com/cli/latest/reference/chime/index.html) in
the I<AWS CLI Command Reference>.

=item Using REST APIs

If you use REST to make API calls, you must authenticate your request
by providing a signature. Amazon Chime supports signature version 4.
For more information, see Signature Version 4 Signing Process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
in the I<Amazon Web Services General Reference>.

When making REST API calls, use the service name C<chime> and REST
endpoint C<https://service.chime.aws.amazon.com>.

=back

Administrative permissions are controlled using AWS Identity and Access
Management (IAM). For more information, see Identity and Access
Management for Amazon Chime
(https://docs.aws.amazon.com/chime/latest/ag/security-iam.html) in the
I<Amazon Chime Administration Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01>


=head1 METHODS

=head2 AssociatePhoneNumbersWithVoiceConnector

=over

=item E164PhoneNumbers => ArrayRef[Str|Undef]

=item VoiceConnectorId => Str

=item [ForceAssociate => Bool]


=back

Each argument is described in detail in: L<Paws::Chime::AssociatePhoneNumbersWithVoiceConnector>

Returns: a L<Paws::Chime::AssociatePhoneNumbersWithVoiceConnectorResponse> instance

Associates phone numbers with the specified Amazon Chime Voice
Connector.


=head2 AssociatePhoneNumbersWithVoiceConnectorGroup

=over

=item E164PhoneNumbers => ArrayRef[Str|Undef]

=item VoiceConnectorGroupId => Str

=item [ForceAssociate => Bool]


=back

Each argument is described in detail in: L<Paws::Chime::AssociatePhoneNumbersWithVoiceConnectorGroup>

Returns: a L<Paws::Chime::AssociatePhoneNumbersWithVoiceConnectorGroupResponse> instance

Associates phone numbers with the specified Amazon Chime Voice
Connector group.


=head2 AssociatePhoneNumberWithUser

=over

=item AccountId => Str

=item E164PhoneNumber => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::AssociatePhoneNumberWithUser>

Returns: a L<Paws::Chime::AssociatePhoneNumberWithUserResponse> instance

Associates a phone number with the specified Amazon Chime user.


=head2 AssociateSigninDelegateGroupsWithAccount

=over

=item AccountId => Str

=item SigninDelegateGroups => ArrayRef[L<Paws::Chime::SigninDelegateGroup>]


=back

Each argument is described in detail in: L<Paws::Chime::AssociateSigninDelegateGroupsWithAccount>

Returns: a L<Paws::Chime::AssociateSigninDelegateGroupsWithAccountResponse> instance

Associates the specified sign-in delegate groups with the specified
Amazon Chime account.


=head2 BatchCreateAttendee

=over

=item Attendees => ArrayRef[L<Paws::Chime::CreateAttendeeRequestItem>]

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::Chime::BatchCreateAttendee>

Returns: a L<Paws::Chime::BatchCreateAttendeeResponse> instance

Creates up to 100 new attendees for an active Amazon Chime SDK meeting.
For more information about the Amazon Chime SDK, see Using the Amazon
Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide>.


=head2 BatchCreateChannelMembership

=over

=item ChannelArn => Str

=item MemberArns => ArrayRef[Str|Undef]

=item [ChimeBearer => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::Chime::BatchCreateChannelMembership>

Returns: a L<Paws::Chime::BatchCreateChannelMembershipResponse> instance

Adds a specified number of users to a channel.


=head2 BatchCreateRoomMembership

=over

=item AccountId => Str

=item MembershipItemList => ArrayRef[L<Paws::Chime::MembershipItem>]

=item RoomId => Str


=back

Each argument is described in detail in: L<Paws::Chime::BatchCreateRoomMembership>

Returns: a L<Paws::Chime::BatchCreateRoomMembershipResponse> instance

Adds up to 50 members to a chat room in an Amazon Chime Enterprise
account. Members can be users or bots. The member role designates
whether the member is a chat room administrator or a general chat room
member.


=head2 BatchDeletePhoneNumber

=over

=item PhoneNumberIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Chime::BatchDeletePhoneNumber>

Returns: a L<Paws::Chime::BatchDeletePhoneNumberResponse> instance

Moves phone numbers into the B<Deletion queue>. Phone numbers must be
disassociated from any users or Amazon Chime Voice Connectors before
they can be deleted.

Phone numbers remain in the B<Deletion queue> for 7 days before they
are deleted permanently.


=head2 BatchSuspendUser

=over

=item AccountId => Str

=item UserIdList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Chime::BatchSuspendUser>

Returns: a L<Paws::Chime::BatchSuspendUserResponse> instance

Suspends up to 50 users from a C<Team> or C<EnterpriseLWA> Amazon Chime
account. For more information about different account types, see
Managing Your Amazon Chime Accounts
(https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
in the I<Amazon Chime Administration Guide>.

Users suspended from a C<Team> account are disassociated from the
account,but they can continue to use Amazon Chime as free users. To
remove the suspension from suspended C<Team> account users, invite them
to the C<Team> account again. You can use the InviteUsers action to do
so.

Users suspended from an C<EnterpriseLWA> account are immediately signed
out of Amazon Chime and can no longer sign in. To remove the suspension
from suspended C<EnterpriseLWA> account users, use the
BatchUnsuspendUser action.

To sign out users without suspending them, use the LogoutUser action.


=head2 BatchUnsuspendUser

=over

=item AccountId => Str

=item UserIdList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Chime::BatchUnsuspendUser>

Returns: a L<Paws::Chime::BatchUnsuspendUserResponse> instance

Removes the suspension from up to 50 previously suspended users for the
specified Amazon Chime C<EnterpriseLWA> account. Only users on
C<EnterpriseLWA> accounts can be unsuspended using this action. For
more information about different account types, see Managing Your
Amazon Chime Accounts
(https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
in the account types, in the I<Amazon Chime Administration Guide>.

Previously suspended users who are unsuspended using this action are
returned to C<Registered> status. Users who are not previously
suspended are ignored.


=head2 BatchUpdatePhoneNumber

=over

=item UpdatePhoneNumberRequestItems => ArrayRef[L<Paws::Chime::UpdatePhoneNumberRequestItem>]


=back

Each argument is described in detail in: L<Paws::Chime::BatchUpdatePhoneNumber>

Returns: a L<Paws::Chime::BatchUpdatePhoneNumberResponse> instance

Updates phone number product types or calling names. You can update one
attribute at a time for each C<UpdatePhoneNumberRequestItem>. For
example, you can update the product type or the calling name.

For toll-free numbers, you cannot use the Amazon Chime Business Calling
product type. For numbers outside the U.S., you must use the Amazon
Chime SIP Media Application Dial-In product type.

Updates to outbound calling names can take up to 72 hours to complete.
Pending updates to outbound calling names must be complete before you
can request another update.


=head2 BatchUpdateUser

=over

=item AccountId => Str

=item UpdateUserRequestItems => ArrayRef[L<Paws::Chime::UpdateUserRequestItem>]


=back

Each argument is described in detail in: L<Paws::Chime::BatchUpdateUser>

Returns: a L<Paws::Chime::BatchUpdateUserResponse> instance

Updates user details within the UpdateUserRequestItem object for up to
20 users for the specified Amazon Chime account. Currently, only
C<LicenseType> updates are supported for this action.


=head2 CreateAccount

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Chime::CreateAccount>

Returns: a L<Paws::Chime::CreateAccountResponse> instance

Creates an Amazon Chime account under the administrator's AWS account.
Only C<Team> account types are currently supported for this action. For
more information about different account types, see Managing Your
Amazon Chime Accounts
(https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
in the I<Amazon Chime Administration Guide>.


=head2 CreateAppInstance

=over

=item ClientRequestToken => Str

=item Name => Str

=item [Metadata => Str]

=item [Tags => ArrayRef[L<Paws::Chime::Tag>]]


=back

Each argument is described in detail in: L<Paws::Chime::CreateAppInstance>

Returns: a L<Paws::Chime::CreateAppInstanceResponse> instance

Creates an Amazon Chime SDK messaging C<AppInstance> under an AWS
account. Only SDK messaging customers use this API.
C<CreateAppInstance> supports idempotency behavior as described in the
AWS API Standard.


=head2 CreateAppInstanceAdmin

=over

=item AppInstanceAdminArn => Str

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::Chime::CreateAppInstanceAdmin>

Returns: a L<Paws::Chime::CreateAppInstanceAdminResponse> instance

Promotes an C<AppInstanceUser> to an C<AppInstanceAdmin>. The promoted
user can perform the following actions.

=over

=item *

C<ChannelModerator> actions across all channels in the C<AppInstance>.

=item *

C<DeleteChannelMessage> actions.

=back

Only an C<AppInstanceUser> can be promoted to an C<AppInstanceAdmin>
role.


=head2 CreateAppInstanceUser

=over

=item AppInstanceArn => Str

=item AppInstanceUserId => Str

=item ClientRequestToken => Str

=item Name => Str

=item [Metadata => Str]

=item [Tags => ArrayRef[L<Paws::Chime::Tag>]]


=back

Each argument is described in detail in: L<Paws::Chime::CreateAppInstanceUser>

Returns: a L<Paws::Chime::CreateAppInstanceUserResponse> instance

Creates a user under an Amazon Chime C<AppInstance>. The request
consists of a unique C<appInstanceUserId> and C<Name> for that user.


=head2 CreateAttendee

=over

=item ExternalUserId => Str

=item MeetingId => Str

=item [Tags => ArrayRef[L<Paws::Chime::Tag>]]


=back

Each argument is described in detail in: L<Paws::Chime::CreateAttendee>

Returns: a L<Paws::Chime::CreateAttendeeResponse> instance

Creates a new attendee for an active Amazon Chime SDK meeting. For more
information about the Amazon Chime SDK, see Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide>.


=head2 CreateBot

=over

=item AccountId => Str

=item DisplayName => Str

=item [Domain => Str]


=back

Each argument is described in detail in: L<Paws::Chime::CreateBot>

Returns: a L<Paws::Chime::CreateBotResponse> instance

Creates a bot for an Amazon Chime Enterprise account.


=head2 CreateChannel

=over

=item AppInstanceArn => Str

=item ClientRequestToken => Str

=item Name => Str

=item [ChimeBearer => Str]

=item [Metadata => Str]

=item [Mode => Str]

=item [Privacy => Str]

=item [Tags => ArrayRef[L<Paws::Chime::Tag>]]


=back

Each argument is described in detail in: L<Paws::Chime::CreateChannel>

Returns: a L<Paws::Chime::CreateChannelResponse> instance

Creates a channel to which you can add users and send messages.

B<Restriction>: You can't change a channel's privacy.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 CreateChannelBan

=over

=item ChannelArn => Str

=item MemberArn => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::CreateChannelBan>

Returns: a L<Paws::Chime::CreateChannelBanResponse> instance

Permanently bans a member from a channel. Moderators can't add banned
members to a channel. To undo a ban, you first have to
C<DeleteChannelBan>, and then C<CreateChannelMembership>. Bans are
cleaned up when you delete users or channels.

If you ban a user who is already part of a channel, that user is
automatically kicked from the channel.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 CreateChannelMembership

=over

=item ChannelArn => Str

=item MemberArn => Str

=item Type => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::CreateChannelMembership>

Returns: a L<Paws::Chime::CreateChannelMembershipResponse> instance

Adds a user to a channel. The C<InvitedBy> response field is derived
from the request header. A channel member can:

=over

=item *

List messages

=item *

Send messages

=item *

Receive messages

=item *

Edit their own messages

=item *

Leave the channel

=back

Privacy settings impact this action as follows:

=over

=item *

Public Channels: You do not need to be a member to list messages, but
you must be a member to send messages.

=item *

Private Channels: You must be a member to list or send messages.

=back

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 CreateChannelModerator

=over

=item ChannelArn => Str

=item ChannelModeratorArn => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::CreateChannelModerator>

Returns: a L<Paws::Chime::CreateChannelModeratorResponse> instance

Creates a new C<ChannelModerator>. A channel moderator can:

=over

=item *

Add and remove other members of the channel.

=item *

Add and remove other moderators of the channel.

=item *

Add and remove user bans for the channel.

=item *

Redact messages in the channel.

=item *

List messages in the channel.

=back

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 CreateMeeting

=over

=item ClientRequestToken => Str

=item [ExternalMeetingId => Str]

=item [MediaRegion => Str]

=item [MeetingHostId => Str]

=item [NotificationsConfiguration => L<Paws::Chime::MeetingNotificationConfiguration>]

=item [Tags => ArrayRef[L<Paws::Chime::Tag>]]


=back

Each argument is described in detail in: L<Paws::Chime::CreateMeeting>

Returns: a L<Paws::Chime::CreateMeetingResponse> instance

Creates a new Amazon Chime SDK meeting in the specified media Region
with no initial attendees. For more information about specifying media
Regions, see Amazon Chime SDK Media Regions
(https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html)
in the I<Amazon Chime Developer Guide> . For more information about the
Amazon Chime SDK, see Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide> .


=head2 CreateMeetingDialOut

=over

=item FromPhoneNumber => Str

=item JoinToken => Str

=item MeetingId => Str

=item ToPhoneNumber => Str


=back

Each argument is described in detail in: L<Paws::Chime::CreateMeetingDialOut>

Returns: a L<Paws::Chime::CreateMeetingDialOutResponse> instance

Uses the join token and call metadata in a meeting request (From
number, To number, and so forth) to initiate an outbound call to a
public switched telephone network (PSTN) and join them into a Chime
meeting. Also ensures that the From number belongs to the customer.

To play welcome audio or implement an interactive voice response (IVR),
use the C<CreateSipMediaApplicationCall> action with the corresponding
SIP media application ID.


=head2 CreateMeetingWithAttendees

=over

=item ClientRequestToken => Str

=item [Attendees => ArrayRef[L<Paws::Chime::CreateAttendeeRequestItem>]]

=item [ExternalMeetingId => Str]

=item [MediaRegion => Str]

=item [MeetingHostId => Str]

=item [NotificationsConfiguration => L<Paws::Chime::MeetingNotificationConfiguration>]

=item [Tags => ArrayRef[L<Paws::Chime::Tag>]]


=back

Each argument is described in detail in: L<Paws::Chime::CreateMeetingWithAttendees>

Returns: a L<Paws::Chime::CreateMeetingWithAttendeesResponse> instance

Creates a new Amazon Chime SDK meeting in the specified media Region,
with attendees. For more information about specifying media Regions,
see Amazon Chime SDK Media Regions
(https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html)
in the I<Amazon Chime Developer Guide> . For more information about the
Amazon Chime SDK, see Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide> .


=head2 CreatePhoneNumberOrder

=over

=item E164PhoneNumbers => ArrayRef[Str|Undef]

=item ProductType => Str


=back

Each argument is described in detail in: L<Paws::Chime::CreatePhoneNumberOrder>

Returns: a L<Paws::Chime::CreatePhoneNumberOrderResponse> instance

Creates an order for phone numbers to be provisioned. For toll-free
numbers, you cannot use the Amazon Chime Business Calling product type.
For numbers outside the U.S., you must use the Amazon Chime SIP Media
Application Dial-In product type.


=head2 CreateProxySession

=over

=item Capabilities => ArrayRef[Str|Undef]

=item ParticipantPhoneNumbers => ArrayRef[Str|Undef]

=item VoiceConnectorId => Str

=item [ExpiryMinutes => Int]

=item [GeoMatchLevel => Str]

=item [GeoMatchParams => L<Paws::Chime::GeoMatchParams>]

=item [Name => Str]

=item [NumberSelectionBehavior => Str]


=back

Each argument is described in detail in: L<Paws::Chime::CreateProxySession>

Returns: a L<Paws::Chime::CreateProxySessionResponse> instance

Creates a proxy session on the specified Amazon Chime Voice Connector
for the specified participant phone numbers.


=head2 CreateRoom

=over

=item AccountId => Str

=item Name => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::CreateRoom>

Returns: a L<Paws::Chime::CreateRoomResponse> instance

Creates a chat room for the specified Amazon Chime Enterprise account.


=head2 CreateRoomMembership

=over

=item AccountId => Str

=item MemberId => Str

=item RoomId => Str

=item [Role => Str]


=back

Each argument is described in detail in: L<Paws::Chime::CreateRoomMembership>

Returns: a L<Paws::Chime::CreateRoomMembershipResponse> instance

Adds a member to a chat room in an Amazon Chime Enterprise account. A
member can be either a user or a bot. The member role designates
whether the member is a chat room administrator or a general chat room
member.


=head2 CreateSipMediaApplication

=over

=item AwsRegion => Str

=item Endpoints => ArrayRef[L<Paws::Chime::SipMediaApplicationEndpoint>]

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Chime::CreateSipMediaApplication>

Returns: a L<Paws::Chime::CreateSipMediaApplicationResponse> instance

Creates a SIP media application.


=head2 CreateSipMediaApplicationCall

=over

=item FromPhoneNumber => Str

=item SipMediaApplicationId => Str

=item ToPhoneNumber => Str


=back

Each argument is described in detail in: L<Paws::Chime::CreateSipMediaApplicationCall>

Returns: a L<Paws::Chime::CreateSipMediaApplicationCallResponse> instance

Creates an outbound call to a phone number from the phone number
specified in the request, and it invokes the endpoint of the specified
C<sipMediaApplicationId>.


=head2 CreateSipRule

=over

=item Name => Str

=item TargetApplications => ArrayRef[L<Paws::Chime::SipRuleTargetApplication>]

=item TriggerType => Str

=item TriggerValue => Str

=item [Disabled => Bool]


=back

Each argument is described in detail in: L<Paws::Chime::CreateSipRule>

Returns: a L<Paws::Chime::CreateSipRuleResponse> instance

Creates a SIP rule which can be used to run a SIP media application as
a target for a specific trigger type.


=head2 CreateUser

=over

=item AccountId => Str

=item [Email => Str]

=item [Username => Str]

=item [UserType => Str]


=back

Each argument is described in detail in: L<Paws::Chime::CreateUser>

Returns: a L<Paws::Chime::CreateUserResponse> instance

Creates a user under the specified Amazon Chime account.


=head2 CreateVoiceConnector

=over

=item Name => Str

=item RequireEncryption => Bool

=item [AwsRegion => Str]


=back

Each argument is described in detail in: L<Paws::Chime::CreateVoiceConnector>

Returns: a L<Paws::Chime::CreateVoiceConnectorResponse> instance

Creates an Amazon Chime Voice Connector under the administrator's AWS
account. You can choose to create an Amazon Chime Voice Connector in a
specific AWS Region.

Enabling CreateVoiceConnectorRequest$RequireEncryption configures your
Amazon Chime Voice Connector to use TLS transport for SIP signaling and
Secure RTP (SRTP) for media. Inbound calls use TLS transport, and
unencrypted outbound calls are blocked.


=head2 CreateVoiceConnectorGroup

=over

=item Name => Str

=item [VoiceConnectorItems => ArrayRef[L<Paws::Chime::VoiceConnectorItem>]]


=back

Each argument is described in detail in: L<Paws::Chime::CreateVoiceConnectorGroup>

Returns: a L<Paws::Chime::CreateVoiceConnectorGroupResponse> instance

Creates an Amazon Chime Voice Connector group under the administrator's
AWS account. You can associate Amazon Chime Voice Connectors with the
Amazon Chime Voice Connector group by including C<VoiceConnectorItems>
in the request.

You can include Amazon Chime Voice Connectors from different AWS
Regions in your group. This creates a fault tolerant mechanism for
fallback in case of availability events.


=head2 DeleteAccount

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteAccount>

Returns: a L<Paws::Chime::DeleteAccountResponse> instance

Deletes the specified Amazon Chime account. You must suspend all users
before deleting C<Team> account. You can use the BatchSuspendUser
action to dodo.

For C<EnterpriseLWA> and C<EnterpriseAD> accounts, you must release the
claimed domains for your Amazon Chime account before deletion. As soon
as you release the domain, all users under that account are suspended.

Deleted accounts appear in your C<Disabled> accounts list for 90 days.
To restore deleted account from your C<Disabled> accounts list, you
must contact AWS Support.

After 90 days, deleted accounts are permanently removed from your
C<Disabled> accounts list.


=head2 DeleteAppInstance

=over

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteAppInstance>

Returns: nothing

Deletes an C<AppInstance> and all associated data asynchronously.


=head2 DeleteAppInstanceAdmin

=over

=item AppInstanceAdminArn => Str

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteAppInstanceAdmin>

Returns: nothing

Demotes an C<AppInstanceAdmin> to an C<AppInstanceUser>. This action
does not delete the user.


=head2 DeleteAppInstanceStreamingConfigurations

=over

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteAppInstanceStreamingConfigurations>

Returns: nothing

Deletes the streaming configurations of an C<AppInstance>.


=head2 DeleteAppInstanceUser

=over

=item AppInstanceUserArn => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteAppInstanceUser>

Returns: nothing

Deletes an C<AppInstanceUser>.


=head2 DeleteAttendee

=over

=item AttendeeId => Str

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteAttendee>

Returns: nothing

Deletes an attendee from the specified Amazon Chime SDK meeting and
deletes their C<JoinToken>. Attendees are automatically deleted when a
Amazon Chime SDK meeting is deleted. For more information about the
Amazon Chime SDK, see Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide>.


=head2 DeleteChannel

=over

=item ChannelArn => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::DeleteChannel>

Returns: nothing

Immediately makes a channel and its memberships inaccessible and marks
them for deletion. This is an irreversible process.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 DeleteChannelBan

=over

=item ChannelArn => Str

=item MemberArn => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::DeleteChannelBan>

Returns: nothing

Removes a user from a channel's ban list.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 DeleteChannelMembership

=over

=item ChannelArn => Str

=item MemberArn => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::DeleteChannelMembership>

Returns: nothing

Removes a member from a channel.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 DeleteChannelMessage

=over

=item ChannelArn => Str

=item MessageId => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::DeleteChannelMessage>

Returns: nothing

Deletes a channel message. Only admins can perform this action.
Deletion makes messages inaccessible immediately. A background process
deletes any revisions created by C<UpdateChannelMessage>.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 DeleteChannelModerator

=over

=item ChannelArn => Str

=item ChannelModeratorArn => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::DeleteChannelModerator>

Returns: nothing

Deletes a channel moderator.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 DeleteEventsConfiguration

=over

=item AccountId => Str

=item BotId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteEventsConfiguration>

Returns: nothing

Deletes the events configuration that allows a bot to receive outgoing
events.


=head2 DeleteMeeting

=over

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteMeeting>

Returns: nothing

Deletes the specified Amazon Chime SDK meeting. The operation deletes
all attendees, disconnects all clients, and prevents new clients from
joining the meeting. For more information about the Amazon Chime SDK,
see Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide>.


=head2 DeletePhoneNumber

=over

=item PhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeletePhoneNumber>

Returns: nothing

Moves the specified phone number into the B<Deletion queue>. A phone
number must be disassociated from any users or Amazon Chime Voice
Connectors before it can be deleted.

Deleted phone numbers remain in the B<Deletion queue> for 7 days before
they are deleted permanently.


=head2 DeleteProxySession

=over

=item ProxySessionId => Str

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteProxySession>

Returns: nothing

Deletes the specified proxy session from the specified Amazon Chime
Voice Connector.


=head2 DeleteRoom

=over

=item AccountId => Str

=item RoomId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteRoom>

Returns: nothing

Deletes a chat room in an Amazon Chime Enterprise account.


=head2 DeleteRoomMembership

=over

=item AccountId => Str

=item MemberId => Str

=item RoomId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteRoomMembership>

Returns: nothing

Removes a member from a chat room in an Amazon Chime Enterprise
account.


=head2 DeleteSipMediaApplication

=over

=item SipMediaApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteSipMediaApplication>

Returns: nothing

Deletes a SIP media application.


=head2 DeleteSipRule

=over

=item SipRuleId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteSipRule>

Returns: nothing

Deletes a SIP rule. You must disable a SIP rule before you can delete
it.


=head2 DeleteVoiceConnector

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteVoiceConnector>

Returns: nothing

Deletes the specified Amazon Chime Voice Connector. Any phone numbers
associated with the Amazon Chime Voice Connector must be disassociated
from it before it can be deleted.


=head2 DeleteVoiceConnectorEmergencyCallingConfiguration

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteVoiceConnectorEmergencyCallingConfiguration>

Returns: nothing

Deletes the emergency calling configuration details from the specified
Amazon Chime Voice Connector.


=head2 DeleteVoiceConnectorGroup

=over

=item VoiceConnectorGroupId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteVoiceConnectorGroup>

Returns: nothing

Deletes the specified Amazon Chime Voice Connector group. Any
C<VoiceConnectorItems> and phone numbers associated with the group must
be removed before it can be deleted.


=head2 DeleteVoiceConnectorOrigination

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteVoiceConnectorOrigination>

Returns: nothing

Deletes the origination settings for the specified Amazon Chime Voice
Connector.

If emergency calling is configured for the Amazon Chime Voice
Connector, it must be deleted prior to deleting the origination
settings.


=head2 DeleteVoiceConnectorProxy

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteVoiceConnectorProxy>

Returns: nothing

Deletes the proxy configuration from the specified Amazon Chime Voice
Connector.


=head2 DeleteVoiceConnectorStreamingConfiguration

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteVoiceConnectorStreamingConfiguration>

Returns: nothing

Deletes the streaming configuration for the specified Amazon Chime
Voice Connector.


=head2 DeleteVoiceConnectorTermination

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteVoiceConnectorTermination>

Returns: nothing

Deletes the termination settings for the specified Amazon Chime Voice
Connector.

If emergency calling is configured for the Amazon Chime Voice
Connector, it must be deleted prior to deleting the termination
settings.


=head2 DeleteVoiceConnectorTerminationCredentials

=over

=item Usernames => ArrayRef[Str|Undef]

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteVoiceConnectorTerminationCredentials>

Returns: nothing

Deletes the specified SIP credentials used by your equipment to
authenticate during call termination.


=head2 DescribeAppInstance

=over

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::Chime::DescribeAppInstance>

Returns: a L<Paws::Chime::DescribeAppInstanceResponse> instance

Returns the full details of an C<AppInstance>.


=head2 DescribeAppInstanceAdmin

=over

=item AppInstanceAdminArn => Str

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::Chime::DescribeAppInstanceAdmin>

Returns: a L<Paws::Chime::DescribeAppInstanceAdminResponse> instance

Returns the full details of an C<AppInstanceAdmin>.


=head2 DescribeAppInstanceUser

=over

=item AppInstanceUserArn => Str


=back

Each argument is described in detail in: L<Paws::Chime::DescribeAppInstanceUser>

Returns: a L<Paws::Chime::DescribeAppInstanceUserResponse> instance

Returns the full details of an C<AppInstanceUser> .


=head2 DescribeChannel

=over

=item ChannelArn => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::DescribeChannel>

Returns: a L<Paws::Chime::DescribeChannelResponse> instance

Returns the full details of a channel in an Amazon Chime
C<AppInstance>.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 DescribeChannelBan

=over

=item ChannelArn => Str

=item MemberArn => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::DescribeChannelBan>

Returns: a L<Paws::Chime::DescribeChannelBanResponse> instance

Returns the full details of a channel ban.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 DescribeChannelMembership

=over

=item ChannelArn => Str

=item MemberArn => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::DescribeChannelMembership>

Returns: a L<Paws::Chime::DescribeChannelMembershipResponse> instance

Returns the full details of a user's channel membership.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 DescribeChannelMembershipForAppInstanceUser

=over

=item AppInstanceUserArn => Str

=item ChannelArn => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::DescribeChannelMembershipForAppInstanceUser>

Returns: a L<Paws::Chime::DescribeChannelMembershipForAppInstanceUserResponse> instance

Returns the details of a channel based on the membership of the
specified C<AppInstanceUser>.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 DescribeChannelModeratedByAppInstanceUser

=over

=item AppInstanceUserArn => Str

=item ChannelArn => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::DescribeChannelModeratedByAppInstanceUser>

Returns: a L<Paws::Chime::DescribeChannelModeratedByAppInstanceUserResponse> instance

Returns the full details of a channel moderated by the specified
C<AppInstanceUser>.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 DescribeChannelModerator

=over

=item ChannelArn => Str

=item ChannelModeratorArn => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::DescribeChannelModerator>

Returns: a L<Paws::Chime::DescribeChannelModeratorResponse> instance

Returns the full details of a single ChannelModerator.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 DisassociatePhoneNumberFromUser

=over

=item AccountId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DisassociatePhoneNumberFromUser>

Returns: a L<Paws::Chime::DisassociatePhoneNumberFromUserResponse> instance

Disassociates the primary provisioned phone number from the specified
Amazon Chime user.


=head2 DisassociatePhoneNumbersFromVoiceConnector

=over

=item E164PhoneNumbers => ArrayRef[Str|Undef]

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DisassociatePhoneNumbersFromVoiceConnector>

Returns: a L<Paws::Chime::DisassociatePhoneNumbersFromVoiceConnectorResponse> instance

Disassociates the specified phone numbers from the specified Amazon
Chime Voice Connector.


=head2 DisassociatePhoneNumbersFromVoiceConnectorGroup

=over

=item E164PhoneNumbers => ArrayRef[Str|Undef]

=item VoiceConnectorGroupId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DisassociatePhoneNumbersFromVoiceConnectorGroup>

Returns: a L<Paws::Chime::DisassociatePhoneNumbersFromVoiceConnectorGroupResponse> instance

Disassociates the specified phone numbers from the specified Amazon
Chime Voice Connector group.


=head2 DisassociateSigninDelegateGroupsFromAccount

=over

=item AccountId => Str

=item GroupNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Chime::DisassociateSigninDelegateGroupsFromAccount>

Returns: a L<Paws::Chime::DisassociateSigninDelegateGroupsFromAccountResponse> instance

Disassociates the specified sign-in delegate groups from the specified
Amazon Chime account.


=head2 GetAccount

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetAccount>

Returns: a L<Paws::Chime::GetAccountResponse> instance

Retrieves details for the specified Amazon Chime account, such as
account type and supported licenses.


=head2 GetAccountSettings

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetAccountSettings>

Returns: a L<Paws::Chime::GetAccountSettingsResponse> instance

Retrieves account settings for the specified Amazon Chime account ID,
such as remote control and dialout settings. For more information about
these settings, see Use the Policies Page
(https://docs.aws.amazon.com/chime/latest/ag/policies.html) in the
I<Amazon Chime Administration Guide>.


=head2 GetAppInstanceRetentionSettings

=over

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetAppInstanceRetentionSettings>

Returns: a L<Paws::Chime::GetAppInstanceRetentionSettingsResponse> instance

Gets the retention settings for an C<AppInstance>.


=head2 GetAppInstanceStreamingConfigurations

=over

=item AppInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetAppInstanceStreamingConfigurations>

Returns: a L<Paws::Chime::GetAppInstanceStreamingConfigurationsResponse> instance

Gets the streaming settings for an C<AppInstance>.


=head2 GetAttendee

=over

=item AttendeeId => Str

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetAttendee>

Returns: a L<Paws::Chime::GetAttendeeResponse> instance

Gets the Amazon Chime SDK attendee details for a specified meeting ID
and attendee ID. For more information about the Amazon Chime SDK, see
Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide> .


=head2 GetBot

=over

=item AccountId => Str

=item BotId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetBot>

Returns: a L<Paws::Chime::GetBotResponse> instance

Retrieves details for the specified bot, such as bot email address, bot
type, status, and display name.


=head2 GetChannelMessage

=over

=item ChannelArn => Str

=item MessageId => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::GetChannelMessage>

Returns: a L<Paws::Chime::GetChannelMessageResponse> instance

Gets the full details of a channel message.

The x-amz-chime-bearer request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 GetEventsConfiguration

=over

=item AccountId => Str

=item BotId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetEventsConfiguration>

Returns: a L<Paws::Chime::GetEventsConfigurationResponse> instance

Gets details for an events configuration that allows a bot to receive
outgoing events, such as an HTTPS endpoint or Lambda function ARN.


=head2 GetGlobalSettings

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Chime::GetGlobalSettings>

Returns: a L<Paws::Chime::GetGlobalSettingsResponse> instance

Retrieves global settings for the administrator's AWS account, such as
Amazon Chime Business Calling and Amazon Chime Voice Connector
settings.


=head2 GetMeeting

=over

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetMeeting>

Returns: a L<Paws::Chime::GetMeetingResponse> instance

Gets the Amazon Chime SDK meeting details for the specified meeting ID.
For more information about the Amazon Chime SDK, see Using the Amazon
Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide> .


=head2 GetMessagingSessionEndpoint






Each argument is described in detail in: L<Paws::Chime::GetMessagingSessionEndpoint>

Returns: a L<Paws::Chime::GetMessagingSessionEndpointResponse> instance

The details of the endpoint for the messaging session.


=head2 GetPhoneNumber

=over

=item PhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetPhoneNumber>

Returns: a L<Paws::Chime::GetPhoneNumberResponse> instance

Retrieves details for the specified phone number ID, such as
associations, capabilities, and product type.


=head2 GetPhoneNumberOrder

=over

=item PhoneNumberOrderId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetPhoneNumberOrder>

Returns: a L<Paws::Chime::GetPhoneNumberOrderResponse> instance

Retrieves details for the specified phone number order, such as the
order creation timestamp, phone numbers in E.164 format, product type,
and order status.


=head2 GetPhoneNumberSettings

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Chime::GetPhoneNumberSettings>

Returns: a L<Paws::Chime::GetPhoneNumberSettingsResponse> instance

Retrieves the phone number settings for the administrator's AWS
account, such as the default outbound calling name.


=head2 GetProxySession

=over

=item ProxySessionId => Str

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetProxySession>

Returns: a L<Paws::Chime::GetProxySessionResponse> instance

Gets the specified proxy session details for the specified Amazon Chime
Voice Connector.


=head2 GetRetentionSettings

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetRetentionSettings>

Returns: a L<Paws::Chime::GetRetentionSettingsResponse> instance

Gets the retention settings for the specified Amazon Chime Enterprise
account. For more information about retention settings, see Managing
Chat Retention Policies
(https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html) in
the I<Amazon Chime Administration Guide>.


=head2 GetRoom

=over

=item AccountId => Str

=item RoomId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetRoom>

Returns: a L<Paws::Chime::GetRoomResponse> instance

Retrieves room details, such as the room name, for a room in an Amazon
Chime Enterprise account.


=head2 GetSipMediaApplication

=over

=item SipMediaApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetSipMediaApplication>

Returns: a L<Paws::Chime::GetSipMediaApplicationResponse> instance

Retrieves the information for a SIP media application, including name,
AWS Region, and endpoints.


=head2 GetSipMediaApplicationLoggingConfiguration

=over

=item SipMediaApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetSipMediaApplicationLoggingConfiguration>

Returns: a L<Paws::Chime::GetSipMediaApplicationLoggingConfigurationResponse> instance

Returns the logging configuration for the specified SIP media
application.


=head2 GetSipRule

=over

=item SipRuleId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetSipRule>

Returns: a L<Paws::Chime::GetSipRuleResponse> instance

Retrieves the details of a SIP rule, such as the rule ID, name,
triggers, and target endpoints.


=head2 GetUser

=over

=item AccountId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetUser>

Returns: a L<Paws::Chime::GetUserResponse> instance

Retrieves details for the specified user ID, such as primary email
address, license type,and personal meeting PIN.

To retrieve user details with an email address instead of a user ID,
use the ListUsers action, and then filter by email address.


=head2 GetUserSettings

=over

=item AccountId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetUserSettings>

Returns: a L<Paws::Chime::GetUserSettingsResponse> instance

Retrieves settings for the specified user ID, such as any associated
phone number settings.


=head2 GetVoiceConnector

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetVoiceConnector>

Returns: a L<Paws::Chime::GetVoiceConnectorResponse> instance

Retrieves details for the specified Amazon Chime Voice Connector, such
as timestamps,name, outbound host, and encryption requirements.


=head2 GetVoiceConnectorEmergencyCallingConfiguration

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetVoiceConnectorEmergencyCallingConfiguration>

Returns: a L<Paws::Chime::GetVoiceConnectorEmergencyCallingConfigurationResponse> instance

Gets the emergency calling configuration details for the specified
Amazon Chime Voice Connector.


=head2 GetVoiceConnectorGroup

=over

=item VoiceConnectorGroupId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetVoiceConnectorGroup>

Returns: a L<Paws::Chime::GetVoiceConnectorGroupResponse> instance

Retrieves details for the specified Amazon Chime Voice Connector group,
such as timestamps,name, and associated C<VoiceConnectorItems>.


=head2 GetVoiceConnectorLoggingConfiguration

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetVoiceConnectorLoggingConfiguration>

Returns: a L<Paws::Chime::GetVoiceConnectorLoggingConfigurationResponse> instance

Retrieves the logging configuration details for the specified Amazon
Chime Voice Connector. Shows whether SIP message logs are enabled for
sending to Amazon CloudWatch Logs.


=head2 GetVoiceConnectorOrigination

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetVoiceConnectorOrigination>

Returns: a L<Paws::Chime::GetVoiceConnectorOriginationResponse> instance

Retrieves origination setting details for the specified Amazon Chime
Voice Connector.


=head2 GetVoiceConnectorProxy

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetVoiceConnectorProxy>

Returns: a L<Paws::Chime::GetVoiceConnectorProxyResponse> instance

Gets the proxy configuration details for the specified Amazon Chime
Voice Connector.


=head2 GetVoiceConnectorStreamingConfiguration

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetVoiceConnectorStreamingConfiguration>

Returns: a L<Paws::Chime::GetVoiceConnectorStreamingConfigurationResponse> instance

Retrieves the streaming configuration details for the specified Amazon
Chime Voice Connector. Shows whether media streaming is enabled for
sending to Amazon Kinesis. It also shows the retention period, in
hours, for the Amazon Kinesis data.


=head2 GetVoiceConnectorTermination

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetVoiceConnectorTermination>

Returns: a L<Paws::Chime::GetVoiceConnectorTerminationResponse> instance

Retrieves termination setting details for the specified Amazon Chime
Voice Connector.


=head2 GetVoiceConnectorTerminationHealth

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetVoiceConnectorTerminationHealth>

Returns: a L<Paws::Chime::GetVoiceConnectorTerminationHealthResponse> instance

Retrieves information about the last time a SIP C<OPTIONS> ping was
received from your SIP infrastructure for the specified Amazon Chime
Voice Connector.


=head2 InviteUsers

=over

=item AccountId => Str

=item UserEmailList => ArrayRef[Str|Undef]

=item [UserType => Str]


=back

Each argument is described in detail in: L<Paws::Chime::InviteUsers>

Returns: a L<Paws::Chime::InviteUsersResponse> instance

Sends email to a maximum of 50 users, inviting them to the specified
Amazon Chime C<Team> account. Only C<Team> account types are currently
supported for this action.


=head2 ListAccounts

=over

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [UserEmail => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListAccounts>

Returns: a L<Paws::Chime::ListAccountsResponse> instance

Lists the Amazon Chime accounts under the administrator's AWS account.
You can filter accounts by account name prefix. To find out which
Amazon Chime account a user belongs to, you can filter by the user's
email address, which returns one account result.


=head2 ListAppInstanceAdmins

=over

=item AppInstanceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListAppInstanceAdmins>

Returns: a L<Paws::Chime::ListAppInstanceAdminsResponse> instance

Returns a list of the administrators in the C<AppInstance>.


=head2 ListAppInstances

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListAppInstances>

Returns: a L<Paws::Chime::ListAppInstancesResponse> instance

Lists all Amazon Chime C<AppInstance>s created under a single AWS
account.


=head2 ListAppInstanceUsers

=over

=item AppInstanceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListAppInstanceUsers>

Returns: a L<Paws::Chime::ListAppInstanceUsersResponse> instance

List all C<AppInstanceUsers> created under a single C<AppInstance>.


=head2 ListAttendees

=over

=item MeetingId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListAttendees>

Returns: a L<Paws::Chime::ListAttendeesResponse> instance

Lists the attendees for the specified Amazon Chime SDK meeting. For
more information about the Amazon Chime SDK, see Using the Amazon Chime
SDK (https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in
the I<Amazon Chime Developer Guide>.


=head2 ListAttendeeTags

=over

=item AttendeeId => Str

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::Chime::ListAttendeeTags>

Returns: a L<Paws::Chime::ListAttendeeTagsResponse> instance

Lists the tags applied to an Amazon Chime SDK attendee resource.


=head2 ListBots

=over

=item AccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListBots>

Returns: a L<Paws::Chime::ListBotsResponse> instance

Lists the bots associated with the administrator's Amazon Chime
Enterprise account ID.


=head2 ListChannelBans

=over

=item ChannelArn => Str

=item [ChimeBearer => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListChannelBans>

Returns: a L<Paws::Chime::ListChannelBansResponse> instance

Lists all the users banned from a particular channel.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 ListChannelMemberships

=over

=item ChannelArn => Str

=item [ChimeBearer => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListChannelMemberships>

Returns: a L<Paws::Chime::ListChannelMembershipsResponse> instance

Lists all channel memberships in a channel.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 ListChannelMembershipsForAppInstanceUser

=over

=item [AppInstanceUserArn => Str]

=item [ChimeBearer => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListChannelMembershipsForAppInstanceUser>

Returns: a L<Paws::Chime::ListChannelMembershipsForAppInstanceUserResponse> instance

Lists all channels that a particular C<AppInstanceUser> is a part of.
Only an C<AppInstanceAdmin> can call the API with a user ARN that is
not their own.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 ListChannelMessages

=over

=item ChannelArn => Str

=item [ChimeBearer => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [NotAfter => Str]

=item [NotBefore => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListChannelMessages>

Returns: a L<Paws::Chime::ListChannelMessagesResponse> instance

List all the messages in a channel. Returns a paginated list of
C<ChannelMessages>. By default, sorted by creation timestamp in
descending order.

Redacted messages appear in the results as empty, since they are only
redacted, not deleted. Deleted messages do not appear in the results.
This action always returns the latest version of an edited message.

Also, the x-amz-chime-bearer request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 ListChannelModerators

=over

=item ChannelArn => Str

=item [ChimeBearer => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListChannelModerators>

Returns: a L<Paws::Chime::ListChannelModeratorsResponse> instance

Lists all the moderators for a channel.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 ListChannels

=over

=item AppInstanceArn => Str

=item [ChimeBearer => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Privacy => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListChannels>

Returns: a L<Paws::Chime::ListChannelsResponse> instance

Lists all Channels created under a single Chime App as a paginated
list. You can specify filters to narrow results.

B<Functionality & restrictions>

=over

=item *

Use privacy = C<PUBLIC> to retrieve all public channels in the account.

=item *

Only an C<AppInstanceAdmin> can set privacy = C<PRIVATE> to list the
private channels in an account.

=back

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 ListChannelsModeratedByAppInstanceUser

=over

=item [AppInstanceUserArn => Str]

=item [ChimeBearer => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListChannelsModeratedByAppInstanceUser>

Returns: a L<Paws::Chime::ListChannelsModeratedByAppInstanceUserResponse> instance

A list of the channels moderated by an C<AppInstanceUser>.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 ListMeetings

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListMeetings>

Returns: a L<Paws::Chime::ListMeetingsResponse> instance

Lists up to 100 active Amazon Chime SDK meetings. For more information
about the Amazon Chime SDK, see Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide>.


=head2 ListMeetingTags

=over

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::Chime::ListMeetingTags>

Returns: a L<Paws::Chime::ListMeetingTagsResponse> instance

Lists the tags applied to an Amazon Chime SDK meeting resource.


=head2 ListPhoneNumberOrders

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListPhoneNumberOrders>

Returns: a L<Paws::Chime::ListPhoneNumberOrdersResponse> instance

Lists the phone number orders for the administrator's Amazon Chime
account.


=head2 ListPhoneNumbers

=over

=item [FilterName => Str]

=item [FilterValue => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProductType => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListPhoneNumbers>

Returns: a L<Paws::Chime::ListPhoneNumbersResponse> instance

Lists the phone numbers for the specified Amazon Chime account, Amazon
Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice
Connector group.


=head2 ListProxySessions

=over

=item VoiceConnectorId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListProxySessions>

Returns: a L<Paws::Chime::ListProxySessionsResponse> instance

Lists the proxy sessions for the specified Amazon Chime Voice
Connector.


=head2 ListRoomMemberships

=over

=item AccountId => Str

=item RoomId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListRoomMemberships>

Returns: a L<Paws::Chime::ListRoomMembershipsResponse> instance

Lists the membership details for the specified room in an Amazon Chime
Enterprise account, such as the members' IDs, email addresses, and
names.


=head2 ListRooms

=over

=item AccountId => Str

=item [MaxResults => Int]

=item [MemberId => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListRooms>

Returns: a L<Paws::Chime::ListRoomsResponse> instance

Lists the room details for the specified Amazon Chime Enterprise
account. Optionally, filter the results by a member ID (user ID or bot
ID) to see a list of rooms that the member belongs to.


=head2 ListSipMediaApplications

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListSipMediaApplications>

Returns: a L<Paws::Chime::ListSipMediaApplicationsResponse> instance

Lists the SIP media applications under the administrator's AWS account.


=head2 ListSipRules

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SipMediaApplicationId => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListSipRules>

Returns: a L<Paws::Chime::ListSipRulesResponse> instance

Lists the SIP rules under the administrator's AWS account.


=head2 ListSupportedPhoneNumberCountries

=over

=item ProductType => Str


=back

Each argument is described in detail in: L<Paws::Chime::ListSupportedPhoneNumberCountries>

Returns: a L<Paws::Chime::ListSupportedPhoneNumberCountriesResponse> instance

Lists supported phone number countries.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::Chime::ListTagsForResource>

Returns: a L<Paws::Chime::ListTagsForResourceResponse> instance

Lists the tags applied to an Amazon Chime SDK meeting resource.


=head2 ListUsers

=over

=item AccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [UserEmail => Str]

=item [UserType => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListUsers>

Returns: a L<Paws::Chime::ListUsersResponse> instance

Lists the users that belong to the specified Amazon Chime account. You
can specify an email address to list only the user that the email
address belongs to.


=head2 ListVoiceConnectorGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListVoiceConnectorGroups>

Returns: a L<Paws::Chime::ListVoiceConnectorGroupsResponse> instance

Lists the Amazon Chime Voice Connector groups for the administrator's
AWS account.


=head2 ListVoiceConnectors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListVoiceConnectors>

Returns: a L<Paws::Chime::ListVoiceConnectorsResponse> instance

Lists the Amazon Chime Voice Connectors for the administrator's AWS
account.


=head2 ListVoiceConnectorTerminationCredentials

=over

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::ListVoiceConnectorTerminationCredentials>

Returns: a L<Paws::Chime::ListVoiceConnectorTerminationCredentialsResponse> instance

Lists the SIP credentials for the specified Amazon Chime Voice
Connector.


=head2 LogoutUser

=over

=item AccountId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::LogoutUser>

Returns: a L<Paws::Chime::LogoutUserResponse> instance

Logs out the specified user from all of the devices they are currently
logged into.


=head2 PutAppInstanceRetentionSettings

=over

=item AppInstanceArn => Str

=item AppInstanceRetentionSettings => L<Paws::Chime::AppInstanceRetentionSettings>


=back

Each argument is described in detail in: L<Paws::Chime::PutAppInstanceRetentionSettings>

Returns: a L<Paws::Chime::PutAppInstanceRetentionSettingsResponse> instance

Sets the amount of time in days that a given C<AppInstance> retains
data.


=head2 PutAppInstanceStreamingConfigurations

=over

=item AppInstanceArn => Str

=item AppInstanceStreamingConfigurations => ArrayRef[L<Paws::Chime::AppInstanceStreamingConfiguration>]


=back

Each argument is described in detail in: L<Paws::Chime::PutAppInstanceStreamingConfigurations>

Returns: a L<Paws::Chime::PutAppInstanceStreamingConfigurationsResponse> instance

The data streaming configurations of an C<AppInstance>.


=head2 PutEventsConfiguration

=over

=item AccountId => Str

=item BotId => Str

=item [LambdaFunctionArn => Str]

=item [OutboundEventsHTTPSEndpoint => Str]


=back

Each argument is described in detail in: L<Paws::Chime::PutEventsConfiguration>

Returns: a L<Paws::Chime::PutEventsConfigurationResponse> instance

Creates an events configuration that allows a bot to receive outgoing
events sent by Amazon Chime. Choose either an HTTPS endpoint or a
Lambda function ARN. For more information, see Bot.


=head2 PutRetentionSettings

=over

=item AccountId => Str

=item RetentionSettings => L<Paws::Chime::RetentionSettings>


=back

Each argument is described in detail in: L<Paws::Chime::PutRetentionSettings>

Returns: a L<Paws::Chime::PutRetentionSettingsResponse> instance

Puts retention settings for the specified Amazon Chime Enterprise
account. We recommend using AWS CloudTrail to monitor usage of this API
for your account. For more information, see Logging Amazon Chime API
Calls with AWS CloudTrail
(https://docs.aws.amazon.com/chime/latest/ag/cloudtrail.html) in the
I<Amazon Chime Administration Guide>.

To turn off existing retention settings, remove the number of days from
the corresponding B<RetentionDays> field in the B<RetentionSettings>
object. For more information about retention settings, see Managing
Chat Retention Policies
(https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html) in
the I<Amazon Chime Administration Guide>.


=head2 PutSipMediaApplicationLoggingConfiguration

=over

=item SipMediaApplicationId => Str

=item [SipMediaApplicationLoggingConfiguration => L<Paws::Chime::SipMediaApplicationLoggingConfiguration>]


=back

Each argument is described in detail in: L<Paws::Chime::PutSipMediaApplicationLoggingConfiguration>

Returns: a L<Paws::Chime::PutSipMediaApplicationLoggingConfigurationResponse> instance

Updates the logging configuration for the specified SIP media
application.


=head2 PutVoiceConnectorEmergencyCallingConfiguration

=over

=item EmergencyCallingConfiguration => L<Paws::Chime::EmergencyCallingConfiguration>

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::PutVoiceConnectorEmergencyCallingConfiguration>

Returns: a L<Paws::Chime::PutVoiceConnectorEmergencyCallingConfigurationResponse> instance

Puts emergency calling configuration details to the specified Amazon
Chime Voice Connector, such as emergency phone numbers and calling
countries. Origination and termination settings must be enabled for the
Amazon Chime Voice Connector before emergency calling can be
configured.


=head2 PutVoiceConnectorLoggingConfiguration

=over

=item LoggingConfiguration => L<Paws::Chime::LoggingConfiguration>

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::PutVoiceConnectorLoggingConfiguration>

Returns: a L<Paws::Chime::PutVoiceConnectorLoggingConfigurationResponse> instance

Adds a logging configuration for the specified Amazon Chime Voice
Connector. The logging configuration specifies whether SIP message logs
are enabled for sending to Amazon CloudWatch Logs.


=head2 PutVoiceConnectorOrigination

=over

=item Origination => L<Paws::Chime::Origination>

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::PutVoiceConnectorOrigination>

Returns: a L<Paws::Chime::PutVoiceConnectorOriginationResponse> instance

Adds origination settings for the specified Amazon Chime Voice
Connector.

If emergency calling is configured for the Amazon Chime Voice
Connector, it must be deleted prior to turning off origination
settings.


=head2 PutVoiceConnectorProxy

=over

=item DefaultSessionExpiryMinutes => Int

=item PhoneNumberPoolCountries => ArrayRef[Str|Undef]

=item VoiceConnectorId => Str

=item [Disabled => Bool]

=item [FallBackPhoneNumber => Str]


=back

Each argument is described in detail in: L<Paws::Chime::PutVoiceConnectorProxy>

Returns: a L<Paws::Chime::PutVoiceConnectorProxyResponse> instance

Puts the specified proxy configuration to the specified Amazon Chime
Voice Connector.


=head2 PutVoiceConnectorStreamingConfiguration

=over

=item StreamingConfiguration => L<Paws::Chime::StreamingConfiguration>

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::PutVoiceConnectorStreamingConfiguration>

Returns: a L<Paws::Chime::PutVoiceConnectorStreamingConfigurationResponse> instance

Adds a streaming configuration for the specified Amazon Chime Voice
Connector. The streaming configuration specifies whether media
streaming is enabled for sending to Indonesians. It also sets the
retention period, in hours, for the Amazon Kinesis data.


=head2 PutVoiceConnectorTermination

=over

=item Termination => L<Paws::Chime::Termination>

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::PutVoiceConnectorTermination>

Returns: a L<Paws::Chime::PutVoiceConnectorTerminationResponse> instance

Adds termination settings for the specified Amazon Chime Voice
Connector.

If emergency calling is configured for the Amazon Chime Voice
Connector, it must be deleted prior to turning off termination
settings.


=head2 PutVoiceConnectorTerminationCredentials

=over

=item VoiceConnectorId => Str

=item [Credentials => ArrayRef[L<Paws::Chime::Credential>]]


=back

Each argument is described in detail in: L<Paws::Chime::PutVoiceConnectorTerminationCredentials>

Returns: nothing

Adds termination SIP credentials for the specified Amazon Chime Voice
Connector.


=head2 RedactChannelMessage

=over

=item ChannelArn => Str

=item MessageId => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::RedactChannelMessage>

Returns: a L<Paws::Chime::RedactChannelMessageResponse> instance

Redacts message content, but not metadata. The message exists in the
back end, but the action returns null content, and the state shows as
redacted.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 RedactConversationMessage

=over

=item AccountId => Str

=item ConversationId => Str

=item MessageId => Str


=back

Each argument is described in detail in: L<Paws::Chime::RedactConversationMessage>

Returns: a L<Paws::Chime::RedactConversationMessageResponse> instance

Redacts the specified message from the specified Amazon Chime
conversation.


=head2 RedactRoomMessage

=over

=item AccountId => Str

=item MessageId => Str

=item RoomId => Str


=back

Each argument is described in detail in: L<Paws::Chime::RedactRoomMessage>

Returns: a L<Paws::Chime::RedactRoomMessageResponse> instance

Redacts the specified message from the specified Amazon Chime channel.


=head2 RegenerateSecurityToken

=over

=item AccountId => Str

=item BotId => Str


=back

Each argument is described in detail in: L<Paws::Chime::RegenerateSecurityToken>

Returns: a L<Paws::Chime::RegenerateSecurityTokenResponse> instance

Regenerates the security token for a bot.


=head2 ResetPersonalPIN

=over

=item AccountId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::ResetPersonalPIN>

Returns: a L<Paws::Chime::ResetPersonalPINResponse> instance

Resets the personal meeting PIN for the specified user on an Amazon
Chime account. Returns the User object with the updated personal
meeting PIN.


=head2 RestorePhoneNumber

=over

=item PhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::Chime::RestorePhoneNumber>

Returns: a L<Paws::Chime::RestorePhoneNumberResponse> instance

Moves a phone number from the B<Deletion queue> back into the phone
number B<Inventory>.


=head2 SearchAvailablePhoneNumbers

=over

=item [AreaCode => Str]

=item [City => Str]

=item [Country => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PhoneNumberType => Str]

=item [State => Str]

=item [TollFreePrefix => Str]


=back

Each argument is described in detail in: L<Paws::Chime::SearchAvailablePhoneNumbers>

Returns: a L<Paws::Chime::SearchAvailablePhoneNumbersResponse> instance

Searches for phone numbers that can be ordered. For US numbers, provide
at least one of the following search filters: C<AreaCode>, C<City>,
C<State>, or C<TollFreePrefix>. If you provide C<City>, you must also
provide C<State>. Numbers outside the US only support the
C<PhoneNumberType> filter, which you must use.


=head2 SendChannelMessage

=over

=item ChannelArn => Str

=item ClientRequestToken => Str

=item Content => Str

=item Persistence => Str

=item Type => Str

=item [ChimeBearer => Str]

=item [Metadata => Str]


=back

Each argument is described in detail in: L<Paws::Chime::SendChannelMessage>

Returns: a L<Paws::Chime::SendChannelMessageResponse> instance

Sends a message to a particular channel that the member is a part of.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.

Also, C<STANDARD> messages can contain 4KB of data and the 1KB of
metadata. C<CONTROL> messages can contain 30 bytes of data and no
metadata.


=head2 TagAttendee

=over

=item AttendeeId => Str

=item MeetingId => Str

=item Tags => ArrayRef[L<Paws::Chime::Tag>]


=back

Each argument is described in detail in: L<Paws::Chime::TagAttendee>

Returns: nothing

Applies the specified tags to the specified Amazon Chime SDK attendee.


=head2 TagMeeting

=over

=item MeetingId => Str

=item Tags => ArrayRef[L<Paws::Chime::Tag>]


=back

Each argument is described in detail in: L<Paws::Chime::TagMeeting>

Returns: nothing

Applies the specified tags to the specified Amazon Chime SDK meeting.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::Chime::Tag>]


=back

Each argument is described in detail in: L<Paws::Chime::TagResource>

Returns: nothing

Applies the specified tags to the specified Amazon Chime SDK meeting
resource.


=head2 UntagAttendee

=over

=item AttendeeId => Str

=item MeetingId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Chime::UntagAttendee>

Returns: nothing

Untags the specified tags from the specified Amazon Chime SDK attendee.


=head2 UntagMeeting

=over

=item MeetingId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Chime::UntagMeeting>

Returns: nothing

Untags the specified tags from the specified Amazon Chime SDK meeting.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Chime::UntagResource>

Returns: nothing

Untags the specified tags from the specified Amazon Chime SDK meeting
resource.


=head2 UpdateAccount

=over

=item AccountId => Str

=item [DefaultLicense => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateAccount>

Returns: a L<Paws::Chime::UpdateAccountResponse> instance

Updates account details for the specified Amazon Chime account.
Currently, only account name and default license updates are supported
for this action.


=head2 UpdateAccountSettings

=over

=item AccountId => Str

=item AccountSettings => L<Paws::Chime::AccountSettings>


=back

Each argument is described in detail in: L<Paws::Chime::UpdateAccountSettings>

Returns: a L<Paws::Chime::UpdateAccountSettingsResponse> instance

Updates the settings for the specified Amazon Chime account. You can
update settings for remote control of shared screens, or for the
dial-out option. For more information about these settings, see Use the
Policies Page
(https://docs.aws.amazon.com/chime/latest/ag/policies.html) in the
I<Amazon Chime Administration Guide>.


=head2 UpdateAppInstance

=over

=item AppInstanceArn => Str

=item Name => Str

=item [Metadata => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateAppInstance>

Returns: a L<Paws::Chime::UpdateAppInstanceResponse> instance

Updates C<AppInstance> metadata.


=head2 UpdateAppInstanceUser

=over

=item AppInstanceUserArn => Str

=item Name => Str

=item [Metadata => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateAppInstanceUser>

Returns: a L<Paws::Chime::UpdateAppInstanceUserResponse> instance

Updates the details of an C<AppInstanceUser>. You can update names and
metadata.


=head2 UpdateBot

=over

=item AccountId => Str

=item BotId => Str

=item [Disabled => Bool]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateBot>

Returns: a L<Paws::Chime::UpdateBotResponse> instance

Updates the status of the specified bot, such as starting or stopping
the bot from running in your Amazon Chime Enterprise account.


=head2 UpdateChannel

=over

=item ChannelArn => Str

=item Mode => Str

=item Name => Str

=item [ChimeBearer => Str]

=item [Metadata => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateChannel>

Returns: a L<Paws::Chime::UpdateChannelResponse> instance

Update a channel's attributes.

B<Restriction>: You can't change a channel's privacy.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 UpdateChannelMessage

=over

=item ChannelArn => Str

=item MessageId => Str

=item [ChimeBearer => Str]

=item [Content => Str]

=item [Metadata => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateChannelMessage>

Returns: a L<Paws::Chime::UpdateChannelMessageResponse> instance

Updates the content of a message.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 UpdateChannelReadMarker

=over

=item ChannelArn => Str

=item [ChimeBearer => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateChannelReadMarker>

Returns: a L<Paws::Chime::UpdateChannelReadMarkerResponse> instance

The details of the time when a user last read messages in a channel.

The C<x-amz-chime-bearer> request header is mandatory. Use the
C<AppInstanceUserArn> of the user that makes the API call as the value
in the header.


=head2 UpdateGlobalSettings

=over

=item BusinessCalling => L<Paws::Chime::BusinessCallingSettings>

=item VoiceConnector => L<Paws::Chime::VoiceConnectorSettings>


=back

Each argument is described in detail in: L<Paws::Chime::UpdateGlobalSettings>

Returns: nothing

Updates global settings for the administrator's AWS account, such as
Amazon Chime Business Calling and Amazon Chime Voice Connector
settings.


=head2 UpdatePhoneNumber

=over

=item PhoneNumberId => Str

=item [CallingName => Str]

=item [ProductType => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdatePhoneNumber>

Returns: a L<Paws::Chime::UpdatePhoneNumberResponse> instance

Updates phone number details, such as product type or calling name, for
the specified phone number ID. You can update one phone number detail
at a time. For example, you can update either the product type or the
calling name in one action.

For toll-free numbers, you cannot use the Amazon Chime Business Calling
product type. For numbers outside the U.S., you must use the Amazon
Chime SIP Media Application Dial-In product type.

Updates to outbound calling names can take 72 hours to complete.
Pending updates to outbound calling names must be complete before you
can request another update.


=head2 UpdatePhoneNumberSettings

=over

=item CallingName => Str


=back

Each argument is described in detail in: L<Paws::Chime::UpdatePhoneNumberSettings>

Returns: nothing

Updates the phone number settings for the administrator's AWS account,
such as the default outbound calling name. You can update the default
outbound calling name once every seven days. Outbound calling names can
take up to 72 hours to update.


=head2 UpdateProxySession

=over

=item Capabilities => ArrayRef[Str|Undef]

=item ProxySessionId => Str

=item VoiceConnectorId => Str

=item [ExpiryMinutes => Int]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateProxySession>

Returns: a L<Paws::Chime::UpdateProxySessionResponse> instance

Updates the specified proxy session details, such as voice or SMS
capabilities.


=head2 UpdateRoom

=over

=item AccountId => Str

=item RoomId => Str

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateRoom>

Returns: a L<Paws::Chime::UpdateRoomResponse> instance

Updates room details, such as the room name, for a room in an Amazon
Chime Enterprise account.


=head2 UpdateRoomMembership

=over

=item AccountId => Str

=item MemberId => Str

=item RoomId => Str

=item [Role => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateRoomMembership>

Returns: a L<Paws::Chime::UpdateRoomMembershipResponse> instance

Updates room membership details, such as the member role, for a room in
an Amazon Chime Enterprise account. The member role designates whether
the member is a chat room administrator or a general chat room member.
The member role can be updated only for user IDs.


=head2 UpdateSipMediaApplication

=over

=item SipMediaApplicationId => Str

=item [Endpoints => ArrayRef[L<Paws::Chime::SipMediaApplicationEndpoint>]]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateSipMediaApplication>

Returns: a L<Paws::Chime::UpdateSipMediaApplicationResponse> instance

Updates the details of the specified SIP media application.


=head2 UpdateSipMediaApplicationCall

=over

=item Arguments => L<Paws::Chime::SMAUpdateCallArgumentsMap>

=item SipMediaApplicationId => Str

=item TransactionId => Str


=back

Each argument is described in detail in: L<Paws::Chime::UpdateSipMediaApplicationCall>

Returns: a L<Paws::Chime::UpdateSipMediaApplicationCallResponse> instance

Allows you to trigger a Lambda function at any time while a call is
active, and replace the current actions with new actions returned by
the invocation.


=head2 UpdateSipRule

=over

=item Name => Str

=item SipRuleId => Str

=item [Disabled => Bool]

=item [TargetApplications => ArrayRef[L<Paws::Chime::SipRuleTargetApplication>]]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateSipRule>

Returns: a L<Paws::Chime::UpdateSipRuleResponse> instance

Updates the details of the specified SIP rule.


=head2 UpdateUser

=over

=item AccountId => Str

=item UserId => Str

=item [AlexaForBusinessMetadata => L<Paws::Chime::AlexaForBusinessMetadata>]

=item [LicenseType => Str]

=item [UserType => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateUser>

Returns: a L<Paws::Chime::UpdateUserResponse> instance

Updates user details for a specified user ID. Currently, only
C<LicenseType> updates are supported for this action.


=head2 UpdateUserSettings

=over

=item AccountId => Str

=item UserId => Str

=item UserSettings => L<Paws::Chime::UserSettings>


=back

Each argument is described in detail in: L<Paws::Chime::UpdateUserSettings>

Returns: nothing

Updates the settings for the specified user, such as phone number
settings.


=head2 UpdateVoiceConnector

=over

=item Name => Str

=item RequireEncryption => Bool

=item VoiceConnectorId => Str


=back

Each argument is described in detail in: L<Paws::Chime::UpdateVoiceConnector>

Returns: a L<Paws::Chime::UpdateVoiceConnectorResponse> instance

Updates details for the specified Amazon Chime Voice Connector.


=head2 UpdateVoiceConnectorGroup

=over

=item Name => Str

=item VoiceConnectorGroupId => Str

=item VoiceConnectorItems => ArrayRef[L<Paws::Chime::VoiceConnectorItem>]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateVoiceConnectorGroup>

Returns: a L<Paws::Chime::UpdateVoiceConnectorGroupResponse> instance

Updates details of the specified Amazon Chime Voice Connector group,
such as the name and Amazon Chime Voice Connector priority ranking.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccounts(sub { },[MaxResults => Int, Name => Str, NextToken => Str, UserEmail => Str])

=head2 ListAllAccounts([MaxResults => Int, Name => Str, NextToken => Str, UserEmail => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Accounts, passing the object as the first parameter, and the string 'Accounts' as the second parameter 

If not, it will return a a L<Paws::Chime::ListAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },AccountId => Str, [MaxResults => Int, NextToken => Str, UserEmail => Str, UserType => Str])

=head2 ListAllUsers(AccountId => Str, [MaxResults => Int, NextToken => Str, UserEmail => Str, UserType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::Chime::ListUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

