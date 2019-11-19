# Generated from json/callresult_class.tt

package Paws::CognitoIdp::AdminGetUserResponse;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_MFAOptionType CognitoIdp_AttributeType/;
  has Enabled => (is => 'ro', isa => Bool);
  has MFAOptions => (is => 'ro', isa => ArrayRef[CognitoIdp_MFAOptionType]);
  has PreferredMfaSetting => (is => 'ro', isa => Str);
  has UserAttributes => (is => 'ro', isa => ArrayRef[CognitoIdp_AttributeType]);
  has UserCreateDate => (is => 'ro', isa => Str);
  has UserLastModifiedDate => (is => 'ro', isa => Str);
  has UserMFASettingList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Username => (is => 'ro', isa => Str, required => 1);
  has UserStatus => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserCreateDate' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserMFASettingList' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
               'MFAOptions' => {
                                 'type' => 'ArrayRef[CognitoIdp_MFAOptionType]',
                                 'class' => 'Paws::CognitoIdp::MFAOptionType'
                               },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'PreferredMfaSetting' => {
                                          'type' => 'Str'
                                        },
               'Username' => {
                               'type' => 'Str'
                             },
               'UserAttributes' => {
                                     'type' => 'ArrayRef[CognitoIdp_AttributeType]',
                                     'class' => 'Paws::CognitoIdp::AttributeType'
                                   },
               'UserStatus' => {
                                 'type' => 'Str'
                               },
               'UserLastModifiedDate' => {
                                           'type' => 'Str'
                                         }
             },
  'IsRequired' => {
                    'Username' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminGetUserResponse

=head1 ATTRIBUTES


=head2 Enabled => Bool

Indicates that the status is enabled.


=head2 MFAOptions => ArrayRef[CognitoIdp_MFAOptionType]

I<This response parameter is no longer supported.> It provides
information only about SMS MFA configurations. It doesn't provide
information about TOTP software token MFA configurations. To look up
information about either type of MFA configuration, use the
AdminGetUserResponse$UserMFASettingList response instead.


=head2 PreferredMfaSetting => Str

The user's preferred MFA setting.


=head2 UserAttributes => ArrayRef[CognitoIdp_AttributeType]

An array of name-value pairs representing user attributes.


=head2 UserCreateDate => Str

The date the user was created.


=head2 UserLastModifiedDate => Str

The date the user was last modified.


=head2 UserMFASettingList => ArrayRef[Str|Undef]

The MFA options that are enabled for the user. The possible values in
this list are C<SMS_MFA> and C<SOFTWARE_TOKEN_MFA>.


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

=item *

RESET_REQUIRED - User is confirmed, but the user must request a code
and reset his or her password before he or she can sign in.

=item *

FORCE_CHANGE_PASSWORD - The user is confirmed and the user can sign in
using a temporary password, but on first sign-in, the user must change
his or her password to a new value before doing anything else.

=back


Valid values are: C<"UNCONFIRMED">, C<"CONFIRMED">, C<"ARCHIVED">, C<"COMPROMISED">, C<"UNKNOWN">, C<"RESET_REQUIRED">, C<"FORCE_CHANGE_PASSWORD">
=head2 _request_id => Str


=cut

1;