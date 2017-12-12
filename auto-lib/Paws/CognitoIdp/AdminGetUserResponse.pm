
package Paws::CognitoIdp::AdminGetUserResponse;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has MFAOptions => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::MFAOptionType]');
  has PreferredMfaSetting => (is => 'ro', isa => 'Str');
  has UserAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]');
  has UserCreateDate => (is => 'ro', isa => 'Str');
  has UserLastModifiedDate => (is => 'ro', isa => 'Str');
  has UserMFASettingList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has UserStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminGetUserResponse

=head1 ATTRIBUTES


=head2 Enabled => Bool

Indicates that the status is enabled.


=head2 MFAOptions => ArrayRef[L<Paws::CognitoIdp::MFAOptionType>]

Specifies the options for MFA (e.g., email or phone number).


=head2 PreferredMfaSetting => Str

The user's preferred MFA setting.


=head2 UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

An array of name-value pairs representing user attributes.


=head2 UserCreateDate => Str

The date the user was created.


=head2 UserLastModifiedDate => Str

The date the user was last modified.


=head2 UserMFASettingList => ArrayRef[Str|Undef]

The list of the user's MFA settings.


=head2 B<REQUIRED> Username => Str

The user name of the user about whom you are receiving information.


=head2 UserStatus => Str

The user status. Can be one of the following:

=over

=item *

UNCONFIRMED - User has been created but not confirmed.

=item *

CONFIRMED - User has been confirmed.

=item *

ARCHIVED - User is no longer active.

=item *

COMPROMISED - User is disabled due to a potential security threat.

=item *

UNKNOWN - User status is not known.

=back


Valid values are: C<"UNCONFIRMED">, C<"CONFIRMED">, C<"ARCHIVED">, C<"COMPROMISED">, C<"UNKNOWN">, C<"RESET_REQUIRED">, C<"FORCE_CHANGE_PASSWORD">
=head2 _request_id => Str


=cut

1;