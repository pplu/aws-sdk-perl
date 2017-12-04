package Paws::CognitoIdp::AdminCreateUserConfigType;
  use Moose;
  has AllowAdminCreateUserOnly => (is => 'ro', isa => 'Bool');
  has InviteMessageTemplate => (is => 'ro', isa => 'Paws::CognitoIdp::MessageTemplateType');
  has UnusedAccountValidityDays => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminCreateUserConfigType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::AdminCreateUserConfigType object:

  $service_obj->Method(Att1 => { AllowAdminCreateUserOnly => $value, ..., UnusedAccountValidityDays => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::AdminCreateUserConfigType object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowAdminCreateUserOnly

=head1 DESCRIPTION

The configuration for creating a new user profile.

=head1 ATTRIBUTES


=head2 AllowAdminCreateUserOnly => Bool

  Set to C<True> if only the administrator is allowed to create user
profiles. Set to C<False> if users can sign themselves up via an app.


=head2 InviteMessageTemplate => L<Paws::CognitoIdp::MessageTemplateType>

  The message template to be used for the welcome message to new users.

See also Customizing User Invitation Messages
(http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-message-customizations.html#cognito-user-pool-settings-user-invitation-message-customization).


=head2 UnusedAccountValidityDays => Int

  The user account expiration limit, in days, after which the account is
no longer usable. To reset the account after that time limit, you must
call C<AdminCreateUser> again, specifying C<"RESEND"> for the
C<MessageAction> parameter. The default value for this parameter is 7.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

