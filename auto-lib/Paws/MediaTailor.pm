package Paws::MediaTailor;
  use Moose;
  sub service { 'api.mediatailor' }
  sub signing_name { 'mediatailor' }
  sub version { '2018-04-23' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::CreateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProgram {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::CreateProgram', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSourceLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::CreateSourceLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVodSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::CreateVodSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::DeleteChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannelPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::DeleteChannelPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePlaybackConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::DeletePlaybackConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProgram {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::DeleteProgram', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSourceLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::DeleteSourceLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVodSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::DeleteVodSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::DescribeChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProgram {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::DescribeProgram', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSourceLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::DescribeSourceLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVodSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::DescribeVodSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChannelPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::GetChannelPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChannelSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::GetChannelSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPlaybackConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::GetPlaybackConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::ListChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPlaybackConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::ListPlaybackConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSourceLocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::ListSourceLocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVodSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::ListVodSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutChannelPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::PutChannelPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPlaybackConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::PutPlaybackConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::StartChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::StopChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::UpdateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSourceLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::UpdateSourceLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVodSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::UpdateVodSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllChannelSchedule {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetChannelSchedule(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetChannelSchedule(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->GetChannelSchedule(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllChannels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChannels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListChannels(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListChannels(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllPlaybackConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPlaybackConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPlaybackConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListPlaybackConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllSourceLocations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSourceLocations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSourceLocations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListSourceLocations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllVodSources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVodSources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListVodSources(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListVodSources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }


  sub operations { qw/CreateChannel CreateProgram CreateSourceLocation CreateVodSource DeleteChannel DeleteChannelPolicy DeletePlaybackConfiguration DeleteProgram DeleteSourceLocation DeleteVodSource DescribeChannel DescribeProgram DescribeSourceLocation DescribeVodSource GetChannelPolicy GetChannelSchedule GetPlaybackConfiguration ListChannels ListPlaybackConfigurations ListSourceLocations ListTagsForResource ListVodSources PutChannelPolicy PutPlaybackConfiguration StartChannel StopChannel TagResource UntagResource UpdateChannel UpdateSourceLocation UpdateVodSource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor - Perl Interface to AWS AWS MediaTailor

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MediaTailor');
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

Use the AWS Elemental MediaTailor SDKs and CLI to configure scalable ad
insertion and linear channels. With MediaTailor, you can assemble
existing content into a linear stream and serve targeted ads to viewers
while maintaining broadcast quality in over-the-top (OTT) video
applications. For information about using the service, including
detailed information about the settings covered in this guide, see the
AWS Elemental MediaTailor User Guide
(https://docs.aws.amazon.com/mediatailor/latest/ug/).

Through the SDKs and the CLI you manage AWS Elemental MediaTailor
configurations and channels the same as you do through the console. For
example, you specify ad insertion behavior and mapping information for
the origin server and the ad decision server (ADS).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor-2018-04-23>


=head1 METHODS

=head2 CreateChannel

=over

=item ChannelName => Str

=item Outputs => ArrayRef[L<Paws::MediaTailor::RequestOutputItem>]

=item PlaybackMode => Str

=item [Tags => L<Paws::MediaTailor::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::MediaTailor::CreateChannel>

Returns: a L<Paws::MediaTailor::CreateChannelResponse> instance

Creates a channel.


=head2 CreateProgram

=over

=item ChannelName => Str

=item ProgramName => Str

=item ScheduleConfiguration => L<Paws::MediaTailor::ScheduleConfiguration>

=item SourceLocationName => Str

=item VodSourceName => Str

=item [AdBreaks => ArrayRef[L<Paws::MediaTailor::AdBreak>]]


=back

Each argument is described in detail in: L<Paws::MediaTailor::CreateProgram>

Returns: a L<Paws::MediaTailor::CreateProgramResponse> instance

Creates a program.


=head2 CreateSourceLocation

=over

=item HttpConfiguration => L<Paws::MediaTailor::HttpConfiguration>

=item SourceLocationName => Str

=item [AccessConfiguration => L<Paws::MediaTailor::AccessConfiguration>]

=item [DefaultSegmentDeliveryConfiguration => L<Paws::MediaTailor::DefaultSegmentDeliveryConfiguration>]

=item [Tags => L<Paws::MediaTailor::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::MediaTailor::CreateSourceLocation>

Returns: a L<Paws::MediaTailor::CreateSourceLocationResponse> instance

Creates a source location on a specific channel.


=head2 CreateVodSource

=over

=item HttpPackageConfigurations => ArrayRef[L<Paws::MediaTailor::HttpPackageConfiguration>]

=item SourceLocationName => Str

=item VodSourceName => Str

=item [Tags => L<Paws::MediaTailor::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::MediaTailor::CreateVodSource>

Returns: a L<Paws::MediaTailor::CreateVodSourceResponse> instance

Creates name for a specific VOD source in a source location.


=head2 DeleteChannel

=over

=item ChannelName => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::DeleteChannel>

Returns: a L<Paws::MediaTailor::DeleteChannelResponse> instance

Deletes a channel. You must stop the channel before it can be deleted.


=head2 DeleteChannelPolicy

=over

=item ChannelName => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::DeleteChannelPolicy>

Returns: a L<Paws::MediaTailor::DeleteChannelPolicyResponse> instance

Deletes a channel's IAM policy.


=head2 DeletePlaybackConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::DeletePlaybackConfiguration>

Returns: a L<Paws::MediaTailor::DeletePlaybackConfigurationResponse> instance

Deletes the playback configuration for the specified name.


=head2 DeleteProgram

=over

=item ChannelName => Str

=item ProgramName => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::DeleteProgram>

Returns: a L<Paws::MediaTailor::DeleteProgramResponse> instance

Deletes a specific program on a specific channel.


=head2 DeleteSourceLocation

=over

=item SourceLocationName => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::DeleteSourceLocation>

Returns: a L<Paws::MediaTailor::DeleteSourceLocationResponse> instance

Deletes a source location on a specific channel.


=head2 DeleteVodSource

=over

=item SourceLocationName => Str

=item VodSourceName => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::DeleteVodSource>

Returns: a L<Paws::MediaTailor::DeleteVodSourceResponse> instance

Deletes a specific VOD source in a specific source location.


=head2 DescribeChannel

=over

=item ChannelName => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::DescribeChannel>

Returns: a L<Paws::MediaTailor::DescribeChannelResponse> instance

Describes the properties of a specific channel.


=head2 DescribeProgram

=over

=item ChannelName => Str

=item ProgramName => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::DescribeProgram>

Returns: a L<Paws::MediaTailor::DescribeProgramResponse> instance

Retrieves the properties of the requested program.


=head2 DescribeSourceLocation

=over

=item SourceLocationName => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::DescribeSourceLocation>

Returns: a L<Paws::MediaTailor::DescribeSourceLocationResponse> instance

Retrieves the properties of the requested source location.


=head2 DescribeVodSource

=over

=item SourceLocationName => Str

=item VodSourceName => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::DescribeVodSource>

Returns: a L<Paws::MediaTailor::DescribeVodSourceResponse> instance

Provides details about a specific VOD source in a specific source
location.


=head2 GetChannelPolicy

=over

=item ChannelName => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::GetChannelPolicy>

Returns: a L<Paws::MediaTailor::GetChannelPolicyResponse> instance

Retrieves information about a channel's IAM policy.


=head2 GetChannelSchedule

=over

=item ChannelName => Str

=item [DurationMinutes => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaTailor::GetChannelSchedule>

Returns: a L<Paws::MediaTailor::GetChannelScheduleResponse> instance

Retrieves information about your channel's schedule.


=head2 GetPlaybackConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::GetPlaybackConfiguration>

Returns: a L<Paws::MediaTailor::GetPlaybackConfigurationResponse> instance

Returns the playback configuration for the specified name.


=head2 ListChannels

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaTailor::ListChannels>

Returns: a L<Paws::MediaTailor::ListChannelsResponse> instance

Retrieves a list of channels that are associated with this account.


=head2 ListPlaybackConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaTailor::ListPlaybackConfigurations>

Returns: a L<Paws::MediaTailor::ListPlaybackConfigurationsResponse> instance

Returns a list of the playback configurations defined in AWS Elemental
MediaTailor. You can specify a maximum number of configurations to
return at a time. The default maximum is 50. Results are returned in
pagefuls. If MediaTailor has more configurations than the specified
maximum, it provides parameters in the response that you can use to
retrieve the next pageful.


=head2 ListSourceLocations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaTailor::ListSourceLocations>

Returns: a L<Paws::MediaTailor::ListSourceLocationsResponse> instance

Retrieves a list of source locations.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::ListTagsForResource>

Returns: a L<Paws::MediaTailor::ListTagsForResourceResponse> instance

Returns a list of the tags assigned to the specified playback
configuration resource.


=head2 ListVodSources

=over

=item SourceLocationName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaTailor::ListVodSources>

Returns: a L<Paws::MediaTailor::ListVodSourcesResponse> instance

Lists all the VOD sources in a source location.


=head2 PutChannelPolicy

=over

=item ChannelName => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::PutChannelPolicy>

Returns: a L<Paws::MediaTailor::PutChannelPolicyResponse> instance

Creates an IAM policy for the channel.


=head2 PutPlaybackConfiguration

=over

=item [AdDecisionServerUrl => Str]

=item [AvailSuppression => L<Paws::MediaTailor::AvailSuppression>]

=item [Bumper => L<Paws::MediaTailor::Bumper>]

=item [CdnConfiguration => L<Paws::MediaTailor::CdnConfiguration>]

=item [ConfigurationAliases => L<Paws::MediaTailor::ConfigurationAliasesRequest>]

=item [DashConfiguration => L<Paws::MediaTailor::DashConfigurationForPut>]

=item [LivePreRollConfiguration => L<Paws::MediaTailor::LivePreRollConfiguration>]

=item [ManifestProcessingRules => L<Paws::MediaTailor::ManifestProcessingRules>]

=item [Name => Str]

=item [PersonalizationThresholdSeconds => Int]

=item [SlateAdUrl => Str]

=item [Tags => L<Paws::MediaTailor::__mapOf__string>]

=item [TranscodeProfileName => Str]

=item [VideoContentSourceUrl => Str]


=back

Each argument is described in detail in: L<Paws::MediaTailor::PutPlaybackConfiguration>

Returns: a L<Paws::MediaTailor::PutPlaybackConfigurationResponse> instance

Adds a new playback configuration to AWS Elemental MediaTailor.


=head2 StartChannel

=over

=item ChannelName => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::StartChannel>

Returns: a L<Paws::MediaTailor::StartChannelResponse> instance

Starts a specific channel.


=head2 StopChannel

=over

=item ChannelName => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::StopChannel>

Returns: a L<Paws::MediaTailor::StopChannelResponse> instance

Stops a specific channel.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::MediaTailor::__mapOf__string>


=back

Each argument is described in detail in: L<Paws::MediaTailor::TagResource>

Returns: nothing

Adds tags to the specified playback configuration resource. You can
specify one or more tags to add.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MediaTailor::UntagResource>

Returns: nothing

Removes tags from the specified playback configuration resource. You
can specify one or more tags to remove.


=head2 UpdateChannel

=over

=item ChannelName => Str

=item Outputs => ArrayRef[L<Paws::MediaTailor::RequestOutputItem>]


=back

Each argument is described in detail in: L<Paws::MediaTailor::UpdateChannel>

Returns: a L<Paws::MediaTailor::UpdateChannelResponse> instance

Updates an existing channel.


=head2 UpdateSourceLocation

=over

=item HttpConfiguration => L<Paws::MediaTailor::HttpConfiguration>

=item SourceLocationName => Str

=item [AccessConfiguration => L<Paws::MediaTailor::AccessConfiguration>]

=item [DefaultSegmentDeliveryConfiguration => L<Paws::MediaTailor::DefaultSegmentDeliveryConfiguration>]


=back

Each argument is described in detail in: L<Paws::MediaTailor::UpdateSourceLocation>

Returns: a L<Paws::MediaTailor::UpdateSourceLocationResponse> instance

Updates a source location on a specific channel.


=head2 UpdateVodSource

=over

=item HttpPackageConfigurations => ArrayRef[L<Paws::MediaTailor::HttpPackageConfiguration>]

=item SourceLocationName => Str

=item VodSourceName => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::UpdateVodSource>

Returns: a L<Paws::MediaTailor::UpdateVodSourceResponse> instance

Updates a specific VOD source in a specific source location.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllChannelSchedule(sub { },ChannelName => Str, [DurationMinutes => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllChannelSchedule(ChannelName => Str, [DurationMinutes => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::MediaTailor::GetChannelScheduleResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllChannels(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllChannels([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::MediaTailor::ListChannelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPlaybackConfigurations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPlaybackConfigurations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::MediaTailor::ListPlaybackConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSourceLocations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSourceLocations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::MediaTailor::ListSourceLocationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVodSources(sub { },SourceLocationName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllVodSources(SourceLocationName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::MediaTailor::ListVodSourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

