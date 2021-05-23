package Paws::Pinpoint;
  use Moose;
  sub service { 'pinpoint' }
  sub signing_name { 'mobiletargeting' }
  sub version { '2016-12-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::CreateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::CreateCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEmailTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::CreateEmailTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::CreateExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::CreateImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJourney {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::CreateJourney', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePushTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::CreatePushTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRecommenderConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::CreateRecommenderConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSegment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::CreateSegment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSmsTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::CreateSmsTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVoiceTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::CreateVoiceTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAdmChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteAdmChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApnsChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteApnsChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApnsSandboxChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteApnsSandboxChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApnsVoipChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteApnsVoipChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApnsVoipSandboxChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteApnsVoipSandboxChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBaiduChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteBaiduChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEmailChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteEmailChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEmailTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteEmailTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteEventStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGcmChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteGcmChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJourney {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteJourney', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePushTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeletePushTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRecommenderConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteRecommenderConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSegment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteSegment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSmsChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteSmsChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSmsTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteSmsTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteUserEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteVoiceChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVoiceTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::DeleteVoiceTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAdmChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetAdmChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApnsChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetApnsChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApnsSandboxChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetApnsSandboxChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApnsVoipChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetApnsVoipChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApnsVoipSandboxChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetApnsVoipSandboxChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplicationDateRangeKpi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetApplicationDateRangeKpi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplicationSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetApplicationSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetApps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBaiduChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetBaiduChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCampaignActivities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetCampaignActivities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCampaignDateRangeKpi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetCampaignDateRangeKpi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCampaigns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetCampaigns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCampaignVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetCampaignVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCampaignVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetCampaignVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEmailChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetEmailChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEmailTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetEmailTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetEventStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGcmChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetGcmChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJourney {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetJourney', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJourneyDateRangeKpi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetJourneyDateRangeKpi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJourneyExecutionActivityMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetJourneyExecutionActivityMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJourneyExecutionMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetJourneyExecutionMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPushTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetPushTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecommenderConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetRecommenderConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecommenderConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetRecommenderConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSegment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetSegment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSegmentExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetSegmentExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSegmentImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetSegmentImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSegments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetSegments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSegmentVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetSegmentVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSegmentVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetSegmentVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSmsChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetSmsChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSmsTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetSmsTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetUserEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetVoiceChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVoiceTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetVoiceTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJourneys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::ListJourneys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::ListTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplateVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::ListTemplateVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PhoneNumberValidate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::PhoneNumberValidate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::PutEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEventStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::PutEventStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::RemoveAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendMessages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::SendMessages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendUsersMessages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::SendUsersMessages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAdmChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateAdmChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApnsChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateApnsChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApnsSandboxChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateApnsSandboxChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApnsVoipChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateApnsVoipChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApnsVoipSandboxChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateApnsVoipSandboxChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplicationSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateApplicationSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBaiduChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateBaiduChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEmailChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateEmailChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEmailTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateEmailTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEndpointsBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateEndpointsBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGcmChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateGcmChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJourney {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateJourney', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJourneyState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateJourneyState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePushTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdatePushTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRecommenderConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateRecommenderConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSegment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateSegment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSmsChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateSmsChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSmsTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateSmsTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTemplateActiveVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateTemplateActiveVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVoiceChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateVoiceChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVoiceTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateVoiceTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateApp CreateCampaign CreateEmailTemplate CreateExportJob CreateImportJob CreateJourney CreatePushTemplate CreateRecommenderConfiguration CreateSegment CreateSmsTemplate CreateVoiceTemplate DeleteAdmChannel DeleteApnsChannel DeleteApnsSandboxChannel DeleteApnsVoipChannel DeleteApnsVoipSandboxChannel DeleteApp DeleteBaiduChannel DeleteCampaign DeleteEmailChannel DeleteEmailTemplate DeleteEndpoint DeleteEventStream DeleteGcmChannel DeleteJourney DeletePushTemplate DeleteRecommenderConfiguration DeleteSegment DeleteSmsChannel DeleteSmsTemplate DeleteUserEndpoints DeleteVoiceChannel DeleteVoiceTemplate GetAdmChannel GetApnsChannel GetApnsSandboxChannel GetApnsVoipChannel GetApnsVoipSandboxChannel GetApp GetApplicationDateRangeKpi GetApplicationSettings GetApps GetBaiduChannel GetCampaign GetCampaignActivities GetCampaignDateRangeKpi GetCampaigns GetCampaignVersion GetCampaignVersions GetChannels GetEmailChannel GetEmailTemplate GetEndpoint GetEventStream GetExportJob GetExportJobs GetGcmChannel GetImportJob GetImportJobs GetJourney GetJourneyDateRangeKpi GetJourneyExecutionActivityMetrics GetJourneyExecutionMetrics GetPushTemplate GetRecommenderConfiguration GetRecommenderConfigurations GetSegment GetSegmentExportJobs GetSegmentImportJobs GetSegments GetSegmentVersion GetSegmentVersions GetSmsChannel GetSmsTemplate GetUserEndpoints GetVoiceChannel GetVoiceTemplate ListJourneys ListTagsForResource ListTemplates ListTemplateVersions PhoneNumberValidate PutEvents PutEventStream RemoveAttributes SendMessages SendUsersMessages TagResource UntagResource UpdateAdmChannel UpdateApnsChannel UpdateApnsSandboxChannel UpdateApnsVoipChannel UpdateApnsVoipSandboxChannel UpdateApplicationSettings UpdateBaiduChannel UpdateCampaign UpdateEmailChannel UpdateEmailTemplate UpdateEndpoint UpdateEndpointsBatch UpdateGcmChannel UpdateJourney UpdateJourneyState UpdatePushTemplate UpdateRecommenderConfiguration UpdateSegment UpdateSmsChannel UpdateSmsTemplate UpdateTemplateActiveVersion UpdateVoiceChannel UpdateVoiceTemplate / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint - Perl Interface to AWS Amazon Pinpoint

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Pinpoint');
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

Doc Engage API - Amazon Pinpoint API

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01>


=head1 METHODS

=head2 CreateApp

=over

=item CreateApplicationRequest => L<Paws::Pinpoint::CreateApplicationRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::CreateApp>

Returns: a L<Paws::Pinpoint::CreateAppResponse> instance

Creates an application.


=head2 CreateCampaign

=over

=item ApplicationId => Str

=item WriteCampaignRequest => L<Paws::Pinpoint::WriteCampaignRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::CreateCampaign>

Returns: a L<Paws::Pinpoint::CreateCampaignResponse> instance

Creates a new campaign for an application or updates the settings of an
existing campaign for an application.


=head2 CreateEmailTemplate

=over

=item EmailTemplateRequest => L<Paws::Pinpoint::EmailTemplateRequest>

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::CreateEmailTemplate>

Returns: a L<Paws::Pinpoint::CreateEmailTemplateResponse> instance

Creates a message template for messages that are sent through the email
channel.


=head2 CreateExportJob

=over

=item ApplicationId => Str

=item ExportJobRequest => L<Paws::Pinpoint::ExportJobRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::CreateExportJob>

Returns: a L<Paws::Pinpoint::CreateExportJobResponse> instance

Creates an export job for an application.


=head2 CreateImportJob

=over

=item ApplicationId => Str

=item ImportJobRequest => L<Paws::Pinpoint::ImportJobRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::CreateImportJob>

Returns: a L<Paws::Pinpoint::CreateImportJobResponse> instance

Creates an import job for an application.


=head2 CreateJourney

=over

=item ApplicationId => Str

=item WriteJourneyRequest => L<Paws::Pinpoint::WriteJourneyRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::CreateJourney>

Returns: a L<Paws::Pinpoint::CreateJourneyResponse> instance

Creates a journey for an application.


=head2 CreatePushTemplate

=over

=item PushNotificationTemplateRequest => L<Paws::Pinpoint::PushNotificationTemplateRequest>

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::CreatePushTemplate>

Returns: a L<Paws::Pinpoint::CreatePushTemplateResponse> instance

Creates a message template for messages that are sent through a push
notification channel.


=head2 CreateRecommenderConfiguration

=over

=item CreateRecommenderConfiguration => L<Paws::Pinpoint::CreateRecommenderConfigurationObj>


=back

Each argument is described in detail in: L<Paws::Pinpoint::CreateRecommenderConfiguration>

Returns: a L<Paws::Pinpoint::CreateRecommenderConfigurationResponse> instance

Creates an Amazon Pinpoint configuration for a recommender model.


=head2 CreateSegment

=over

=item ApplicationId => Str

=item WriteSegmentRequest => L<Paws::Pinpoint::WriteSegmentRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::CreateSegment>

Returns: a L<Paws::Pinpoint::CreateSegmentResponse> instance

Creates a new segment for an application or updates the configuration,
dimension, and other settings for an existing segment that's associated
with an application.


=head2 CreateSmsTemplate

=over

=item SMSTemplateRequest => L<Paws::Pinpoint::SMSTemplateRequest>

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::CreateSmsTemplate>

Returns: a L<Paws::Pinpoint::CreateSmsTemplateResponse> instance

Creates a message template for messages that are sent through the SMS
channel.


=head2 CreateVoiceTemplate

=over

=item TemplateName => Str

=item VoiceTemplateRequest => L<Paws::Pinpoint::VoiceTemplateRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::CreateVoiceTemplate>

Returns: a L<Paws::Pinpoint::CreateVoiceTemplateResponse> instance

Creates a message template for messages that are sent through the voice
channel.


=head2 DeleteAdmChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteAdmChannel>

Returns: a L<Paws::Pinpoint::DeleteAdmChannelResponse> instance

Disables the ADM channel for an application and deletes any existing
settings for the channel.


=head2 DeleteApnsChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteApnsChannel>

Returns: a L<Paws::Pinpoint::DeleteApnsChannelResponse> instance

Disables the APNs channel for an application and deletes any existing
settings for the channel.


=head2 DeleteApnsSandboxChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteApnsSandboxChannel>

Returns: a L<Paws::Pinpoint::DeleteApnsSandboxChannelResponse> instance

Disables the APNs sandbox channel for an application and deletes any
existing settings for the channel.


=head2 DeleteApnsVoipChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteApnsVoipChannel>

Returns: a L<Paws::Pinpoint::DeleteApnsVoipChannelResponse> instance

Disables the APNs VoIP channel for an application and deletes any
existing settings for the channel.


=head2 DeleteApnsVoipSandboxChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteApnsVoipSandboxChannel>

Returns: a L<Paws::Pinpoint::DeleteApnsVoipSandboxChannelResponse> instance

Disables the APNs VoIP sandbox channel for an application and deletes
any existing settings for the channel.


=head2 DeleteApp

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteApp>

Returns: a L<Paws::Pinpoint::DeleteAppResponse> instance

Deletes an application.


=head2 DeleteBaiduChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteBaiduChannel>

Returns: a L<Paws::Pinpoint::DeleteBaiduChannelResponse> instance

Disables the Baidu channel for an application and deletes any existing
settings for the channel.


=head2 DeleteCampaign

=over

=item ApplicationId => Str

=item CampaignId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteCampaign>

Returns: a L<Paws::Pinpoint::DeleteCampaignResponse> instance

Deletes a campaign from an application.


=head2 DeleteEmailChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteEmailChannel>

Returns: a L<Paws::Pinpoint::DeleteEmailChannelResponse> instance

Disables the email channel for an application and deletes any existing
settings for the channel.


=head2 DeleteEmailTemplate

=over

=item TemplateName => Str

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteEmailTemplate>

Returns: a L<Paws::Pinpoint::DeleteEmailTemplateResponse> instance

Deletes a message template for messages that were sent through the
email channel.


=head2 DeleteEndpoint

=over

=item ApplicationId => Str

=item EndpointId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteEndpoint>

Returns: a L<Paws::Pinpoint::DeleteEndpointResponse> instance

Deletes an endpoint from an application.


=head2 DeleteEventStream

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteEventStream>

Returns: a L<Paws::Pinpoint::DeleteEventStreamResponse> instance

Deletes the event stream for an application.


=head2 DeleteGcmChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteGcmChannel>

Returns: a L<Paws::Pinpoint::DeleteGcmChannelResponse> instance

Disables the GCM channel for an application and deletes any existing
settings for the channel.


=head2 DeleteJourney

=over

=item ApplicationId => Str

=item JourneyId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteJourney>

Returns: a L<Paws::Pinpoint::DeleteJourneyResponse> instance

Deletes a journey from an application.


=head2 DeletePushTemplate

=over

=item TemplateName => Str

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeletePushTemplate>

Returns: a L<Paws::Pinpoint::DeletePushTemplateResponse> instance

Deletes a message template for messages that were sent through a push
notification channel.


=head2 DeleteRecommenderConfiguration

=over

=item RecommenderId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteRecommenderConfiguration>

Returns: a L<Paws::Pinpoint::DeleteRecommenderConfigurationResponse> instance

Deletes an Amazon Pinpoint configuration for a recommender model.


=head2 DeleteSegment

=over

=item ApplicationId => Str

=item SegmentId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteSegment>

Returns: a L<Paws::Pinpoint::DeleteSegmentResponse> instance

Deletes a segment from an application.


=head2 DeleteSmsChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteSmsChannel>

Returns: a L<Paws::Pinpoint::DeleteSmsChannelResponse> instance

Disables the SMS channel for an application and deletes any existing
settings for the channel.


=head2 DeleteSmsTemplate

=over

=item TemplateName => Str

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteSmsTemplate>

Returns: a L<Paws::Pinpoint::DeleteSmsTemplateResponse> instance

Deletes a message template for messages that were sent through the SMS
channel.


=head2 DeleteUserEndpoints

=over

=item ApplicationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteUserEndpoints>

Returns: a L<Paws::Pinpoint::DeleteUserEndpointsResponse> instance

Deletes all the endpoints that are associated with a specific user ID.


=head2 DeleteVoiceChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteVoiceChannel>

Returns: a L<Paws::Pinpoint::DeleteVoiceChannelResponse> instance

Disables the voice channel for an application and deletes any existing
settings for the channel.


=head2 DeleteVoiceTemplate

=over

=item TemplateName => Str

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::DeleteVoiceTemplate>

Returns: a L<Paws::Pinpoint::DeleteVoiceTemplateResponse> instance

Deletes a message template for messages that were sent through the
voice channel.


=head2 GetAdmChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetAdmChannel>

Returns: a L<Paws::Pinpoint::GetAdmChannelResponse> instance

Retrieves information about the status and settings of the ADM channel
for an application.


=head2 GetApnsChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetApnsChannel>

Returns: a L<Paws::Pinpoint::GetApnsChannelResponse> instance

Retrieves information about the status and settings of the APNs channel
for an application.


=head2 GetApnsSandboxChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetApnsSandboxChannel>

Returns: a L<Paws::Pinpoint::GetApnsSandboxChannelResponse> instance

Retrieves information about the status and settings of the APNs sandbox
channel for an application.


=head2 GetApnsVoipChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetApnsVoipChannel>

Returns: a L<Paws::Pinpoint::GetApnsVoipChannelResponse> instance

Retrieves information about the status and settings of the APNs VoIP
channel for an application.


=head2 GetApnsVoipSandboxChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetApnsVoipSandboxChannel>

Returns: a L<Paws::Pinpoint::GetApnsVoipSandboxChannelResponse> instance

Retrieves information about the status and settings of the APNs VoIP
sandbox channel for an application.


=head2 GetApp

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetApp>

Returns: a L<Paws::Pinpoint::GetAppResponse> instance

Retrieves information about an application.


=head2 GetApplicationDateRangeKpi

=over

=item ApplicationId => Str

=item KpiName => Str

=item [EndTime => Str]

=item [NextToken => Str]

=item [PageSize => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetApplicationDateRangeKpi>

Returns: a L<Paws::Pinpoint::GetApplicationDateRangeKpiResponse> instance

Retrieves (queries) pre-aggregated data for a standard metric that
applies to an application.


=head2 GetApplicationSettings

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetApplicationSettings>

Returns: a L<Paws::Pinpoint::GetApplicationSettingsResponse> instance

Retrieves information about the settings for an application.


=head2 GetApps

=over

=item [PageSize => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetApps>

Returns: a L<Paws::Pinpoint::GetAppsResponse> instance

Retrieves information about all the applications that are associated
with your Amazon Pinpoint account.


=head2 GetBaiduChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetBaiduChannel>

Returns: a L<Paws::Pinpoint::GetBaiduChannelResponse> instance

Retrieves information about the status and settings of the Baidu
channel for an application.


=head2 GetCampaign

=over

=item ApplicationId => Str

=item CampaignId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetCampaign>

Returns: a L<Paws::Pinpoint::GetCampaignResponse> instance

Retrieves information about the status, configuration, and other
settings for a campaign.


=head2 GetCampaignActivities

=over

=item ApplicationId => Str

=item CampaignId => Str

=item [PageSize => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetCampaignActivities>

Returns: a L<Paws::Pinpoint::GetCampaignActivitiesResponse> instance

Retrieves information about all the activities for a campaign.


=head2 GetCampaignDateRangeKpi

=over

=item ApplicationId => Str

=item CampaignId => Str

=item KpiName => Str

=item [EndTime => Str]

=item [NextToken => Str]

=item [PageSize => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetCampaignDateRangeKpi>

Returns: a L<Paws::Pinpoint::GetCampaignDateRangeKpiResponse> instance

Retrieves (queries) pre-aggregated data for a standard metric that
applies to a campaign.


=head2 GetCampaigns

=over

=item ApplicationId => Str

=item [PageSize => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetCampaigns>

Returns: a L<Paws::Pinpoint::GetCampaignsResponse> instance

Retrieves information about the status, configuration, and other
settings for all the campaigns that are associated with an application.


=head2 GetCampaignVersion

=over

=item ApplicationId => Str

=item CampaignId => Str

=item Version => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetCampaignVersion>

Returns: a L<Paws::Pinpoint::GetCampaignVersionResponse> instance

Retrieves information about the status, configuration, and other
settings for a specific version of a campaign.


=head2 GetCampaignVersions

=over

=item ApplicationId => Str

=item CampaignId => Str

=item [PageSize => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetCampaignVersions>

Returns: a L<Paws::Pinpoint::GetCampaignVersionsResponse> instance

Retrieves information about the status, configuration, and other
settings for all versions of a campaign.


=head2 GetChannels

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetChannels>

Returns: a L<Paws::Pinpoint::GetChannelsResponse> instance

Retrieves information about the history and status of each channel for
an application.


=head2 GetEmailChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetEmailChannel>

Returns: a L<Paws::Pinpoint::GetEmailChannelResponse> instance

Retrieves information about the status and settings of the email
channel for an application.


=head2 GetEmailTemplate

=over

=item TemplateName => Str

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetEmailTemplate>

Returns: a L<Paws::Pinpoint::GetEmailTemplateResponse> instance

Retrieves the content and settings of a message template for messages
that are sent through the email channel.


=head2 GetEndpoint

=over

=item ApplicationId => Str

=item EndpointId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetEndpoint>

Returns: a L<Paws::Pinpoint::GetEndpointResponse> instance

Retrieves information about the settings and attributes of a specific
endpoint for an application.


=head2 GetEventStream

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetEventStream>

Returns: a L<Paws::Pinpoint::GetEventStreamResponse> instance

Retrieves information about the event stream settings for an
application.


=head2 GetExportJob

=over

=item ApplicationId => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetExportJob>

Returns: a L<Paws::Pinpoint::GetExportJobResponse> instance

Retrieves information about the status and settings of a specific
export job for an application.


=head2 GetExportJobs

=over

=item ApplicationId => Str

=item [PageSize => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetExportJobs>

Returns: a L<Paws::Pinpoint::GetExportJobsResponse> instance

Retrieves information about the status and settings of all the export
jobs for an application.


=head2 GetGcmChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetGcmChannel>

Returns: a L<Paws::Pinpoint::GetGcmChannelResponse> instance

Retrieves information about the status and settings of the GCM channel
for an application.


=head2 GetImportJob

=over

=item ApplicationId => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetImportJob>

Returns: a L<Paws::Pinpoint::GetImportJobResponse> instance

Retrieves information about the status and settings of a specific
import job for an application.


=head2 GetImportJobs

=over

=item ApplicationId => Str

=item [PageSize => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetImportJobs>

Returns: a L<Paws::Pinpoint::GetImportJobsResponse> instance

Retrieves information about the status and settings of all the import
jobs for an application.


=head2 GetJourney

=over

=item ApplicationId => Str

=item JourneyId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetJourney>

Returns: a L<Paws::Pinpoint::GetJourneyResponse> instance

Retrieves information about the status, configuration, and other
settings for a journey.


=head2 GetJourneyDateRangeKpi

=over

=item ApplicationId => Str

=item JourneyId => Str

=item KpiName => Str

=item [EndTime => Str]

=item [NextToken => Str]

=item [PageSize => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetJourneyDateRangeKpi>

Returns: a L<Paws::Pinpoint::GetJourneyDateRangeKpiResponse> instance

Retrieves (queries) pre-aggregated data for a standard engagement
metric that applies to a journey.


=head2 GetJourneyExecutionActivityMetrics

=over

=item ApplicationId => Str

=item JourneyActivityId => Str

=item JourneyId => Str

=item [NextToken => Str]

=item [PageSize => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetJourneyExecutionActivityMetrics>

Returns: a L<Paws::Pinpoint::GetJourneyExecutionActivityMetricsResponse> instance

Retrieves (queries) pre-aggregated data for a standard execution metric
that applies to a journey activity.


=head2 GetJourneyExecutionMetrics

=over

=item ApplicationId => Str

=item JourneyId => Str

=item [NextToken => Str]

=item [PageSize => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetJourneyExecutionMetrics>

Returns: a L<Paws::Pinpoint::GetJourneyExecutionMetricsResponse> instance

Retrieves (queries) pre-aggregated data for a standard execution metric
that applies to a journey.


=head2 GetPushTemplate

=over

=item TemplateName => Str

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetPushTemplate>

Returns: a L<Paws::Pinpoint::GetPushTemplateResponse> instance

Retrieves the content and settings of a message template for messages
that are sent through a push notification channel.


=head2 GetRecommenderConfiguration

=over

=item RecommenderId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetRecommenderConfiguration>

Returns: a L<Paws::Pinpoint::GetRecommenderConfigurationResponse> instance

Retrieves information about an Amazon Pinpoint configuration for a
recommender model.


=head2 GetRecommenderConfigurations

=over

=item [PageSize => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetRecommenderConfigurations>

Returns: a L<Paws::Pinpoint::GetRecommenderConfigurationsResponse> instance

Retrieves information about all the recommender model configurations
that are associated with your Amazon Pinpoint account.


=head2 GetSegment

=over

=item ApplicationId => Str

=item SegmentId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetSegment>

Returns: a L<Paws::Pinpoint::GetSegmentResponse> instance

Retrieves information about the configuration, dimension, and other
settings for a specific segment that's associated with an application.


=head2 GetSegmentExportJobs

=over

=item ApplicationId => Str

=item SegmentId => Str

=item [PageSize => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetSegmentExportJobs>

Returns: a L<Paws::Pinpoint::GetSegmentExportJobsResponse> instance

Retrieves information about the status and settings of the export jobs
for a segment.


=head2 GetSegmentImportJobs

=over

=item ApplicationId => Str

=item SegmentId => Str

=item [PageSize => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetSegmentImportJobs>

Returns: a L<Paws::Pinpoint::GetSegmentImportJobsResponse> instance

Retrieves information about the status and settings of the import jobs
for a segment.


=head2 GetSegments

=over

=item ApplicationId => Str

=item [PageSize => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetSegments>

Returns: a L<Paws::Pinpoint::GetSegmentsResponse> instance

Retrieves information about the configuration, dimension, and other
settings for all the segments that are associated with an application.


=head2 GetSegmentVersion

=over

=item ApplicationId => Str

=item SegmentId => Str

=item Version => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetSegmentVersion>

Returns: a L<Paws::Pinpoint::GetSegmentVersionResponse> instance

Retrieves information about the configuration, dimension, and other
settings for a specific version of a segment that's associated with an
application.


=head2 GetSegmentVersions

=over

=item ApplicationId => Str

=item SegmentId => Str

=item [PageSize => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetSegmentVersions>

Returns: a L<Paws::Pinpoint::GetSegmentVersionsResponse> instance

Retrieves information about the configuration, dimension, and other
settings for all the versions of a specific segment that's associated
with an application.


=head2 GetSmsChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetSmsChannel>

Returns: a L<Paws::Pinpoint::GetSmsChannelResponse> instance

Retrieves information about the status and settings of the SMS channel
for an application.


=head2 GetSmsTemplate

=over

=item TemplateName => Str

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetSmsTemplate>

Returns: a L<Paws::Pinpoint::GetSmsTemplateResponse> instance

Retrieves the content and settings of a message template for messages
that are sent through the SMS channel.


=head2 GetUserEndpoints

=over

=item ApplicationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetUserEndpoints>

Returns: a L<Paws::Pinpoint::GetUserEndpointsResponse> instance

Retrieves information about all the endpoints that are associated with
a specific user ID.


=head2 GetVoiceChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetVoiceChannel>

Returns: a L<Paws::Pinpoint::GetVoiceChannelResponse> instance

Retrieves information about the status and settings of the voice
channel for an application.


=head2 GetVoiceTemplate

=over

=item TemplateName => Str

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetVoiceTemplate>

Returns: a L<Paws::Pinpoint::GetVoiceTemplateResponse> instance

Retrieves the content and settings of a message template for messages
that are sent through the voice channel.


=head2 ListJourneys

=over

=item ApplicationId => Str

=item [PageSize => Str]

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::ListJourneys>

Returns: a L<Paws::Pinpoint::ListJourneysResponse> instance

Retrieves information about the status, configuration, and other
settings for all the journeys that are associated with an application.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::ListTagsForResource>

Returns: a L<Paws::Pinpoint::ListTagsForResourceResponse> instance

Retrieves all the tags (keys and values) that are associated with an
application, campaign, message template, or segment.


=head2 ListTemplates

=over

=item [NextToken => Str]

=item [PageSize => Str]

=item [Prefix => Str]

=item [TemplateType => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::ListTemplates>

Returns: a L<Paws::Pinpoint::ListTemplatesResponse> instance

Retrieves information about all the message templates that are
associated with your Amazon Pinpoint account.


=head2 ListTemplateVersions

=over

=item TemplateName => Str

=item TemplateType => Str

=item [NextToken => Str]

=item [PageSize => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::ListTemplateVersions>

Returns: a L<Paws::Pinpoint::ListTemplateVersionsResponse> instance

Retrieves information about all the versions of a specific message
template.


=head2 PhoneNumberValidate

=over

=item NumberValidateRequest => L<Paws::Pinpoint::NumberValidateRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::PhoneNumberValidate>

Returns: a L<Paws::Pinpoint::PhoneNumberValidateResponse> instance

Retrieves information about a phone number.


=head2 PutEvents

=over

=item ApplicationId => Str

=item EventsRequest => L<Paws::Pinpoint::EventsRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::PutEvents>

Returns: a L<Paws::Pinpoint::PutEventsResponse> instance

Creates a new event to record for endpoints, or creates or updates
endpoint data that existing events are associated with.


=head2 PutEventStream

=over

=item ApplicationId => Str

=item WriteEventStream => L<Paws::Pinpoint::WriteEventStream>


=back

Each argument is described in detail in: L<Paws::Pinpoint::PutEventStream>

Returns: a L<Paws::Pinpoint::PutEventStreamResponse> instance

Creates a new event stream for an application or updates the settings
of an existing event stream for an application.


=head2 RemoveAttributes

=over

=item ApplicationId => Str

=item AttributeType => Str

=item UpdateAttributesRequest => L<Paws::Pinpoint::UpdateAttributesRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::RemoveAttributes>

Returns: a L<Paws::Pinpoint::RemoveAttributesResponse> instance

Removes one or more attributes, of the same attribute type, from all
the endpoints that are associated with an application.


=head2 SendMessages

=over

=item ApplicationId => Str

=item MessageRequest => L<Paws::Pinpoint::MessageRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::SendMessages>

Returns: a L<Paws::Pinpoint::SendMessagesResponse> instance

Creates and sends a direct message.


=head2 SendUsersMessages

=over

=item ApplicationId => Str

=item SendUsersMessageRequest => L<Paws::Pinpoint::SendUsersMessageRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::SendUsersMessages>

Returns: a L<Paws::Pinpoint::SendUsersMessagesResponse> instance

Creates and sends a message to a list of users.


=head2 TagResource

=over

=item ResourceArn => Str

=item TagsModel => L<Paws::Pinpoint::TagsModel>


=back

Each argument is described in detail in: L<Paws::Pinpoint::TagResource>

Returns: nothing

Adds one or more tags (keys and values) to an application, campaign,
message template, or segment.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Pinpoint::UntagResource>

Returns: nothing

Removes one or more tags (keys and values) from an application,
campaign, message template, or segment.


=head2 UpdateAdmChannel

=over

=item ADMChannelRequest => L<Paws::Pinpoint::ADMChannelRequest>

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateAdmChannel>

Returns: a L<Paws::Pinpoint::UpdateAdmChannelResponse> instance

Enables the ADM channel for an application or updates the status and
settings of the ADM channel for an application.


=head2 UpdateApnsChannel

=over

=item APNSChannelRequest => L<Paws::Pinpoint::APNSChannelRequest>

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApnsChannel>

Returns: a L<Paws::Pinpoint::UpdateApnsChannelResponse> instance

Enables the APNs channel for an application or updates the status and
settings of the APNs channel for an application.


=head2 UpdateApnsSandboxChannel

=over

=item APNSSandboxChannelRequest => L<Paws::Pinpoint::APNSSandboxChannelRequest>

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApnsSandboxChannel>

Returns: a L<Paws::Pinpoint::UpdateApnsSandboxChannelResponse> instance

Enables the APNs sandbox channel for an application or updates the
status and settings of the APNs sandbox channel for an application.


=head2 UpdateApnsVoipChannel

=over

=item APNSVoipChannelRequest => L<Paws::Pinpoint::APNSVoipChannelRequest>

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApnsVoipChannel>

Returns: a L<Paws::Pinpoint::UpdateApnsVoipChannelResponse> instance

Enables the APNs VoIP channel for an application or updates the status
and settings of the APNs VoIP channel for an application.


=head2 UpdateApnsVoipSandboxChannel

=over

=item APNSVoipSandboxChannelRequest => L<Paws::Pinpoint::APNSVoipSandboxChannelRequest>

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApnsVoipSandboxChannel>

Returns: a L<Paws::Pinpoint::UpdateApnsVoipSandboxChannelResponse> instance

Enables the APNs VoIP sandbox channel for an application or updates the
status and settings of the APNs VoIP sandbox channel for an
application.


=head2 UpdateApplicationSettings

=over

=item ApplicationId => Str

=item WriteApplicationSettingsRequest => L<Paws::Pinpoint::WriteApplicationSettingsRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApplicationSettings>

Returns: a L<Paws::Pinpoint::UpdateApplicationSettingsResponse> instance

Updates the settings for an application.


=head2 UpdateBaiduChannel

=over

=item ApplicationId => Str

=item BaiduChannelRequest => L<Paws::Pinpoint::BaiduChannelRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateBaiduChannel>

Returns: a L<Paws::Pinpoint::UpdateBaiduChannelResponse> instance

Enables the Baidu channel for an application or updates the status and
settings of the Baidu channel for an application.


=head2 UpdateCampaign

=over

=item ApplicationId => Str

=item CampaignId => Str

=item WriteCampaignRequest => L<Paws::Pinpoint::WriteCampaignRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateCampaign>

Returns: a L<Paws::Pinpoint::UpdateCampaignResponse> instance

Updates the configuration and other settings for a campaign.


=head2 UpdateEmailChannel

=over

=item ApplicationId => Str

=item EmailChannelRequest => L<Paws::Pinpoint::EmailChannelRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateEmailChannel>

Returns: a L<Paws::Pinpoint::UpdateEmailChannelResponse> instance

Enables the email channel for an application or updates the status and
settings of the email channel for an application.


=head2 UpdateEmailTemplate

=over

=item EmailTemplateRequest => L<Paws::Pinpoint::EmailTemplateRequest>

=item TemplateName => Str

=item [CreateNewVersion => Bool]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateEmailTemplate>

Returns: a L<Paws::Pinpoint::UpdateEmailTemplateResponse> instance

Updates an existing message template for messages that are sent through
the email channel.


=head2 UpdateEndpoint

=over

=item ApplicationId => Str

=item EndpointId => Str

=item EndpointRequest => L<Paws::Pinpoint::EndpointRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateEndpoint>

Returns: a L<Paws::Pinpoint::UpdateEndpointResponse> instance

Creates a new endpoint for an application or updates the settings and
attributes of an existing endpoint for an application. You can also use
this operation to define custom attributes for an endpoint. If an
update includes one or more values for a custom attribute, Amazon
Pinpoint replaces (overwrites) any existing values with the new values.


=head2 UpdateEndpointsBatch

=over

=item ApplicationId => Str

=item EndpointBatchRequest => L<Paws::Pinpoint::EndpointBatchRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateEndpointsBatch>

Returns: a L<Paws::Pinpoint::UpdateEndpointsBatchResponse> instance

Creates a new batch of endpoints for an application or updates the
settings and attributes of a batch of existing endpoints for an
application. You can also use this operation to define custom
attributes for a batch of endpoints. If an update includes one or more
values for a custom attribute, Amazon Pinpoint replaces (overwrites)
any existing values with the new values.


=head2 UpdateGcmChannel

=over

=item ApplicationId => Str

=item GCMChannelRequest => L<Paws::Pinpoint::GCMChannelRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateGcmChannel>

Returns: a L<Paws::Pinpoint::UpdateGcmChannelResponse> instance

Enables the GCM channel for an application or updates the status and
settings of the GCM channel for an application.


=head2 UpdateJourney

=over

=item ApplicationId => Str

=item JourneyId => Str

=item WriteJourneyRequest => L<Paws::Pinpoint::WriteJourneyRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateJourney>

Returns: a L<Paws::Pinpoint::UpdateJourneyResponse> instance

Updates the configuration and other settings for a journey.


=head2 UpdateJourneyState

=over

=item ApplicationId => Str

=item JourneyId => Str

=item JourneyStateRequest => L<Paws::Pinpoint::JourneyStateRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateJourneyState>

Returns: a L<Paws::Pinpoint::UpdateJourneyStateResponse> instance

Cancels (stops) an active journey.


=head2 UpdatePushTemplate

=over

=item PushNotificationTemplateRequest => L<Paws::Pinpoint::PushNotificationTemplateRequest>

=item TemplateName => Str

=item [CreateNewVersion => Bool]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdatePushTemplate>

Returns: a L<Paws::Pinpoint::UpdatePushTemplateResponse> instance

Updates an existing message template for messages that are sent through
a push notification channel.


=head2 UpdateRecommenderConfiguration

=over

=item RecommenderId => Str

=item UpdateRecommenderConfiguration => L<Paws::Pinpoint::UpdateRecommenderConfigurationObj>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateRecommenderConfiguration>

Returns: a L<Paws::Pinpoint::UpdateRecommenderConfigurationResponse> instance

Updates an Amazon Pinpoint configuration for a recommender model.


=head2 UpdateSegment

=over

=item ApplicationId => Str

=item SegmentId => Str

=item WriteSegmentRequest => L<Paws::Pinpoint::WriteSegmentRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateSegment>

Returns: a L<Paws::Pinpoint::UpdateSegmentResponse> instance

Creates a new segment for an application or updates the configuration,
dimension, and other settings for an existing segment that's associated
with an application.


=head2 UpdateSmsChannel

=over

=item ApplicationId => Str

=item SMSChannelRequest => L<Paws::Pinpoint::SMSChannelRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateSmsChannel>

Returns: a L<Paws::Pinpoint::UpdateSmsChannelResponse> instance

Enables the SMS channel for an application or updates the status and
settings of the SMS channel for an application.


=head2 UpdateSmsTemplate

=over

=item SMSTemplateRequest => L<Paws::Pinpoint::SMSTemplateRequest>

=item TemplateName => Str

=item [CreateNewVersion => Bool]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateSmsTemplate>

Returns: a L<Paws::Pinpoint::UpdateSmsTemplateResponse> instance

Updates an existing message template for messages that are sent through
the SMS channel.


=head2 UpdateTemplateActiveVersion

=over

=item TemplateActiveVersionRequest => L<Paws::Pinpoint::TemplateActiveVersionRequest>

=item TemplateName => Str

=item TemplateType => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateTemplateActiveVersion>

Returns: a L<Paws::Pinpoint::UpdateTemplateActiveVersionResponse> instance

Changes the status of a specific version of a message template to
I<active>.


=head2 UpdateVoiceChannel

=over

=item ApplicationId => Str

=item VoiceChannelRequest => L<Paws::Pinpoint::VoiceChannelRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateVoiceChannel>

Returns: a L<Paws::Pinpoint::UpdateVoiceChannelResponse> instance

Enables the voice channel for an application or updates the status and
settings of the voice channel for an application.


=head2 UpdateVoiceTemplate

=over

=item TemplateName => Str

=item VoiceTemplateRequest => L<Paws::Pinpoint::VoiceTemplateRequest>

=item [CreateNewVersion => Bool]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateVoiceTemplate>

Returns: a L<Paws::Pinpoint::UpdateVoiceTemplateResponse> instance

Updates an existing message template for messages that are sent through
the voice channel.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

