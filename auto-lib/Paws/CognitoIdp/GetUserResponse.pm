
package Paws::CognitoIdp::GetUserResponse;
  use Moose;
  has MFAOptions => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::MFAOptionType]');
  has PreferredMfaSetting => (is => 'ro', isa => 'Str');
  has UserAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]', required => 1);
  has UserMFASettingList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Username => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUserResponse

=head1 ATTRIBUTES


=head2 MFAOptions => ArrayRef[L<Paws::CognitoIdp::MFAOptionType>]

I<This response parameter is no longer supported.> It provides
information only about SMS MFA configurations. It doesn't provide
information about TOTP software token MFA configurations. To look up
information about either type of MFA configuration, use
UserMFASettingList instead.


=head2 PreferredMfaSetting => Str

The user's preferred MFA setting.


=head2 B<REQUIRED> UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

An array of name-value pairs representing user attributes.

For custom attributes, you must prepend the C<custom:> prefix to the
attribute name.


=head2 UserMFASettingList => ArrayRef[Str|Undef]

The MFA options that are enabled for the user. The possible values in
this list are C<SMS_MFA> and C<SOFTWARE_TOKEN_MFA>.


=head2 B<REQUIRED> Username => Str

The user name of the user you wish to retrieve from the get user
request.


=head2 _request_id => Str


=cut

1;