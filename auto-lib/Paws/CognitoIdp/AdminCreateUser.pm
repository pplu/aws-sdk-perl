
package Paws::CognitoIdp::AdminCreateUser;
  use Moose;
  has DesiredDeliveryMediums => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ForceAliasCreation => (is => 'ro', isa => 'Bool');
  has MessageAction => (is => 'ro', isa => 'Str');
  has TemporaryPassword => (is => 'ro', isa => 'Str');
  has UserAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]');
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);
  has ValidationData => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminCreateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminCreateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminCreateUser - Arguments for method AdminCreateUser on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminCreateUser on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminCreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminCreateUser.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminCreateUserResponse = $cognito -idp->AdminCreateUser(
      UserPoolId             => 'MyUserPoolIdType',
      Username               => 'MyUsernameType',
      DesiredDeliveryMediums => [
        'SMS', ...    # values: SMS, EMAIL
      ],              # OPTIONAL
      ForceAliasCreation => 1,                   # OPTIONAL
      MessageAction      => 'RESEND',            # OPTIONAL
      TemporaryPassword  => 'MyPasswordType',    # OPTIONAL
      UserAttributes     => [
        {
          Name  => 'MyAttributeNameType',        # min: 1, max: 32
          Value => 'MyAttributeValueType',       # max: 2048; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      ValidationData => [
        {
          Name  => 'MyAttributeNameType',        # min: 1, max: 32
          Value => 'MyAttributeValueType',       # max: 2048; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
    );

    # Results:
    my $User = $AdminCreateUserResponse->User;

    # Returns a L<Paws::CognitoIdp::AdminCreateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminCreateUser>

=head1 ATTRIBUTES


=head2 DesiredDeliveryMediums => ArrayRef[Str|Undef]

Specify C<"EMAIL"> if email will be used to send the welcome message.
Specify C<"SMS"> if the phone number will be used. The default value is
C<"SMS">. More than one value can be specified.



=head2 ForceAliasCreation => Bool

This parameter is only used if the C<phone_number_verified> or
C<email_verified> attribute is set to C<True>. Otherwise, it is
ignored.

If this parameter is set to C<True> and the phone number or email
address specified in the UserAttributes parameter already exists as an
alias with a different user, the API call will migrate the alias from
the previous user to the newly created user. The previous user will no
longer be able to log in using that alias.

If this parameter is set to C<False>, the API throws an
C<AliasExistsException> error if the alias already exists. The default
value is C<False>.



=head2 MessageAction => Str

Set to C<"RESEND"> to resend the invitation message to a user that
already exists and reset the expiration limit on the user's account.
Set to C<"SUPPRESS"> to suppress sending the message. Only one value
can be specified.

Valid values are: C<"RESEND">, C<"SUPPRESS">

=head2 TemporaryPassword => Str

The user's temporary password. This password must conform to the
password policy that you specified when you created the user pool.

The temporary password is valid only once. To complete the Admin Create
User flow, the user must enter the temporary password in the sign-in
page along with a new password to be used in all future sign-ins.

This parameter is not required. If you do not specify a value, Amazon
Cognito generates one for you.

The temporary password can only be used until the user account
expiration limit that you specified when you created the user pool. To
reset the account after that time limit, you must call
C<AdminCreateUser> again, specifying C<"RESEND"> for the
C<MessageAction> parameter.



=head2 UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

An array of name-value pairs that contain user attributes and attribute
values to be set for the user to be created. You can create a user
without specifying any attributes other than C<Username>. However, any
attributes that you specify as required (in or in the B<Attributes> tab
of the console) must be supplied either by you (in your call to
C<AdminCreateUser>) or by the user (when he or she signs up in response
to your welcome message).

For custom attributes, you must prepend the C<custom:> prefix to the
attribute name.

To send a message inviting the user to sign up, you must specify the
user's email address or phone number. This can be done in your call to
AdminCreateUser or in the B<Users> tab of the Amazon Cognito console
for managing your user pools.

In your call to C<AdminCreateUser>, you can set the C<email_verified>
attribute to C<True>, and you can set the C<phone_number_verified>
attribute to C<True>. (You can also do this by calling .)

=over

=item *

B<email>: The email address of the user to whom the message that
contains the code and username will be sent. Required if the
C<email_verified> attribute is set to C<True>, or if C<"EMAIL"> is
specified in the C<DesiredDeliveryMediums> parameter.

=item *

B<phone_number>: The phone number of the user to whom the message that
contains the code and username will be sent. Required if the
C<phone_number_verified> attribute is set to C<True>, or if C<"SMS"> is
specified in the C<DesiredDeliveryMediums> parameter.

=back




=head2 B<REQUIRED> Username => Str

The username for the user. Must be unique within the user pool. Must be
a UTF-8 string between 1 and 128 characters. After the user is created,
the username cannot be changed.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool where the user will be created.



=head2 ValidationData => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

The user's validation data. This is an array of name-value pairs that
contain user attributes and attribute values that you can use for
custom validation, such as restricting the types of user accounts that
can be registered. For example, you might choose to allow or disallow
user sign-up based on the user's domain.

To configure custom validation, you must create a Pre Sign-up Lambda
trigger for the user pool as described in the Amazon Cognito Developer
Guide. The Lambda trigger receives the validation data and uses it in
the validation process.

The user's validation data is not persisted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminCreateUser in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

