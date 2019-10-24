package Paws::GroundStation;
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 'groundstation' }
  sub signing_name { 'groundstation' }
  sub version { '2019-05-23' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::CancelContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::CreateConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataflowEndpointGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::CreateDataflowEndpointGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMissionProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::CreateMissionProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::DeleteConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataflowEndpointGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::DeleteDataflowEndpointGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMissionProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::DeleteMissionProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::DescribeContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::GetConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataflowEndpointGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::GetDataflowEndpointGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMinuteUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::GetMinuteUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMissionProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::GetMissionProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSatellite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::GetSatellite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::ListConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::ListContacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataflowEndpointGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::ListDataflowEndpointGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroundStations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::ListGroundStations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMissionProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::ListMissionProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSatellites {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::ListSatellites', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReserveContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::ReserveContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::UpdateConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMissionProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GroundStation::UpdateMissionProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConfigs(@_, nextToken => $next_result->nextToken);
        push @{ $result->configList }, @{ $next_result->configList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'configList') foreach (@{ $result->configList });
        $result = $self->ListConfigs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'configList') foreach (@{ $result->configList });
    }

    return undef
  }
  sub ListAllContacts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContacts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListContacts(@_, nextToken => $next_result->nextToken);
        push @{ $result->contactList }, @{ $next_result->contactList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'contactList') foreach (@{ $result->contactList });
        $result = $self->ListContacts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'contactList') foreach (@{ $result->contactList });
    }

    return undef
  }
  sub ListAllDataflowEndpointGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataflowEndpointGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataflowEndpointGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->dataflowEndpointGroupList }, @{ $next_result->dataflowEndpointGroupList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dataflowEndpointGroupList') foreach (@{ $result->dataflowEndpointGroupList });
        $result = $self->ListDataflowEndpointGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dataflowEndpointGroupList') foreach (@{ $result->dataflowEndpointGroupList });
    }

    return undef
  }
  sub ListAllGroundStations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroundStations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListGroundStations(@_, nextToken => $next_result->nextToken);
        push @{ $result->groundStationList }, @{ $next_result->groundStationList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'groundStationList') foreach (@{ $result->groundStationList });
        $result = $self->ListGroundStations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'groundStationList') foreach (@{ $result->groundStationList });
    }

    return undef
  }
  sub ListAllMissionProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMissionProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMissionProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->missionProfileList }, @{ $next_result->missionProfileList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'missionProfileList') foreach (@{ $result->missionProfileList });
        $result = $self->ListMissionProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'missionProfileList') foreach (@{ $result->missionProfileList });
    }

    return undef
  }
  sub ListAllSatellites {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSatellites(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSatellites(@_, nextToken => $next_result->nextToken);
        push @{ $result->satellites }, @{ $next_result->satellites };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'satellites') foreach (@{ $result->satellites });
        $result = $self->ListSatellites(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'satellites') foreach (@{ $result->satellites });
    }

    return undef
  }


  sub operations { qw/CancelContact CreateConfig CreateDataflowEndpointGroup CreateMissionProfile DeleteConfig DeleteDataflowEndpointGroup DeleteMissionProfile DescribeContact GetConfig GetDataflowEndpointGroup GetMinuteUsage GetMissionProfile GetSatellite ListConfigs ListContacts ListDataflowEndpointGroups ListGroundStations ListMissionProfiles ListSatellites ListTagsForResource ReserveContact TagResource UntagResource UpdateConfig UpdateMissionProfile / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation - Perl Interface to AWS AWS Ground Station

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('GroundStation');
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

Welcome to the AWS Ground Station API Reference. AWS Ground Station is
a fully managed service that enables you to control satellite
communications, downlink and process satellite data, and scale your
satellite operations efficiently and cost-effectively without having to
build or manage your own ground station infrastructure.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23>


=head1 METHODS

=head2 CancelContact

=over

=item ContactId => Str


=back

Each argument is described in detail in: L<Paws::GroundStation::CancelContact>

Returns: a L<Paws::GroundStation::ContactIdResponse> instance

Cancels a contact with a specified contact ID.


=head2 CreateConfig

=over

=item ConfigData => GroundStation_ConfigTypeData

=item Name => Str

=item [Tags => GroundStation_TagsMap]


=back

Each argument is described in detail in: L<Paws::GroundStation::CreateConfig>

Returns: a L<Paws::GroundStation::ConfigIdResponse> instance

Creates a C<Config> with the specified C<configData> parameters.

Only one type of C<configData> can be specified.


=head2 CreateDataflowEndpointGroup

=over

=item EndpointDetails => ArrayRef[GroundStation_EndpointDetails]

=item [Tags => GroundStation_TagsMap]


=back

Each argument is described in detail in: L<Paws::GroundStation::CreateDataflowEndpointGroup>

Returns: a L<Paws::GroundStation::DataflowEndpointGroupIdResponse> instance

Creates a C<DataflowEndpoint> group containing the specified list of
C<DataflowEndpoint> objects.

The C<name> field in each endpoint is used in your mission profile
C<DataflowEndpointConfig> to specify which endpoints to use during a
contact.

When a contact uses multiple C<DataflowEndpointConfig> objects, each
C<Config> must match a C<DataflowEndpoint> in the same group.


=head2 CreateMissionProfile

=over

=item DataflowEdges => ArrayRef[ArrayRef[Str|Undef]]

=item MinimumViableContactDurationSeconds => Int

=item Name => Str

=item TrackingConfigArn => Str

=item [ContactPostPassDurationSeconds => Int]

=item [ContactPrePassDurationSeconds => Int]

=item [Tags => GroundStation_TagsMap]


=back

Each argument is described in detail in: L<Paws::GroundStation::CreateMissionProfile>

Returns: a L<Paws::GroundStation::MissionProfileIdResponse> instance

Creates a mission profile.

C<dataflowEdges> is a list of lists of strings. Each lower level list
of strings has two elements: a I<from ARN> and a I<to ARN>.


=head2 DeleteConfig

=over

=item ConfigId => Str

=item ConfigType => Str


=back

Each argument is described in detail in: L<Paws::GroundStation::DeleteConfig>

Returns: a L<Paws::GroundStation::ConfigIdResponse> instance

Deletes a C<Config>.


=head2 DeleteDataflowEndpointGroup

=over

=item DataflowEndpointGroupId => Str


=back

Each argument is described in detail in: L<Paws::GroundStation::DeleteDataflowEndpointGroup>

Returns: a L<Paws::GroundStation::DataflowEndpointGroupIdResponse> instance

Deletes a dataflow endpoint group.


=head2 DeleteMissionProfile

=over

=item MissionProfileId => Str


=back

Each argument is described in detail in: L<Paws::GroundStation::DeleteMissionProfile>

Returns: a L<Paws::GroundStation::MissionProfileIdResponse> instance

Deletes a mission profile.


=head2 DescribeContact

=over

=item ContactId => Str


=back

Each argument is described in detail in: L<Paws::GroundStation::DescribeContact>

Returns: a L<Paws::GroundStation::DescribeContactResponse> instance

Describes an existing contact.


=head2 GetConfig

=over

=item ConfigId => Str

=item ConfigType => Str


=back

Each argument is described in detail in: L<Paws::GroundStation::GetConfig>

Returns: a L<Paws::GroundStation::GetConfigResponse> instance

Returns C<Config> information.

Only one C<Config> response can be returned.


=head2 GetDataflowEndpointGroup

=over

=item DataflowEndpointGroupId => Str


=back

Each argument is described in detail in: L<Paws::GroundStation::GetDataflowEndpointGroup>

Returns: a L<Paws::GroundStation::GetDataflowEndpointGroupResponse> instance

Returns the dataflow endpoint group.


=head2 GetMinuteUsage

=over

=item Month => Int

=item Year => Int


=back

Each argument is described in detail in: L<Paws::GroundStation::GetMinuteUsage>

Returns: a L<Paws::GroundStation::GetMinuteUsageResponse> instance

Returns the number of minutes used by account.


=head2 GetMissionProfile

=over

=item MissionProfileId => Str


=back

Each argument is described in detail in: L<Paws::GroundStation::GetMissionProfile>

Returns: a L<Paws::GroundStation::GetMissionProfileResponse> instance

Returns a mission profile.


=head2 GetSatellite

=over

=item SatelliteId => Str


=back

Each argument is described in detail in: L<Paws::GroundStation::GetSatellite>

Returns: a L<Paws::GroundStation::GetSatelliteResponse> instance

Returns a satellite.


=head2 ListConfigs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GroundStation::ListConfigs>

Returns: a L<Paws::GroundStation::ListConfigsResponse> instance

Returns a list of C<Config> objects.


=head2 ListContacts

=over

=item EndTime => Str

=item StartTime => Str

=item StatusList => ArrayRef[Str|Undef]

=item [GroundStation => Str]

=item [MaxResults => Int]

=item [MissionProfileArn => Str]

=item [NextToken => Str]

=item [SatelliteArn => Str]


=back

Each argument is described in detail in: L<Paws::GroundStation::ListContacts>

Returns: a L<Paws::GroundStation::ListContactsResponse> instance

Returns a list of contacts.

If C<statusList> contains AVAILABLE, the request must include
C<groundstation>, C<missionprofileArn>, and C<satelliteArn>.


=head2 ListDataflowEndpointGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GroundStation::ListDataflowEndpointGroups>

Returns: a L<Paws::GroundStation::ListDataflowEndpointGroupsResponse> instance

Returns a list of C<DataflowEndpoint> groups.


=head2 ListGroundStations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GroundStation::ListGroundStations>

Returns: a L<Paws::GroundStation::ListGroundStationsResponse> instance

Returns a list of ground stations.


=head2 ListMissionProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GroundStation::ListMissionProfiles>

Returns: a L<Paws::GroundStation::ListMissionProfilesResponse> instance

Returns a list of mission profiles.


=head2 ListSatellites

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GroundStation::ListSatellites>

Returns: a L<Paws::GroundStation::ListSatellitesResponse> instance

Returns a list of satellites.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::GroundStation::ListTagsForResource>

Returns: a L<Paws::GroundStation::ListTagsForResourceResponse> instance

Returns a list of tags or a specified resource.


=head2 ReserveContact

=over

=item EndTime => Str

=item GroundStation => Str

=item MissionProfileArn => Str

=item SatelliteArn => Str

=item StartTime => Str

=item [Tags => GroundStation_TagsMap]


=back

Each argument is described in detail in: L<Paws::GroundStation::ReserveContact>

Returns: a L<Paws::GroundStation::ContactIdResponse> instance

Reserves a contact using specified parameters.


=head2 TagResource

=over

=item ResourceArn => Str

=item [Tags => GroundStation_TagsMap]


=back

Each argument is described in detail in: L<Paws::GroundStation::TagResource>

Returns: a L<Paws::GroundStation::TagResourceResponse> instance

Assigns a tag to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GroundStation::UntagResource>

Returns: a L<Paws::GroundStation::UntagResourceResponse> instance

Deassigns a resource tag.


=head2 UpdateConfig

=over

=item ConfigData => GroundStation_ConfigTypeData

=item ConfigId => Str

=item ConfigType => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GroundStation::UpdateConfig>

Returns: a L<Paws::GroundStation::ConfigIdResponse> instance

Updates the C<Config> used when scheduling contacts.

Updating a C<Config> will not update the execution parameters for
existing future contacts scheduled with this C<Config>.


=head2 UpdateMissionProfile

=over

=item MissionProfileId => Str

=item [ContactPostPassDurationSeconds => Int]

=item [ContactPrePassDurationSeconds => Int]

=item [DataflowEdges => ArrayRef[ArrayRef[Str|Undef]]]

=item [MinimumViableContactDurationSeconds => Int]

=item [Name => Str]

=item [TrackingConfigArn => Str]


=back

Each argument is described in detail in: L<Paws::GroundStation::UpdateMissionProfile>

Returns: a L<Paws::GroundStation::MissionProfileIdResponse> instance

Updates a mission profile.

Updating a mission profile will not update the execution parameters for
existing future contacts.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllConfigs(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllConfigs([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - configList, passing the object as the first parameter, and the string 'configList' as the second parameter 

If not, it will return a a L<Paws::GroundStation::ListConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContacts(sub { },EndTime => Str, StartTime => Str, StatusList => ArrayRef[Str|Undef], [GroundStation => Str, MaxResults => Int, MissionProfileArn => Str, NextToken => Str, SatelliteArn => Str])

=head2 ListAllContacts(EndTime => Str, StartTime => Str, StatusList => ArrayRef[Str|Undef], [GroundStation => Str, MaxResults => Int, MissionProfileArn => Str, NextToken => Str, SatelliteArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - contactList, passing the object as the first parameter, and the string 'contactList' as the second parameter 

If not, it will return a a L<Paws::GroundStation::ListContactsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataflowEndpointGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDataflowEndpointGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dataflowEndpointGroupList, passing the object as the first parameter, and the string 'dataflowEndpointGroupList' as the second parameter 

If not, it will return a a L<Paws::GroundStation::ListDataflowEndpointGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroundStations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllGroundStations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - groundStationList, passing the object as the first parameter, and the string 'groundStationList' as the second parameter 

If not, it will return a a L<Paws::GroundStation::ListGroundStationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMissionProfiles(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllMissionProfiles([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - missionProfileList, passing the object as the first parameter, and the string 'missionProfileList' as the second parameter 

If not, it will return a a L<Paws::GroundStation::ListMissionProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSatellites(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSatellites([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - satellites, passing the object as the first parameter, and the string 'satellites' as the second parameter 

If not, it will return a a L<Paws::GroundStation::ListSatellitesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

