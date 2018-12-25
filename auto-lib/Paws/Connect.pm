package Paws::Connect;
  use Moose;
  sub service { 'connect' }
  sub signing_name { 'connect' }
  sub version { '2017-08-08' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
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


  sub operations { qw/CreateUser DeleteUser DescribeUser DescribeUserHierarchyGroup DescribeUserHierarchyStructure GetContactAttributes GetCurrentMetricData GetFederationToken GetMetricData ListRoutingProfiles ListSecurityProfiles ListUserHierarchyGroups ListUsers StartOutboundVoiceContact StopContact UpdateContactAttributes UpdateUserHierarchy UpdateUserIdentityInfo UpdateUserPhoneConfig UpdateUserRoutingProfile UpdateUserSecurityProfiles / }

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

The Amazon Connect API Reference provides descriptions, syntax, and
usage examples for each of the Amazon Connect actions, data types,
parameters, and errors. Amazon Connect is a cloud-based contact center
solution that makes it easy to set up and manage a customer contact
center and provide reliable customer engagement at any scale.

Throttling limits for the Amazon Connect API operations:

For the C<GetMetricData> and C<GetCurrentMetricData> operations, a
RateLimit of 5 per second, and a BurstLimit of 8 per second.

For all other operations, a RateLimit of 2 per second, and a BurstLimit
of 5 per second.

You can request an increase to the throttling limits by submitting a
Amazon Connect service limits increase form
(https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase).
You must be signed in to your AWS account to access the form.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08>


=head1 METHODS

=head2 CreateUser

=over

=item InstanceId => Str

=item PhoneConfig => L<Paws::Connect::UserPhoneConfig>

=item RoutingProfileId => Str

=item SecurityProfileIds => ArrayRef[Str|Undef]

=item Username => Str

=item [DirectoryUserId => Str]

=item [HierarchyGroupId => Str]

=item [IdentityInfo => L<Paws::Connect::UserIdentityInfo>]

=item [Password => Str]


=back

Each argument is described in detail in: L<Paws::Connect::CreateUser>

Returns: a L<Paws::Connect::CreateUserResponse> instance

Creates a new user account in your Amazon Connect instance.


=head2 DeleteUser

=over

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteUser>

Returns: nothing

Deletes a user account from Amazon Connect.


=head2 DescribeUser

=over

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeUser>

Returns: a L<Paws::Connect::DescribeUserResponse> instance

Returns a C<User> object that contains information about the user
account specified by the C<UserId>.


=head2 DescribeUserHierarchyGroup

=over

=item HierarchyGroupId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeUserHierarchyGroup>

Returns: a L<Paws::Connect::DescribeUserHierarchyGroupResponse> instance

Returns a C<HierarchyGroup> object that includes information about a
hierarchy group in your instance.


=head2 DescribeUserHierarchyStructure

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeUserHierarchyStructure>

Returns: a L<Paws::Connect::DescribeUserHierarchyStructureResponse> instance

Returns a C<HiearchyGroupStructure> object, which contains data about
the levels in the agent hierarchy.


=head2 GetContactAttributes

=over

=item InitialContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::GetContactAttributes>

Returns: a L<Paws::Connect::GetContactAttributesResponse> instance

Retrieves the contact attributes associated with a contact.


=head2 GetCurrentMetricData

=over

=item CurrentMetrics => ArrayRef[L<Paws::Connect::CurrentMetric>]

=item Filters => L<Paws::Connect::Filters>

=item InstanceId => Str

=item [Groupings => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::GetCurrentMetricData>

Returns: a L<Paws::Connect::GetCurrentMetricDataResponse> instance

The C<GetCurrentMetricData> operation retrieves current metric data
from your Amazon Connect instance.

If you are using an IAM account, it must have permission to the
C<connect:GetCurrentMetricData> action.


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

=item Filters => L<Paws::Connect::Filters>

=item HistoricalMetrics => ArrayRef[L<Paws::Connect::HistoricalMetric>]

=item InstanceId => Str

=item StartTime => Str

=item [Groupings => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::GetMetricData>

Returns: a L<Paws::Connect::GetMetricDataResponse> instance

The C<GetMetricData> operation retrieves historical metrics data from
your Amazon Connect instance.

If you are using an IAM account, it must have permission to the
C<connect:GetMetricData> action.


=head2 ListRoutingProfiles

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListRoutingProfiles>

Returns: a L<Paws::Connect::ListRoutingProfilesResponse> instance

Returns an array of C<RoutingProfileSummary> objects that includes
information about the routing profiles in your instance.


=head2 ListSecurityProfiles

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListSecurityProfiles>

Returns: a L<Paws::Connect::ListSecurityProfilesResponse> instance

Returns an array of SecurityProfileSummary objects that contain
information about the security profiles in your instance, including the
ARN, Id, and Name of the security profile.


=head2 ListUserHierarchyGroups

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListUserHierarchyGroups>

Returns: a L<Paws::Connect::ListUserHierarchyGroupsResponse> instance

Returns a C<UserHierarchyGroupSummaryList>, which is an array of
C<HierarchyGroupSummary> objects that contain information about the
hierarchy groups in your instance.


=head2 ListUsers

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListUsers>

Returns: a L<Paws::Connect::ListUsersResponse> instance

Returns a C<UserSummaryList>, which is an array of C<UserSummary>
objects.


=head2 StartOutboundVoiceContact

=over

=item ContactFlowId => Str

=item DestinationPhoneNumber => Str

=item InstanceId => Str

=item [Attributes => L<Paws::Connect::Attributes>]

=item [ClientToken => Str]

=item [QueueId => Str]

=item [SourcePhoneNumber => Str]


=back

Each argument is described in detail in: L<Paws::Connect::StartOutboundVoiceContact>

Returns: a L<Paws::Connect::StartOutboundVoiceContactResponse> instance

The C<StartOutboundVoiceContact> operation initiates a contact flow to
place an outbound call to a customer.

If you are using an IAM account, it must have permission to the
C<connect:StartOutboundVoiceContact> action.

There is a 60 second dialing timeout for this operation. If the call is
not connected after 60 seconds, the call fails.


=head2 StopContact

=over

=item ContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::StopContact>

Returns: a L<Paws::Connect::StopContactResponse> instance

Ends the contact initiated by the C<StartOutboundVoiceContact>
operation.

If you are using an IAM account, it must have permission to the
C<connect:StopContact> action.


=head2 UpdateContactAttributes

=over

=item Attributes => L<Paws::Connect::Attributes>

=item InitialContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactAttributes>

Returns: a L<Paws::Connect::UpdateContactAttributesResponse> instance

The C<UpdateContactAttributes> operation lets you programmatically
create new, or update existing, contact attributes associated with a
contact. You can use the operation to add or update attributes for both
ongoing and completed contacts. For example, you can update the
customer's name or the reason the customer called while the call is
active, or add notes about steps that the agent took during the call
that are displayed to the next agent that takes the call. You can also
use the C<UpdateContactAttributes> operation to update attributes for a
contact using data from your CRM application and save the data with the
contact in Amazon Connect. You could also flag calls for additional
analysis, such as legal review or identifying abusive callers.

Contact attributes are available in Amazon Connect for 24 months, and
are then deleted.

I<Important:>

You cannot use the operation to update attributes for contacts that
occurred prior to the release of the API, September 12, 2018. You can
update attributes only for contacts that started after the release of
the API. If you attempt to update attributes for a contact that
occurred prior to the release of the API, a 400 error is returned. This
applies also to queued callbacks that were initiated prior to the
release of the API but are still active in your instance.


=head2 UpdateUserHierarchy

=over

=item InstanceId => Str

=item UserId => Str

=item [HierarchyGroupId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserHierarchy>

Returns: nothing

Assigns the specified hierarchy group to the user.


=head2 UpdateUserIdentityInfo

=over

=item IdentityInfo => L<Paws::Connect::UserIdentityInfo>

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserIdentityInfo>

Returns: nothing

Updates the identity information for the specified user in a
C<UserIdentityInfo> object, including email, first name, and last name.


=head2 UpdateUserPhoneConfig

=over

=item InstanceId => Str

=item PhoneConfig => L<Paws::Connect::UserPhoneConfig>

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserPhoneConfig>

Returns: nothing

Updates the phone configuration settings in the C<UserPhoneConfig>
object for the specified user.


=head2 UpdateUserRoutingProfile

=over

=item InstanceId => Str

=item RoutingProfileId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserRoutingProfile>

Returns: nothing

Assigns the specified routing profile to a user.


=head2 UpdateUserSecurityProfiles

=over

=item InstanceId => Str

=item SecurityProfileIds => ArrayRef[Str|Undef]

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserSecurityProfiles>

Returns: nothing

Updates the security profiles assigned to the user.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllMetricData(sub { },EndTime => Str, Filters => L<Paws::Connect::Filters>, HistoricalMetrics => ArrayRef[L<Paws::Connect::HistoricalMetric>], InstanceId => Str, StartTime => Str, [Groupings => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllMetricData(EndTime => Str, Filters => L<Paws::Connect::Filters>, HistoricalMetrics => ArrayRef[L<Paws::Connect::HistoricalMetric>], InstanceId => Str, StartTime => Str, [Groupings => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MetricResults, passing the object as the first parameter, and the string 'MetricResults' as the second parameter 

If not, it will return a a L<Paws::Connect::GetMetricDataResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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

