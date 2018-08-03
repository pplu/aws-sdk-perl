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
  sub GetFederationToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetFederationToken', @_);
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
  


  sub operations { qw/CreateUser DeleteUser DescribeUser DescribeUserHierarchyGroup DescribeUserHierarchyStructure GetFederationToken ListRoutingProfiles ListSecurityProfiles ListUserHierarchyGroups ListUsers StartOutboundVoiceContact StopContact UpdateUserHierarchy UpdateUserIdentityInfo UpdateUserPhoneConfig UpdateUserRoutingProfile UpdateUserSecurityProfiles / }

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


=head2 GetFederationToken

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::GetFederationToken>

Returns: a L<Paws::Connect::GetFederationTokenResponse> instance

Retrieves a token for federation.


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

There is a throttling limit placed on usage of the API that includes a
RateLimit of 2 per second, and a BurstLimit of 5 per second.

If you are using an IAM account, it must have permission to the
C<connect:StartOutboundVoiceContact> action.


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

Update the security profiles assigned to the user.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

