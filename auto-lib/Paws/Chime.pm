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
  sub DeleteAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteAccount', @_);
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
  sub GetUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetUser', @_);
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
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LogoutUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::LogoutUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetPersonalPIN {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ResetPersonalPIN', @_);
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
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchSuspendUser BatchUnsuspendUser BatchUpdateUser CreateAccount DeleteAccount GetAccount GetAccountSettings GetUser InviteUsers ListAccounts ListUsers LogoutUser ResetPersonalPIN UpdateAccount UpdateAccountSettings UpdateUser / }

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

Amazon Chime is a communications service that transforms online
meetings with a secure, easy-to-use application that you can trust.
Amazon Chime works seamlessly across your devices so that you can stay
connected. You can use Amazon Chime for online meetings, video
conferencing, calls, and chat. You can also share content, both inside
and outside your organization. Amazon Chime frees you to work
productively from anywhere.

The Amazon Chime API is designed for administrators to use to perform
key tasks, such as creating and managing Amazon Chime accounts and
users. This guide provides detailed information about the Amazon Chime
API.

Use host name C<service.chime.aws.amazon.com> when working with the
Amazon Chime API.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01>


=head1 METHODS

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
(http://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
in the I<Amazon Chime Administration Guide>.

Users suspended from a C<Team> account are dissociated from the
account, but they can continue to use Amazon Chime as free users. To
remove the suspension from suspended C<Team> account users, invite them
to the C<Team> account again. You can use the InviteUsers action to do
so.

Users suspended from an C<EnterpriseLWA> account are immediately signed
out of Amazon Chime and are no longer able to sign in. To remove the
suspension from suspended C<EnterpriseLWA> account users, use the
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
(http://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
in the I<Amazon Chime Administration Guide>.

Previously suspended users who are unsuspended using this action are
returned to C<Registered> status. Users who are not previously
suspended are ignored.


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
(http://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
in the I<Amazon Chime Administration Guide>.


=head2 DeleteAccount

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteAccount>

Returns: a L<Paws::Chime::DeleteAccountResponse> instance

Deletes the specified Amazon Chime account. You must suspend all users
before deleting a C<Team> account. You can use the BatchSuspendUser
action to do so.

For C<EnterpriseLWA> and C<EnterpriseAD> accounts, you must release the
claimed domains for your Amazon Chime account before deletion. As soon
as you release the domain, all users under that account are suspended.

Deleted accounts appear in your C<Disabled> accounts list for 90 days.
To restore a deleted account from your C<Disabled> accounts list, you
must contact AWS Support.

After 90 days, deleted accounts are permanently removed from your
C<Disabled> accounts list.


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
such as remote control and dial out settings. For more information
about these settings, see Use the Policies Page
(http://docs.aws.amazon.com/chime/latest/ag/policies.html) in the
I<Amazon Chime Administration Guide>.


=head2 GetUser

=over

=item AccountId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetUser>

Returns: a L<Paws::Chime::GetUserResponse> instance

Retrieves details for the specified user ID, such as primary email
address, license type, and personal meeting PIN.


=head2 InviteUsers

=over

=item AccountId => Str

=item UserEmailList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Chime::InviteUsers>

Returns: a L<Paws::Chime::InviteUsersResponse> instance

Sends email invites to as many as 50 users, inviting them to the
specified Amazon Chime C<Team> account. Only C<Team> account types are
currently supported for this action.


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


=head2 ListUsers

=over

=item AccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListUsers>

Returns: a L<Paws::Chime::ListUsersResponse> instance

Lists the users that belong to the specified Amazon Chime account.


=head2 LogoutUser

=over

=item AccountId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::LogoutUser>

Returns: a L<Paws::Chime::LogoutUserResponse> instance

Logs out the specified user from all of the devices they are currently
logged into.


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


=head2 UpdateAccount

=over

=item AccountId => Str

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateAccount>

Returns: a L<Paws::Chime::UpdateAccountResponse> instance

Updates account details for the specified Amazon Chime account.
Currently, only account name updates are supported for this action.


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
(http://docs.aws.amazon.com/chime/latest/ag/policies.html) in the
I<Amazon Chime Administration Guide>.


=head2 UpdateUser

=over

=item AccountId => Str

=item UserId => Str

=item [LicenseType => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateUser>

Returns: a L<Paws::Chime::UpdateUserResponse> instance

Updates user details for a specified user ID. Currently, only
C<LicenseType> updates are supported for this action.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

