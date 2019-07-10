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
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::ListTagsForResource', @_);
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
  sub UpdateVoiceChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pinpoint::UpdateVoiceChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateApp CreateCampaign CreateExportJob CreateImportJob CreateSegment DeleteAdmChannel DeleteApnsChannel DeleteApnsSandboxChannel DeleteApnsVoipChannel DeleteApnsVoipSandboxChannel DeleteApp DeleteBaiduChannel DeleteCampaign DeleteEmailChannel DeleteEndpoint DeleteEventStream DeleteGcmChannel DeleteSegment DeleteSmsChannel DeleteUserEndpoints DeleteVoiceChannel GetAdmChannel GetApnsChannel GetApnsSandboxChannel GetApnsVoipChannel GetApnsVoipSandboxChannel GetApp GetApplicationSettings GetApps GetBaiduChannel GetCampaign GetCampaignActivities GetCampaigns GetCampaignVersion GetCampaignVersions GetChannels GetEmailChannel GetEndpoint GetEventStream GetExportJob GetExportJobs GetGcmChannel GetImportJob GetImportJobs GetSegment GetSegmentExportJobs GetSegmentImportJobs GetSegments GetSegmentVersion GetSegmentVersions GetSmsChannel GetUserEndpoints GetVoiceChannel ListTagsForResource PhoneNumberValidate PutEvents PutEventStream RemoveAttributes SendMessages SendUsersMessages TagResource UntagResource UpdateAdmChannel UpdateApnsChannel UpdateApnsSandboxChannel UpdateApnsVoipChannel UpdateApnsVoipSandboxChannel UpdateApplicationSettings UpdateBaiduChannel UpdateCampaign UpdateEmailChannel UpdateEndpoint UpdateEndpointsBatch UpdateGcmChannel UpdateSegment UpdateSmsChannel UpdateVoiceChannel / }

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

Amazon Pinpoint

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


=head2 CreateExportJob

=over

=item ApplicationId => Str

=item ExportJobRequest => L<Paws::Pinpoint::ExportJobRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::CreateExportJob>

Returns: a L<Paws::Pinpoint::CreateExportJobResponse> instance

Creates a new export job for an application.


=head2 CreateImportJob

=over

=item ApplicationId => Str

=item ImportJobRequest => L<Paws::Pinpoint::ImportJobRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::CreateImportJob>

Returns: a L<Paws::Pinpoint::CreateImportJobResponse> instance

Creates a new import job for an application.


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

Retrieves information about all of your applications.


=head2 GetBaiduChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetBaiduChannel>

Returns: a L<Paws::Pinpoint::GetBaiduChannelResponse> instance

Retrieves information about the status and settings of the Baidu Cloud
Push channel for an application.


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

Retrieves information about the activity performed by a campaign.


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
settings for all versions of a specific campaign.


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
settings for all versions of a specific segment that's associated with
an application.


=head2 GetSmsChannel

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::GetSmsChannel>

Returns: a L<Paws::Pinpoint::GetSmsChannelResponse> instance

Retrieves information about the status and settings of the SMS channel
for an application.


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


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::ListTagsForResource>

Returns: a L<Paws::Pinpoint::ListTagsForResourceResponse> instance

Retrieves all the tags (keys and values) that are associated with an
application, campaign, or segment.


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

Adds one or more tags (keys and values) to an application, campaign, or
segment.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Pinpoint::UntagResource>

Returns: nothing

Removes one or more tags (keys and values) from an application,
campaign, or segment.


=head2 UpdateAdmChannel

=over

=item ADMChannelRequest => L<Paws::Pinpoint::ADMChannelRequest>

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateAdmChannel>

Returns: a L<Paws::Pinpoint::UpdateAdmChannelResponse> instance

Updates the ADM channel settings for an application.


=head2 UpdateApnsChannel

=over

=item APNSChannelRequest => L<Paws::Pinpoint::APNSChannelRequest>

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApnsChannel>

Returns: a L<Paws::Pinpoint::UpdateApnsChannelResponse> instance

Updates the APNs channel settings for an application.


=head2 UpdateApnsSandboxChannel

=over

=item APNSSandboxChannelRequest => L<Paws::Pinpoint::APNSSandboxChannelRequest>

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApnsSandboxChannel>

Returns: a L<Paws::Pinpoint::UpdateApnsSandboxChannelResponse> instance

Updates the APNs sandbox channel settings for an application.


=head2 UpdateApnsVoipChannel

=over

=item APNSVoipChannelRequest => L<Paws::Pinpoint::APNSVoipChannelRequest>

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApnsVoipChannel>

Returns: a L<Paws::Pinpoint::UpdateApnsVoipChannelResponse> instance

Updates the APNs VoIP channel settings for an application.


=head2 UpdateApnsVoipSandboxChannel

=over

=item APNSVoipSandboxChannelRequest => L<Paws::Pinpoint::APNSVoipSandboxChannelRequest>

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateApnsVoipSandboxChannel>

Returns: a L<Paws::Pinpoint::UpdateApnsVoipSandboxChannelResponse> instance

Updates the settings for the APNs VoIP sandbox channel for an
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

Updates the settings of the Baidu channel for an application.


=head2 UpdateCampaign

=over

=item ApplicationId => Str

=item CampaignId => Str

=item WriteCampaignRequest => L<Paws::Pinpoint::WriteCampaignRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateCampaign>

Returns: a L<Paws::Pinpoint::UpdateCampaignResponse> instance

Updates the settings for a campaign.


=head2 UpdateEmailChannel

=over

=item ApplicationId => Str

=item EmailChannelRequest => L<Paws::Pinpoint::EmailChannelRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateEmailChannel>

Returns: a L<Paws::Pinpoint::UpdateEmailChannelResponse> instance

Updates the status and settings of the email channel for an
application.


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
this operation to define custom attributes (Attributes, Metrics, and
UserAttributes properties) for an endpoint.


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
attributes (Attributes, Metrics, and UserAttributes properties) for a
batch of endpoints.


=head2 UpdateGcmChannel

=over

=item ApplicationId => Str

=item GCMChannelRequest => L<Paws::Pinpoint::GCMChannelRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateGcmChannel>

Returns: a L<Paws::Pinpoint::UpdateGcmChannelResponse> instance

Updates the status and settings of the GCM channel for an application.


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

Updates the status and settings of the SMS channel for an application.


=head2 UpdateVoiceChannel

=over

=item ApplicationId => Str

=item VoiceChannelRequest => L<Paws::Pinpoint::VoiceChannelRequest>


=back

Each argument is described in detail in: L<Paws::Pinpoint::UpdateVoiceChannel>

Returns: a L<Paws::Pinpoint::UpdateVoiceChannelResponse> instance

Updates the status and settings of the voice channel for an
application.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

