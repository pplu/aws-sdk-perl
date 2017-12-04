package Paws::CognitoIdp::SMSMfaSettingsType;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has PreferredMfa => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SMSMfaSettingsType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::SMSMfaSettingsType object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., PreferredMfa => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::SMSMfaSettingsType object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

The SMS multi-factor authentication (MFA) settings type.

=head1 ATTRIBUTES


=head2 Enabled => Bool

  Specifies whether SMS text message MFA is enabled.


=head2 PreferredMfa => Bool

  The preferred MFA method.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

