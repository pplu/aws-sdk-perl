package Paws::Connect;
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 'connect' }
  sub signing_name { 'connect' }
  sub version { '2017-08-08' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserHierarchyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeUserHierarchyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserHierarchyStructure {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeUserHierarchyStructure', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContactAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetContactAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCurrentMetricData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetCurrentMetricData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFederationToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetFederationToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMetricData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetMetricData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContactFlows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListContactFlows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHoursOfOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListHoursOfOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPhoneNumbers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListPhoneNumbers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoutingProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListRoutingProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListSecurityProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserHierarchyGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListUserHierarchyGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartOutboundVoiceContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartOutboundVoiceContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StopContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContactAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserHierarchy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserHierarchy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserIdentityInfo {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserIdentityInfo', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserPhoneConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserPhoneConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserRoutingProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserRoutingProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserSecurityProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserSecurityProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllMetricData {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetMetricData(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetMetricData(@_, NextToken => $next_result->NextToken);
        push @{ $result->MetricResults }, @{ $next_result->MetricResults };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MetricResults') foreach (@{ $result->MetricResults });
        $result = $self->GetMetricData(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MetricResults') foreach (@{ $result->MetricResults });
    }

    return undef
  }
  sub ListAllContactFlows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContactFlows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContactFlows(@_, NextToken => $next_result->NextToken);
        push @{ $result->ContactFlowSummaryList }, @{ $next_result->ContactFlowSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ContactFlowSummaryList') foreach (@{ $result->ContactFlowSummaryList });
        $result = $self->ListContactFlows(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ContactFlowSummaryList') foreach (@{ $result->ContactFlowSummaryList });
    }

    return undef
  }
  sub ListAllHoursOfOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHoursOfOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHoursOfOperations(@_, NextToken => $next_result->NextToken);
        push @{ $result->HoursOfOperationSummaryList }, @{ $next_result->HoursOfOperationSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HoursOfOperationSummaryList') foreach (@{ $result->HoursOfOperationSummaryList });
        $result = $self->ListHoursOfOperations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HoursOfOperationSummaryList') foreach (@{ $result->HoursOfOperationSummaryList });
    }

    return undef
  }
  sub ListAllPhoneNumbers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPhoneNumbers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPhoneNumbers(@_, NextToken => $next_result->NextToken);
        push @{ $result->PhoneNumberSummaryList }, @{ $next_result->PhoneNumberSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PhoneNumberSummaryList') foreach (@{ $result->PhoneNumberSummaryList });
        $result = $self->ListPhoneNumbers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PhoneNumberSummaryList') foreach (@{ $result->PhoneNumberSummaryList });
    }

    return undef
  }
  sub ListAllQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListQueues(@_, NextToken => $next_result->NextToken);
        push @{ $result->QueueSummaryList }, @{ $next_result->QueueSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'QueueSummaryList') foreach (@{ $result->QueueSummaryList });
        $result = $self->ListQueues(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'QueueSummaryList') foreach (@{ $result->QueueSummaryList });
    }

    return undef
  }
  sub ListAllRoutingProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRoutingProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRoutingProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->RoutingProfileSummaryList }, @{ $next_result->RoutingProfileSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RoutingProfileSummaryList') foreach (@{ $result->RoutingProfileSummaryList });
        $result = $self->ListRoutingProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RoutingProfileSummaryList') foreach (@{ $result->RoutingProfileSummaryList });
    }

    return undef
  }
  sub ListAllSecurityProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecurityProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSecurityProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityProfileSummaryList }, @{ $next_result->SecurityProfileSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityProfileSummaryList') foreach (@{ $result->SecurityProfileSummaryList });
        $result = $self->ListSecurityProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityProfileSummaryList') foreach (@{ $result->SecurityProfileSummaryList });
    }

    return undef
  }
  sub ListAllUserHierarchyGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUserHierarchyGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUserHierarchyGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserHierarchyGroupSummaryList }, @{ $next_result->UserHierarchyGroupSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserHierarchyGroupSummaryList') foreach (@{ $result->UserHierarchyGroupSummaryList });
        $result = $self->ListUserHierarchyGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserHierarchyGroupSummaryList') foreach (@{ $result->UserHierarchyGroupSummaryList });
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
        push @{ $result->UserSummaryList }, @{ $next_result->UserSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserSummaryList') foreach (@{ $result->UserSummaryList });
        $result = $self->ListUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserSummaryList') foreach (@{ $result->UserSummaryList });
    }

    return undef
  }


  sub operations { qw/CreateUser DeleteUser DescribeUser DescribeUserHierarchyGroup DescribeUserHierarchyStructure GetContactAttributes GetCurrentMetricData GetFederationToken GetMetricData ListContactFlows ListHoursOfOperations ListPhoneNumbers ListQueues ListRoutingProfiles ListSecurityProfiles ListTagsForResource ListUserHierarchyGroups ListUsers StartOutboundVoiceContact StopContact TagResource UntagResource UpdateContactAttributes UpdateUserHierarchy UpdateUserIdentityInfo UpdateUserPhoneConfig UpdateUserRoutingProfile UpdateUserSecurityProfiles / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect - Perl Interface to AWS Amazon Connect Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Connect');
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

Amazon Connect is a cloud-based contact center solution that makes it
easy to set up and manage a customer contact center and provide
reliable customer engagement at any scale.

Amazon Connect provides rich metrics and real-time reporting that allow
you to optimize contact routing. You can also resolve customer issues
more efficiently by putting customers in touch with the right agents.

There are limits to the number of Amazon Connect resources that you can
create and limits to the number of requests that you can make per
second. For more information, see Amazon Connect Service Limits
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
in the I<Amazon Connect Administrator Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08>


=head1 METHODS

=head2 CreateUser

=over

=item InstanceId => Str

=item PhoneConfig => Connect_UserPhoneConfig

=item RoutingProfileId => Str

=item SecurityProfileIds => ArrayRef[Str|Undef]

=item Username => Str

=item [DirectoryUserId => Str]

=item [HierarchyGroupId => Str]

=item [IdentityInfo => Connect_UserIdentityInfo]

=item [Password => Str]

=item [Tags => Connect_TagMap]


=back

Each argument is described in detail in: L<Paws::Connect::CreateUser>

Returns: a L<Paws::Connect::CreateUserResponse> instance

Creates a user account for the specified Amazon Connect instance.


=head2 DeleteUser

=over

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteUser>

Returns: nothing

Deletes a user account from the specified Amazon Connect instance.


=head2 DescribeUser

=over

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeUser>

Returns: a L<Paws::Connect::DescribeUserResponse> instance

Describes the specified user account. You can find the instance ID in
the console (itE<rsquo>s the final part of the ARN). The console does
not display the user IDs. Instead, list the users and note the IDs
provided in the output.


=head2 DescribeUserHierarchyGroup

=over

=item HierarchyGroupId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeUserHierarchyGroup>

Returns: a L<Paws::Connect::DescribeUserHierarchyGroupResponse> instance

Describes the specified hierarchy group.


=head2 DescribeUserHierarchyStructure

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeUserHierarchyStructure>

Returns: a L<Paws::Connect::DescribeUserHierarchyStructureResponse> instance

Describes the hierarchy structure of the specified Amazon Connect
instance.


=head2 GetContactAttributes

=over

=item InitialContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::GetContactAttributes>

Returns: a L<Paws::Connect::GetContactAttributesResponse> instance

Retrieves the contact attributes for the specified contact.


=head2 GetCurrentMetricData

=over

=item CurrentMetrics => ArrayRef[Connect_CurrentMetric]

=item Filters => Connect_Filters

=item InstanceId => Str

=item [Groupings => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::GetCurrentMetricData>

Returns: a L<Paws::Connect::GetCurrentMetricDataResponse> instance

Gets the real-time metric data from the specified Amazon Connect
instance.

For more information, see Real-time Metrics Reports
(https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-reports.html)
in the I<Amazon Connect Administrator Guide>.


=head2 GetFederationToken

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::GetFederationToken>

Returns: a L<Paws::Connect::GetFederationTokenResponse> instance

Retrieves a token for federation.


=head2 GetMetricData

=over

=item EndTime => Str

=item Filters => Connect_Filters

=item HistoricalMetrics => ArrayRef[Connect_HistoricalMetric]

=item InstanceId => Str

=item StartTime => Str

=item [Groupings => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::GetMetricData>

Returns: a L<Paws::Connect::GetMetricDataResponse> instance

Gets historical metric data from the specified Amazon Connect instance.

For more information, see Historical Metrics Reports
(https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListContactFlows

=over

=item InstanceId => Str

=item [ContactFlowTypes => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListContactFlows>

Returns: a L<Paws::Connect::ListContactFlowsResponse> instance

Provides information about the contact flows for the specified Amazon
Connect instance.


=head2 ListHoursOfOperations

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListHoursOfOperations>

Returns: a L<Paws::Connect::ListHoursOfOperationsResponse> instance

Provides information about the hours of operation for the specified
Amazon Connect instance.


=head2 ListPhoneNumbers

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PhoneNumberCountryCodes => ArrayRef[Str|Undef]]

=item [PhoneNumberTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Connect::ListPhoneNumbers>

Returns: a L<Paws::Connect::ListPhoneNumbersResponse> instance

Provides information about the phone numbers for the specified Amazon
Connect instance.


=head2 ListQueues

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QueueTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Connect::ListQueues>

Returns: a L<Paws::Connect::ListQueuesResponse> instance

Provides information about the queues for the specified Amazon Connect
instance.


=head2 ListRoutingProfiles

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListRoutingProfiles>

Returns: a L<Paws::Connect::ListRoutingProfilesResponse> instance

Provides summary information about the routing profiles for the
specified Amazon Connect instance.


=head2 ListSecurityProfiles

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListSecurityProfiles>

Returns: a L<Paws::Connect::ListSecurityProfilesResponse> instance

Provides summary information about the security profiles for the
specified Amazon Connect instance.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Connect::ListTagsForResource>

Returns: a L<Paws::Connect::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.


=head2 ListUserHierarchyGroups

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListUserHierarchyGroups>

Returns: a L<Paws::Connect::ListUserHierarchyGroupsResponse> instance

Provides summary information about the hierarchy groups for the
specified Amazon Connect instance.


=head2 ListUsers

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListUsers>

Returns: a L<Paws::Connect::ListUsersResponse> instance

Provides summary information about the users for the specified Amazon
Connect instance.


=head2 StartOutboundVoiceContact

=over

=item ContactFlowId => Str

=item DestinationPhoneNumber => Str

=item InstanceId => Str

=item [Attributes => Connect_Attributes]

=item [ClientToken => Str]

=item [QueueId => Str]

=item [SourcePhoneNumber => Str]


=back

Each argument is described in detail in: L<Paws::Connect::StartOutboundVoiceContact>

Returns: a L<Paws::Connect::StartOutboundVoiceContactResponse> instance

Initiates a contact flow to place an outbound call to a customer.

There is a 60 second dialing timeout for this operation. If the call is
not connected after 60 seconds, it fails.


=head2 StopContact

=over

=item ContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::StopContact>

Returns: a L<Paws::Connect::StopContactResponse> instance

Ends the specified contact.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => Connect_TagMap


=back

Each argument is described in detail in: L<Paws::Connect::TagResource>

Returns: nothing

Adds the specified tags to the specified resource.

The supported resource type is users.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Connect::UntagResource>

Returns: nothing

Removes the specified tags from the specified resource.


=head2 UpdateContactAttributes

=over

=item Attributes => Connect_Attributes

=item InitialContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactAttributes>

Returns: a L<Paws::Connect::UpdateContactAttributesResponse> instance

Creates or updates the contact attributes associated with the specified
contact.

You can add or update attributes for both ongoing and completed
contacts. For example, you can update the customer's name or the reason
the customer called while the call is active, or add notes about steps
that the agent took during the call that are displayed to the next
agent that takes the call. You can also update attributes for a contact
using data from your CRM application and save the data with the contact
in Amazon Connect. You could also flag calls for additional analysis,
such as legal review or identifying abusive callers.

Contact attributes are available in Amazon Connect for 24 months, and
are then deleted.

B<Important:> You cannot use the operation to update attributes for
contacts that occurred prior to the release of the API, September 12,
2018. You can update attributes only for contacts that started after
the release of the API. If you attempt to update attributes for a
contact that occurred prior to the release of the API, a 400 error is
returned. This applies also to queued callbacks that were initiated
prior to the release of the API but are still active in your instance.


=head2 UpdateUserHierarchy

=over

=item InstanceId => Str

=item UserId => Str

=item [HierarchyGroupId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserHierarchy>

Returns: nothing

Assigns the specified hierarchy group to the specified user.


=head2 UpdateUserIdentityInfo

=over

=item IdentityInfo => Connect_UserIdentityInfo

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserIdentityInfo>

Returns: nothing

Updates the identity information for the specified user.


=head2 UpdateUserPhoneConfig

=over

=item InstanceId => Str

=item PhoneConfig => Connect_UserPhoneConfig

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserPhoneConfig>

Returns: nothing

Updates the phone configuration settings for the specified user.


=head2 UpdateUserRoutingProfile

=over

=item InstanceId => Str

=item RoutingProfileId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserRoutingProfile>

Returns: nothing

Assigns the specified routing profile to the specified user.


=head2 UpdateUserSecurityProfiles

=over

=item InstanceId => Str

=item SecurityProfileIds => ArrayRef[Str|Undef]

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserSecurityProfiles>

Returns: nothing

Assigns the specified security profiles to the specified user.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllMetricData(sub { },EndTime => Str, Filters => Connect_Filters, HistoricalMetrics => ArrayRef[Connect_HistoricalMetric], InstanceId => Str, StartTime => Str, [Groupings => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllMetricData(EndTime => Str, Filters => Connect_Filters, HistoricalMetrics => ArrayRef[Connect_HistoricalMetric], InstanceId => Str, StartTime => Str, [Groupings => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MetricResults, passing the object as the first parameter, and the string 'MetricResults' as the second parameter 

If not, it will return a a L<Paws::Connect::GetMetricDataResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContactFlows(sub { },InstanceId => Str, [ContactFlowTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllContactFlows(InstanceId => Str, [ContactFlowTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ContactFlowSummaryList, passing the object as the first parameter, and the string 'ContactFlowSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListContactFlowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHoursOfOperations(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllHoursOfOperations(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HoursOfOperationSummaryList, passing the object as the first parameter, and the string 'HoursOfOperationSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListHoursOfOperationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPhoneNumbers(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, PhoneNumberCountryCodes => ArrayRef[Str|Undef], PhoneNumberTypes => ArrayRef[Str|Undef]])

=head2 ListAllPhoneNumbers(InstanceId => Str, [MaxResults => Int, NextToken => Str, PhoneNumberCountryCodes => ArrayRef[Str|Undef], PhoneNumberTypes => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PhoneNumberSummaryList, passing the object as the first parameter, and the string 'PhoneNumberSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListPhoneNumbersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueues(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, QueueTypes => ArrayRef[Str|Undef]])

=head2 ListAllQueues(InstanceId => Str, [MaxResults => Int, NextToken => Str, QueueTypes => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - QueueSummaryList, passing the object as the first parameter, and the string 'QueueSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListQueuesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRoutingProfiles(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRoutingProfiles(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RoutingProfileSummaryList, passing the object as the first parameter, and the string 'RoutingProfileSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListRoutingProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSecurityProfiles(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSecurityProfiles(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityProfileSummaryList, passing the object as the first parameter, and the string 'SecurityProfileSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListSecurityProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUserHierarchyGroups(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUserHierarchyGroups(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserHierarchyGroupSummaryList, passing the object as the first parameter, and the string 'UserHierarchyGroupSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListUserHierarchyGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUsers(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserSummaryList, passing the object as the first parameter, and the string 'UserSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

