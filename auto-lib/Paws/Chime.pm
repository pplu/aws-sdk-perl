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
  
  sub ListAllAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccounts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Accounts }, @{ $next_result->Accounts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Accounts') foreach (@{ $result->Accounts });
        $result = $self->ListAccounts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Accounts') foreach (@{ $result->Accounts });
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
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->ListUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
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

The Amazon Chime API (application programming interface) is designed
for administrators to use to perform key tasks, such as creating and
managing Amazon Chime accounts and users. This guide provides detailed
information about the Amazon Chime API, including operations, types,
inputs and outputs, and error codes.

You can use an AWS SDK, the AWS Command Line Interface (AWS CLI), or
the REST API to make API calls. We recommend using an AWS SDK or the
AWS CLI. Each API operation includes links to information about using
it with a language-specific AWS SDK or the AWS CLI.

=over

=item Using an AWS SDK

You don't need to write code to calculate a signature for request
authentication. The SDK clients authenticate your requests by using
access keys that you provide. For more information about AWS SDKs, see
the AWS Developer Center (http://aws.amazon.com/developer/).

=item Using the AWS CLI

Use your access keys with the AWS CLI to make API calls. For
information about setting up the AWS CLI, see Installing the AWS
Command Line Interface
(http://docs.aws.amazon.com/cli/latest/userguide/installing.html) in
the I<AWS Command Line Interface User Guide>. For a list of available
Amazon Chime commands, see the Amazon Chime commands
(http://docs.aws.amazon.com/cli/latest/reference/chime/index.html) in
the I<AWS CLI Command Reference>.

=item Using REST API

If you use REST to make API calls, you must authenticate your request
by providing a signature. Amazon Chime supports signature version 4.
For more information, see Signature Version 4 Signing Process
(http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
in the I<Amazon Web Services General Reference>.

When making REST API calls, use the service name C<chime> and REST
endpoint C<https://service.chime.aws.amazon.com>.

=back

Administrative permissions are controlled using AWS Identity and Access
Management (IAM). For more information, see Control Access to the
Amazon Chime Console
(http://docs.aws.amazon.com/chime/latest/ag/control-access.html) in the
I<Amazon Chime Administration Guide>.

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

To retrieve user details with an email address instead of a user ID,
use the ListUsers action, and then filter by email address.


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

=item [UserEmail => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListUsers>

Returns: a L<Paws::Chime::ListUsersResponse> instance

Lists the users that belong to the specified Amazon Chime account. You
can specify an email address to list only the user that the email
address belongs to.


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

=head2 ListAllAccounts(sub { },[MaxResults => Int, Name => Str, NextToken => Str, UserEmail => Str])

=head2 ListAllAccounts([MaxResults => Int, Name => Str, NextToken => Str, UserEmail => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Accounts, passing the object as the first parameter, and the string 'Accounts' as the second parameter 

If not, it will return a a L<Paws::Chime::ListAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },AccountId => Str, [MaxResults => Int, NextToken => Str, UserEmail => Str])

=head2 ListAllUsers(AccountId => Str, [MaxResults => Int, NextToken => Str, UserEmail => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::Chime::ListUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

