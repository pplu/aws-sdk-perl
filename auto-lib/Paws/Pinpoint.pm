package Paws::Pinpoint;
  use Moose;
  sub service { 'pinpoint' }
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
  sub CreateSegment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::CreateSegment', @_);
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
  sub GetEmailChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::GetEmailChannel', @_);
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
  sub PutEventStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::PutEventStream', @_);
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
  


  sub operations { qw/CreateApp CreateCampaign CreateExportJob CreateImportJob CreateSegment DeleteAdmChannel DeleteApnsChannel DeleteApnsSandboxChannel DeleteApnsVoipChannel DeleteApnsVoipSandboxChannel DeleteApp DeleteBaiduChannel DeleteCampaign DeleteEmailChannel DeleteEndpoint DeleteEventStream DeleteGcmChannel DeleteSegment DeleteSmsChannel GetAdmChannel GetApnsChannel GetApnsSandboxChannel GetApnsVoipChannel GetApnsVoipSandboxChannel GetApp GetApplicationSettings GetApps GetBaiduChannel GetCampaign GetCampaignActivities GetCampaigns GetCampaignVersion GetCampaignVersions GetEmailChannel GetEndpoint GetEventStream GetExportJob GetExportJobs GetGcmChannel GetImportJob GetImportJobs GetSegment GetSegmentExportJobs GetSegmentImportJobs GetSegments GetSegmentVersion GetSegmentVersions GetSmsChannel PutEventStream SendMessages SendUsersMessages UpdateAdmChannel UpdateApnsChannel UpdateApnsSandboxChannel UpdateApnsVoipChannel UpdateApnsVoipSandboxChannel UpdateApplicationSettings UpdateBaiduChannel UpdateCampaign UpdateEmailChannel UpdateEndpoint UpdateEndpointsBatch UpdateGcmChannel UpdateSegment UpdateSmsChannel / }

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



=head1 METHODS

=head2 CreateApp(CreateApplicationRequest => L<Paws::Pinpoint::CreateApplicationRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::CreateApp>

Returns: a L<Paws::Pinpoint::CreateAppResponse> instance

Creates or updates an app.


=head2 CreateCampaign(ApplicationId => Str, WriteCampaignRequest => L<Paws::Pinpoint::WriteCampaignRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::CreateCampaign>

Returns: a L<Paws::Pinpoint::CreateCampaignResponse> instance

Creates or updates a campaign.


=head2 CreateExportJob(ApplicationId => Str, ExportJobRequest => L<Paws::Pinpoint::ExportJobRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::CreateExportJob>

Returns: a L<Paws::Pinpoint::CreateExportJobResponse> instance

Creates an export job.


=head2 CreateImportJob(ApplicationId => Str, ImportJobRequest => L<Paws::Pinpoint::ImportJobRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::CreateImportJob>

Returns: a L<Paws::Pinpoint::CreateImportJobResponse> instance

Creates or updates an import job.


=head2 CreateSegment(ApplicationId => Str, WriteSegmentRequest => L<Paws::Pinpoint::WriteSegmentRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::CreateSegment>

Returns: a L<Paws::Pinpoint::CreateSegmentResponse> instance

Used to create or update a segment.


=head2 DeleteAdmChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteAdmChannel>

Returns: a L<Paws::Pinpoint::DeleteAdmChannelResponse> instance

Delete an ADM channel


=head2 DeleteApnsChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteApnsChannel>

Returns: a L<Paws::Pinpoint::DeleteApnsChannelResponse> instance

Deletes the APNs channel for an app.


=head2 DeleteApnsSandboxChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteApnsSandboxChannel>

Returns: a L<Paws::Pinpoint::DeleteApnsSandboxChannelResponse> instance

Delete an APNS sandbox channel


=head2 DeleteApnsVoipChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteApnsVoipChannel>

Returns: a L<Paws::Pinpoint::DeleteApnsVoipChannelResponse> instance

Delete an APNS VoIP channel


=head2 DeleteApnsVoipSandboxChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteApnsVoipSandboxChannel>

Returns: a L<Paws::Pinpoint::DeleteApnsVoipSandboxChannelResponse> instance

Delete an APNS VoIP sandbox channel


=head2 DeleteApp(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteApp>

Returns: a L<Paws::Pinpoint::DeleteAppResponse> instance

Deletes an app.


=head2 DeleteBaiduChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteBaiduChannel>

Returns: a L<Paws::Pinpoint::DeleteBaiduChannelResponse> instance

Delete a BAIDU GCM channel


=head2 DeleteCampaign(ApplicationId => Str, CampaignId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteCampaign>

Returns: a L<Paws::Pinpoint::DeleteCampaignResponse> instance

Deletes a campaign.


=head2 DeleteEmailChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteEmailChannel>

Returns: a L<Paws::Pinpoint::DeleteEmailChannelResponse> instance

Delete an email channel


=head2 DeleteEndpoint(ApplicationId => Str, EndpointId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteEndpoint>

Returns: a L<Paws::Pinpoint::DeleteEndpointResponse> instance

Deletes an endpoint.


=head2 DeleteEventStream(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteEventStream>

Returns: a L<Paws::Pinpoint::DeleteEventStreamResponse> instance

Deletes the event stream for an app.


=head2 DeleteGcmChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteGcmChannel>

Returns: a L<Paws::Pinpoint::DeleteGcmChannelResponse> instance

Deletes the GCM channel for an app.


=head2 DeleteSegment(ApplicationId => Str, SegmentId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteSegment>

Returns: a L<Paws::Pinpoint::DeleteSegmentResponse> instance

Deletes a segment.


=head2 DeleteSmsChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::DeleteSmsChannel>

Returns: a L<Paws::Pinpoint::DeleteSmsChannelResponse> instance

Delete an SMS channel


=head2 GetAdmChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetAdmChannel>

Returns: a L<Paws::Pinpoint::GetAdmChannelResponse> instance

Get an ADM channel


=head2 GetApnsChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetApnsChannel>

Returns: a L<Paws::Pinpoint::GetApnsChannelResponse> instance

Returns information about the APNs channel for an app.


=head2 GetApnsSandboxChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetApnsSandboxChannel>

Returns: a L<Paws::Pinpoint::GetApnsSandboxChannelResponse> instance

Get an APNS sandbox channel


=head2 GetApnsVoipChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetApnsVoipChannel>

Returns: a L<Paws::Pinpoint::GetApnsVoipChannelResponse> instance

Get an APNS VoIP channel


=head2 GetApnsVoipSandboxChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetApnsVoipSandboxChannel>

Returns: a L<Paws::Pinpoint::GetApnsVoipSandboxChannelResponse> instance

Get an APNS VoIPSandbox channel


=head2 GetApp(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetApp>

Returns: a L<Paws::Pinpoint::GetAppResponse> instance

Returns information about an app.


=head2 GetApplicationSettings(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetApplicationSettings>

Returns: a L<Paws::Pinpoint::GetApplicationSettingsResponse> instance

Used to request the settings for an app.


=head2 GetApps([PageSize => Str, Token => Str])

Each argument is described in detail in: L<Paws::Pinpoint::GetApps>

Returns: a L<Paws::Pinpoint::GetAppsResponse> instance

Returns information about your apps.


=head2 GetBaiduChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetBaiduChannel>

Returns: a L<Paws::Pinpoint::GetBaiduChannelResponse> instance

Get a BAIDU GCM channel


=head2 GetCampaign(ApplicationId => Str, CampaignId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetCampaign>

Returns: a L<Paws::Pinpoint::GetCampaignResponse> instance

Returns information about a campaign.


=head2 GetCampaignActivities(ApplicationId => Str, CampaignId => Str, [PageSize => Str, Token => Str])

Each argument is described in detail in: L<Paws::Pinpoint::GetCampaignActivities>

Returns: a L<Paws::Pinpoint::GetCampaignActivitiesResponse> instance

Returns information about the activity performed by a campaign.


=head2 GetCampaigns(ApplicationId => Str, [PageSize => Str, Token => Str])

Each argument is described in detail in: L<Paws::Pinpoint::GetCampaigns>

Returns: a L<Paws::Pinpoint::GetCampaignsResponse> instance

Returns information about your campaigns.


=head2 GetCampaignVersion(ApplicationId => Str, CampaignId => Str, Version => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetCampaignVersion>

Returns: a L<Paws::Pinpoint::GetCampaignVersionResponse> instance

Returns information about a specific version of a campaign.


=head2 GetCampaignVersions(ApplicationId => Str, CampaignId => Str, [PageSize => Str, Token => Str])

Each argument is described in detail in: L<Paws::Pinpoint::GetCampaignVersions>

Returns: a L<Paws::Pinpoint::GetCampaignVersionsResponse> instance

Returns information about your campaign versions.


=head2 GetEmailChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetEmailChannel>

Returns: a L<Paws::Pinpoint::GetEmailChannelResponse> instance

Get an email channel


=head2 GetEndpoint(ApplicationId => Str, EndpointId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetEndpoint>

Returns: a L<Paws::Pinpoint::GetEndpointResponse> instance

Returns information about an endpoint.


=head2 GetEventStream(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetEventStream>

Returns: a L<Paws::Pinpoint::GetEventStreamResponse> instance

Returns the event stream for an app.


=head2 GetExportJob(ApplicationId => Str, JobId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetExportJob>

Returns: a L<Paws::Pinpoint::GetExportJobResponse> instance

Returns information about an export job.


=head2 GetExportJobs(ApplicationId => Str, [PageSize => Str, Token => Str])

Each argument is described in detail in: L<Paws::Pinpoint::GetExportJobs>

Returns: a L<Paws::Pinpoint::GetExportJobsResponse> instance

Returns information about your export jobs.


=head2 GetGcmChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetGcmChannel>

Returns: a L<Paws::Pinpoint::GetGcmChannelResponse> instance

Returns information about the GCM channel for an app.


=head2 GetImportJob(ApplicationId => Str, JobId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetImportJob>

Returns: a L<Paws::Pinpoint::GetImportJobResponse> instance

Returns information about an import job.


=head2 GetImportJobs(ApplicationId => Str, [PageSize => Str, Token => Str])

Each argument is described in detail in: L<Paws::Pinpoint::GetImportJobs>

Returns: a L<Paws::Pinpoint::GetImportJobsResponse> instance

Returns information about your import jobs.


=head2 GetSegment(ApplicationId => Str, SegmentId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetSegment>

Returns: a L<Paws::Pinpoint::GetSegmentResponse> instance

Returns information about a segment.


=head2 GetSegmentExportJobs(ApplicationId => Str, SegmentId => Str, [PageSize => Str, Token => Str])

Each argument is described in detail in: L<Paws::Pinpoint::GetSegmentExportJobs>

Returns: a L<Paws::Pinpoint::GetSegmentExportJobsResponse> instance

Returns a list of export jobs for a specific segment.


=head2 GetSegmentImportJobs(ApplicationId => Str, SegmentId => Str, [PageSize => Str, Token => Str])

Each argument is described in detail in: L<Paws::Pinpoint::GetSegmentImportJobs>

Returns: a L<Paws::Pinpoint::GetSegmentImportJobsResponse> instance

Returns a list of import jobs for a specific segment.


=head2 GetSegments(ApplicationId => Str, [PageSize => Str, Token => Str])

Each argument is described in detail in: L<Paws::Pinpoint::GetSegments>

Returns: a L<Paws::Pinpoint::GetSegmentsResponse> instance

Used to get information about your segments.


=head2 GetSegmentVersion(ApplicationId => Str, SegmentId => Str, Version => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetSegmentVersion>

Returns: a L<Paws::Pinpoint::GetSegmentVersionResponse> instance

Returns information about a segment version.


=head2 GetSegmentVersions(ApplicationId => Str, SegmentId => Str, [PageSize => Str, Token => Str])

Each argument is described in detail in: L<Paws::Pinpoint::GetSegmentVersions>

Returns: a L<Paws::Pinpoint::GetSegmentVersionsResponse> instance

Returns information about your segment versions.


=head2 GetSmsChannel(ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::GetSmsChannel>

Returns: a L<Paws::Pinpoint::GetSmsChannelResponse> instance

Get an SMS channel


=head2 PutEventStream(ApplicationId => Str, WriteEventStream => L<Paws::Pinpoint::WriteEventStream>)

Each argument is described in detail in: L<Paws::Pinpoint::PutEventStream>

Returns: a L<Paws::Pinpoint::PutEventStreamResponse> instance

Use to create or update the event stream for an app.


=head2 SendMessages(ApplicationId => Str, MessageRequest => L<Paws::Pinpoint::MessageRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::SendMessages>

Returns: a L<Paws::Pinpoint::SendMessagesResponse> instance

Send a batch of messages


=head2 SendUsersMessages(ApplicationId => Str, SendUsersMessageRequest => L<Paws::Pinpoint::SendUsersMessageRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::SendUsersMessages>

Returns: a L<Paws::Pinpoint::SendUsersMessagesResponse> instance

Send a batch of messages to users


=head2 UpdateAdmChannel(ADMChannelRequest => L<Paws::Pinpoint::ADMChannelRequest>, ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateAdmChannel>

Returns: a L<Paws::Pinpoint::UpdateAdmChannelResponse> instance

Update an ADM channel


=head2 UpdateApnsChannel(APNSChannelRequest => L<Paws::Pinpoint::APNSChannelRequest>, ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApnsChannel>

Returns: a L<Paws::Pinpoint::UpdateApnsChannelResponse> instance

Use to update the APNs channel for an app.


=head2 UpdateApnsSandboxChannel(APNSSandboxChannelRequest => L<Paws::Pinpoint::APNSSandboxChannelRequest>, ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApnsSandboxChannel>

Returns: a L<Paws::Pinpoint::UpdateApnsSandboxChannelResponse> instance

Update an APNS sandbox channel


=head2 UpdateApnsVoipChannel(APNSVoipChannelRequest => L<Paws::Pinpoint::APNSVoipChannelRequest>, ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApnsVoipChannel>

Returns: a L<Paws::Pinpoint::UpdateApnsVoipChannelResponse> instance

Update an APNS VoIP channel


=head2 UpdateApnsVoipSandboxChannel(APNSVoipSandboxChannelRequest => L<Paws::Pinpoint::APNSVoipSandboxChannelRequest>, ApplicationId => Str)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApnsVoipSandboxChannel>

Returns: a L<Paws::Pinpoint::UpdateApnsVoipSandboxChannelResponse> instance

Update an APNS VoIP sandbox channel


=head2 UpdateApplicationSettings(ApplicationId => Str, WriteApplicationSettingsRequest => L<Paws::Pinpoint::WriteApplicationSettingsRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApplicationSettings>

Returns: a L<Paws::Pinpoint::UpdateApplicationSettingsResponse> instance

Used to update the settings for an app.


=head2 UpdateBaiduChannel(ApplicationId => Str, BaiduChannelRequest => L<Paws::Pinpoint::BaiduChannelRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateBaiduChannel>

Returns: a L<Paws::Pinpoint::UpdateBaiduChannelResponse> instance

Update a BAIDU GCM channel


=head2 UpdateCampaign(ApplicationId => Str, CampaignId => Str, WriteCampaignRequest => L<Paws::Pinpoint::WriteCampaignRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateCampaign>

Returns: a L<Paws::Pinpoint::UpdateCampaignResponse> instance

Use to update a campaign.


=head2 UpdateEmailChannel(ApplicationId => Str, EmailChannelRequest => L<Paws::Pinpoint::EmailChannelRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateEmailChannel>

Returns: a L<Paws::Pinpoint::UpdateEmailChannelResponse> instance

Update an email channel


=head2 UpdateEndpoint(ApplicationId => Str, EndpointId => Str, EndpointRequest => L<Paws::Pinpoint::EndpointRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateEndpoint>

Returns: a L<Paws::Pinpoint::UpdateEndpointResponse> instance

Use to update an endpoint.


=head2 UpdateEndpointsBatch(ApplicationId => Str, EndpointBatchRequest => L<Paws::Pinpoint::EndpointBatchRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateEndpointsBatch>

Returns: a L<Paws::Pinpoint::UpdateEndpointsBatchResponse> instance

Use to update a batch of endpoints.


=head2 UpdateGcmChannel(ApplicationId => Str, GCMChannelRequest => L<Paws::Pinpoint::GCMChannelRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateGcmChannel>

Returns: a L<Paws::Pinpoint::UpdateGcmChannelResponse> instance

Use to update the GCM channel for an app.


=head2 UpdateSegment(ApplicationId => Str, SegmentId => Str, WriteSegmentRequest => L<Paws::Pinpoint::WriteSegmentRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateSegment>

Returns: a L<Paws::Pinpoint::UpdateSegmentResponse> instance

Use to update a segment.


=head2 UpdateSmsChannel(ApplicationId => Str, SMSChannelRequest => L<Paws::Pinpoint::SMSChannelRequest>)

Each argument is described in detail in: L<Paws::Pinpoint::UpdateSmsChannel>

Returns: a L<Paws::Pinpoint::UpdateSmsChannelResponse> instance

Update an SMS channel




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

