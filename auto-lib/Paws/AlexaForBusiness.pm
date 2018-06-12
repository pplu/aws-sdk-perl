package Paws::AlexaForBusiness;
  use Moose;
  sub service { 'a4b' }
  sub signing_name { 'a4b' }
  sub version { '2017-11-09' }
  sub target_prefix { 'AlexaForBusiness' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateContactWithAddressBook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::AssociateContactWithAddressBook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateDeviceWithRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::AssociateDeviceWithRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSkillGroupWithRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::AssociateSkillGroupWithRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAddressBook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::CreateAddressBook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::CreateContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::CreateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::CreateRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSkillGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::CreateSkillGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAddressBook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DeleteAddressBook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DeleteContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DeleteProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DeleteRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoomSkillParameter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DeleteRoomSkillParameter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSkillGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DeleteSkillGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateContactFromAddressBook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DisassociateContactFromAddressBook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDeviceFromRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DisassociateDeviceFromRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateSkillGroupFromRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::DisassociateSkillGroupFromRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAddressBook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::GetAddressBook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::GetContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::GetDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::GetProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::GetRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRoomSkillParameter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::GetRoomSkillParameter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSkillGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::GetSkillGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeviceEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::ListDeviceEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSkills {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::ListSkills', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRoomSkillParameter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::PutRoomSkillParameter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResolveRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::ResolveRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::RevokeInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchAddressBooks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SearchAddressBooks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchContacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SearchContacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SearchDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SearchProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchRooms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SearchRooms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchSkillGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SearchSkillGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SearchUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::SendInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDeviceSync {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::StartDeviceSync', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAddressBook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::UpdateAddressBook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::UpdateContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::UpdateDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::UpdateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::UpdateRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSkillGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AlexaForBusiness::UpdateSkillGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllSkills {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSkills(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSkills(@_, NextToken => $next_result->NextToken);
        push @{ $result->SkillSummaries }, @{ $next_result->SkillSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SkillSummaries') foreach (@{ $result->SkillSummaries });
        $result = $self->ListSkills(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SkillSummaries') foreach (@{ $result->SkillSummaries });
    }

    return undef
  }
  sub ListAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub SearchAllDevices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchDevices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchDevices(@_, NextToken => $next_result->NextToken);
        push @{ $result->Devices }, @{ $next_result->Devices };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Devices') foreach (@{ $result->Devices });
        $result = $self->SearchDevices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Devices') foreach (@{ $result->Devices });
    }

    return undef
  }
  sub SearchAllProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->Profiles }, @{ $next_result->Profiles };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Profiles') foreach (@{ $result->Profiles });
        $result = $self->SearchProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Profiles') foreach (@{ $result->Profiles });
    }

    return undef
  }
  sub SearchAllRooms {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchRooms(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchRooms(@_, NextToken => $next_result->NextToken);
        push @{ $result->Rooms }, @{ $next_result->Rooms };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Rooms') foreach (@{ $result->Rooms });
        $result = $self->SearchRooms(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Rooms') foreach (@{ $result->Rooms });
    }

    return undef
  }
  sub SearchAllSkillGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchSkillGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchSkillGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->SkillGroups }, @{ $next_result->SkillGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SkillGroups') foreach (@{ $result->SkillGroups });
        $result = $self->SearchSkillGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SkillGroups') foreach (@{ $result->SkillGroups });
    }

    return undef
  }
  sub SearchAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->SearchUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }


  sub operations { qw/AssociateContactWithAddressBook AssociateDeviceWithRoom AssociateSkillGroupWithRoom CreateAddressBook CreateContact CreateProfile CreateRoom CreateSkillGroup CreateUser DeleteAddressBook DeleteContact DeleteProfile DeleteRoom DeleteRoomSkillParameter DeleteSkillGroup DeleteUser DisassociateContactFromAddressBook DisassociateDeviceFromRoom DisassociateSkillGroupFromRoom GetAddressBook GetContact GetDevice GetProfile GetRoom GetRoomSkillParameter GetSkillGroup ListDeviceEvents ListSkills ListTags PutRoomSkillParameter ResolveRoom RevokeInvitation SearchAddressBooks SearchContacts SearchDevices SearchProfiles SearchRooms SearchSkillGroups SearchUsers SendInvitation StartDeviceSync TagResource UntagResource UpdateAddressBook UpdateContact UpdateDevice UpdateProfile UpdateRoom UpdateSkillGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness - Perl Interface to AWS Alexa For Business

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AlexaForBusiness');
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

Alexa for Business makes it easy for you to use Alexa in your
organization. Alexa for Business gives you the tools you need for
managing Alexa devices, enroll your users, and assign skills, at scale.
You can build your own context-aware voice skills using the Alexa
Skills Kit and the Alexa for Business API operations. You can make also
these available as private skills for your organization. Alexa for
Business makes it easy to voice-enable your products and services,
providing context-aware voice experiences for your customers.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateContactWithAddressBook

=over

=item AddressBookArn => Str

=item ContactArn => Str


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::AssociateContactWithAddressBook>

Returns: a L<Paws::AlexaForBusiness::AssociateContactWithAddressBookResponse> instance

Associates a contact with a given address book.


=head2 AssociateDeviceWithRoom

=over

=item [DeviceArn => Str]

=item [RoomArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::AssociateDeviceWithRoom>

Returns: a L<Paws::AlexaForBusiness::AssociateDeviceWithRoomResponse> instance

Associates a device with a given room. This applies all the settings
from the room profile to the device, and all the skills in any skill
groups added to that room. This operation requires the device to be
online, or else a manual sync is required.


=head2 AssociateSkillGroupWithRoom

=over

=item [RoomArn => Str]

=item [SkillGroupArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::AssociateSkillGroupWithRoom>

Returns: a L<Paws::AlexaForBusiness::AssociateSkillGroupWithRoomResponse> instance

Associates a skill group with a given room. This enables all skills in
the associated skill group on all devices in the room.


=head2 CreateAddressBook

=over

=item Name => Str

=item [ClientRequestToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::CreateAddressBook>

Returns: a L<Paws::AlexaForBusiness::CreateAddressBookResponse> instance

Creates an address book with the specified details.


=head2 CreateContact

=over

=item FirstName => Str

=item PhoneNumber => Str

=item [ClientRequestToken => Str]

=item [DisplayName => Str]

=item [LastName => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::CreateContact>

Returns: a L<Paws::AlexaForBusiness::CreateContactResponse> instance

Creates a contact with the specified details.


=head2 CreateProfile

=over

=item Address => Str

=item DistanceUnit => Str

=item ProfileName => Str

=item TemperatureUnit => Str

=item Timezone => Str

=item WakeWord => Str

=item [ClientRequestToken => Str]

=item [MaxVolumeLimit => Int]

=item [PSTNEnabled => Bool]

=item [SetupModeDisabled => Bool]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::CreateProfile>

Returns: a L<Paws::AlexaForBusiness::CreateProfileResponse> instance

Creates a new room profile with the specified details.


=head2 CreateRoom

=over

=item RoomName => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [ProfileArn => Str]

=item [ProviderCalendarId => Str]

=item [Tags => ArrayRef[L<Paws::AlexaForBusiness::Tag>]]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::CreateRoom>

Returns: a L<Paws::AlexaForBusiness::CreateRoomResponse> instance

Creates a room with the specified details.


=head2 CreateSkillGroup

=over

=item SkillGroupName => Str

=item [ClientRequestToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::CreateSkillGroup>

Returns: a L<Paws::AlexaForBusiness::CreateSkillGroupResponse> instance

Creates a skill group with a specified name and description.


=head2 CreateUser

=over

=item UserId => Str

=item [ClientRequestToken => Str]

=item [Email => Str]

=item [FirstName => Str]

=item [LastName => Str]

=item [Tags => ArrayRef[L<Paws::AlexaForBusiness::Tag>]]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::CreateUser>

Returns: a L<Paws::AlexaForBusiness::CreateUserResponse> instance

Creates a user.


=head2 DeleteAddressBook

=over

=item AddressBookArn => Str


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::DeleteAddressBook>

Returns: a L<Paws::AlexaForBusiness::DeleteAddressBookResponse> instance

Deletes an address book by the address book ARN.


=head2 DeleteContact

=over

=item ContactArn => Str


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::DeleteContact>

Returns: a L<Paws::AlexaForBusiness::DeleteContactResponse> instance

Deletes a contact by the contact ARN.


=head2 DeleteProfile

=over

=item [ProfileArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::DeleteProfile>

Returns: a L<Paws::AlexaForBusiness::DeleteProfileResponse> instance

Deletes a room profile by the profile ARN.


=head2 DeleteRoom

=over

=item [RoomArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::DeleteRoom>

Returns: a L<Paws::AlexaForBusiness::DeleteRoomResponse> instance

Deletes a room by the room ARN.


=head2 DeleteRoomSkillParameter

=over

=item ParameterKey => Str

=item SkillId => Str

=item [RoomArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::DeleteRoomSkillParameter>

Returns: a L<Paws::AlexaForBusiness::DeleteRoomSkillParameterResponse> instance

Deletes room skill parameter details by room, skill, and parameter key
ID.


=head2 DeleteSkillGroup

=over

=item [SkillGroupArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::DeleteSkillGroup>

Returns: a L<Paws::AlexaForBusiness::DeleteSkillGroupResponse> instance

Deletes a skill group by skill group ARN.


=head2 DeleteUser

=over

=item EnrollmentId => Str

=item [UserArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::DeleteUser>

Returns: a L<Paws::AlexaForBusiness::DeleteUserResponse> instance

Deletes a specified user by user ARN and enrollment ARN.


=head2 DisassociateContactFromAddressBook

=over

=item AddressBookArn => Str

=item ContactArn => Str


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::DisassociateContactFromAddressBook>

Returns: a L<Paws::AlexaForBusiness::DisassociateContactFromAddressBookResponse> instance

Disassociates a contact from a given address book.


=head2 DisassociateDeviceFromRoom

=over

=item [DeviceArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::DisassociateDeviceFromRoom>

Returns: a L<Paws::AlexaForBusiness::DisassociateDeviceFromRoomResponse> instance

Disassociates a device from its current room. The device continues to
be connected to the Wi-Fi network and is still registered to the
account. The device settings and skills are removed from the room.


=head2 DisassociateSkillGroupFromRoom

=over

=item [RoomArn => Str]

=item [SkillGroupArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::DisassociateSkillGroupFromRoom>

Returns: a L<Paws::AlexaForBusiness::DisassociateSkillGroupFromRoomResponse> instance

Disassociates a skill group from a specified room. This disables all
skills in the skill group on all devices in the room.


=head2 GetAddressBook

=over

=item AddressBookArn => Str


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::GetAddressBook>

Returns: a L<Paws::AlexaForBusiness::GetAddressBookResponse> instance

Gets address the book details by the address book ARN.


=head2 GetContact

=over

=item ContactArn => Str


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::GetContact>

Returns: a L<Paws::AlexaForBusiness::GetContactResponse> instance

Gets the contact details by the contact ARN.


=head2 GetDevice

=over

=item [DeviceArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::GetDevice>

Returns: a L<Paws::AlexaForBusiness::GetDeviceResponse> instance

Gets the details of a device by device ARN.


=head2 GetProfile

=over

=item [ProfileArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::GetProfile>

Returns: a L<Paws::AlexaForBusiness::GetProfileResponse> instance

Gets the details of a room profile by profile ARN.


=head2 GetRoom

=over

=item [RoomArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::GetRoom>

Returns: a L<Paws::AlexaForBusiness::GetRoomResponse> instance

Gets room details by room ARN.


=head2 GetRoomSkillParameter

=over

=item ParameterKey => Str

=item SkillId => Str

=item [RoomArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::GetRoomSkillParameter>

Returns: a L<Paws::AlexaForBusiness::GetRoomSkillParameterResponse> instance

Gets room skill parameter details by room, skill, and parameter key
ARN.


=head2 GetSkillGroup

=over

=item [SkillGroupArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::GetSkillGroup>

Returns: a L<Paws::AlexaForBusiness::GetSkillGroupResponse> instance

Gets skill group details by skill group ARN.


=head2 ListDeviceEvents

=over

=item DeviceArn => Str

=item [EventType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::ListDeviceEvents>

Returns: a L<Paws::AlexaForBusiness::ListDeviceEventsResponse> instance

Lists the Device Event history for up to 30 days. If EventType isn't
specified in the request, this returns a list of all device events in
reverse chronological order. If EventType is specified, this returns a
list of device events for that EventType in reverse chronological
order.


=head2 ListSkills

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SkillGroupArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::ListSkills>

Returns: a L<Paws::AlexaForBusiness::ListSkillsResponse> instance

Lists all enabled skills in a specific skill group.


=head2 ListTags

=over

=item Arn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::ListTags>

Returns: a L<Paws::AlexaForBusiness::ListTagsResponse> instance

Lists all tags for a specific resource.


=head2 PutRoomSkillParameter

=over

=item RoomSkillParameter => L<Paws::AlexaForBusiness::RoomSkillParameter>

=item SkillId => Str

=item [RoomArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::PutRoomSkillParameter>

Returns: a L<Paws::AlexaForBusiness::PutRoomSkillParameterResponse> instance

Updates room skill parameter details by room, skill, and parameter key
ID. Not all skills have a room skill parameter.


=head2 ResolveRoom

=over

=item SkillId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::ResolveRoom>

Returns: a L<Paws::AlexaForBusiness::ResolveRoomResponse> instance

Determines the details for the room from which a skill request was
invoked. This operation is used by skill developers.


=head2 RevokeInvitation

=over

=item [EnrollmentId => Str]

=item [UserArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::RevokeInvitation>

Returns: a L<Paws::AlexaForBusiness::RevokeInvitationResponse> instance

Revokes an invitation and invalidates the enrollment URL.


=head2 SearchAddressBooks

=over

=item [Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::SearchAddressBooks>

Returns: a L<Paws::AlexaForBusiness::SearchAddressBooksResponse> instance

Searches address books and lists the ones that meet a set of filter and
sort criteria.


=head2 SearchContacts

=over

=item [Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::SearchContacts>

Returns: a L<Paws::AlexaForBusiness::SearchContactsResponse> instance

Searches contacts and lists the ones that meet a set of filter and sort
criteria.


=head2 SearchDevices

=over

=item [Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::SearchDevices>

Returns: a L<Paws::AlexaForBusiness::SearchDevicesResponse> instance

Searches devices and lists the ones that meet a set of filter criteria.


=head2 SearchProfiles

=over

=item [Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::SearchProfiles>

Returns: a L<Paws::AlexaForBusiness::SearchProfilesResponse> instance

Searches room profiles and lists the ones that meet a set of filter
criteria.


=head2 SearchRooms

=over

=item [Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::SearchRooms>

Returns: a L<Paws::AlexaForBusiness::SearchRoomsResponse> instance

Searches rooms and lists the ones that meet a set of filter and sort
criteria.


=head2 SearchSkillGroups

=over

=item [Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::SearchSkillGroups>

Returns: a L<Paws::AlexaForBusiness::SearchSkillGroupsResponse> instance

Searches skill groups and lists the ones that meet a set of filter and
sort criteria.


=head2 SearchUsers

=over

=item [Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::SearchUsers>

Returns: a L<Paws::AlexaForBusiness::SearchUsersResponse> instance

Searches users and lists the ones that meet a set of filter and sort
criteria.


=head2 SendInvitation

=over

=item [UserArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::SendInvitation>

Returns: a L<Paws::AlexaForBusiness::SendInvitationResponse> instance

Sends an enrollment invitation email with a URL to a user. The URL is
valid for 72 hours or until you call this operation again, whichever
comes first.


=head2 StartDeviceSync

=over

=item Features => ArrayRef[Str|Undef]

=item [DeviceArn => Str]

=item [RoomArn => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::StartDeviceSync>

Returns: a L<Paws::AlexaForBusiness::StartDeviceSyncResponse> instance

Resets a device and its account to the known default settings, by
clearing all information and settings set by previous users.


=head2 TagResource

=over

=item Arn => Str

=item Tags => ArrayRef[L<Paws::AlexaForBusiness::Tag>]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::TagResource>

Returns: a L<Paws::AlexaForBusiness::TagResourceResponse> instance

Adds metadata tags to a specified resource.


=head2 UntagResource

=over

=item Arn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::UntagResource>

Returns: a L<Paws::AlexaForBusiness::UntagResourceResponse> instance

Removes metadata tags from a specified resource.


=head2 UpdateAddressBook

=over

=item AddressBookArn => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::UpdateAddressBook>

Returns: a L<Paws::AlexaForBusiness::UpdateAddressBookResponse> instance

Updates address book details by the address book ARN.


=head2 UpdateContact

=over

=item ContactArn => Str

=item [DisplayName => Str]

=item [FirstName => Str]

=item [LastName => Str]

=item [PhoneNumber => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::UpdateContact>

Returns: a L<Paws::AlexaForBusiness::UpdateContactResponse> instance

Updates the contact details by the contact ARN.


=head2 UpdateDevice

=over

=item [DeviceArn => Str]

=item [DeviceName => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::UpdateDevice>

Returns: a L<Paws::AlexaForBusiness::UpdateDeviceResponse> instance

Updates the device name by device ARN.


=head2 UpdateProfile

=over

=item [Address => Str]

=item [DistanceUnit => Str]

=item [MaxVolumeLimit => Int]

=item [ProfileArn => Str]

=item [ProfileName => Str]

=item [PSTNEnabled => Bool]

=item [SetupModeDisabled => Bool]

=item [TemperatureUnit => Str]

=item [Timezone => Str]

=item [WakeWord => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::UpdateProfile>

Returns: a L<Paws::AlexaForBusiness::UpdateProfileResponse> instance

Updates an existing room profile by room profile ARN.


=head2 UpdateRoom

=over

=item [Description => Str]

=item [ProfileArn => Str]

=item [ProviderCalendarId => Str]

=item [RoomArn => Str]

=item [RoomName => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::UpdateRoom>

Returns: a L<Paws::AlexaForBusiness::UpdateRoomResponse> instance

Updates room details by room ARN.


=head2 UpdateSkillGroup

=over

=item [Description => Str]

=item [SkillGroupArn => Str]

=item [SkillGroupName => Str]


=back

Each argument is described in detail in: L<Paws::AlexaForBusiness::UpdateSkillGroup>

Returns: a L<Paws::AlexaForBusiness::UpdateSkillGroupResponse> instance

Updates skill group details by skill group ARN.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllSkills(sub { },[MaxResults => Int, NextToken => Str, SkillGroupArn => Str])

=head2 ListAllSkills([MaxResults => Int, NextToken => Str, SkillGroupArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SkillSummaries, passing the object as the first parameter, and the string 'SkillSummaries' as the second parameter 

If not, it will return a a L<Paws::AlexaForBusiness::ListSkillsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTags(sub { },Arn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTags(Arn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::AlexaForBusiness::ListTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllDevices(sub { },[Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])

=head2 SearchAllDevices([Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Devices, passing the object as the first parameter, and the string 'Devices' as the second parameter 

If not, it will return a a L<Paws::AlexaForBusiness::SearchDevicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllProfiles(sub { },[Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])

=head2 SearchAllProfiles([Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Profiles, passing the object as the first parameter, and the string 'Profiles' as the second parameter 

If not, it will return a a L<Paws::AlexaForBusiness::SearchProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllRooms(sub { },[Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])

=head2 SearchAllRooms([Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Rooms, passing the object as the first parameter, and the string 'Rooms' as the second parameter 

If not, it will return a a L<Paws::AlexaForBusiness::SearchRoomsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllSkillGroups(sub { },[Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])

=head2 SearchAllSkillGroups([Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SkillGroups, passing the object as the first parameter, and the string 'SkillGroups' as the second parameter 

If not, it will return a a L<Paws::AlexaForBusiness::SearchSkillGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllUsers(sub { },[Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])

=head2 SearchAllUsers([Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>], MaxResults => Int, NextToken => Str, SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::AlexaForBusiness::SearchUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

