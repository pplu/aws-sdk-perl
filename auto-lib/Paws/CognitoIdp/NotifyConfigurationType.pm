# Generated from default/object.tt
package Paws::CognitoIdp::NotifyConfigurationType;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_NotifyEmailType/;
  has BlockEmail => (is => 'ro', isa => CognitoIdp_NotifyEmailType);
  has From => (is => 'ro', isa => Str);
  has MfaEmail => (is => 'ro', isa => CognitoIdp_NotifyEmailType);
  has NoActionEmail => (is => 'ro', isa => CognitoIdp_NotifyEmailType);
  has ReplyTo => (is => 'ro', isa => Str);
  has SourceArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SourceArn' => 1
                  },
  'types' => {
               'BlockEmail' => {
                                 'class' => 'Paws::CognitoIdp::NotifyEmailType',
                                 'type' => 'CognitoIdp_NotifyEmailType'
                               },
               'MfaEmail' => {
                               'type' => 'CognitoIdp_NotifyEmailType',
                               'class' => 'Paws::CognitoIdp::NotifyEmailType'
                             },
               'NoActionEmail' => {
                                    'class' => 'Paws::CognitoIdp::NotifyEmailType',
                                    'type' => 'CognitoIdp_NotifyEmailType'
                                  },
               'From' => {
                           'type' => 'Str'
                         },
               'SourceArn' => {
                                'type' => 'Str'
                              },
               'ReplyTo' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::NotifyConfigurationType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::NotifyConfigurationType object:

  $service_obj->Method(Att1 => { BlockEmail => $value, ..., SourceArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::NotifyConfigurationType object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockEmail

=head1 DESCRIPTION

The notify configuration type.

=head1 ATTRIBUTES


=head2 BlockEmail => CognitoIdp_NotifyEmailType

  Email template used when a detected risk event is blocked.


=head2 From => Str

  The email address that is sending the email. It must be either
individually verified with Amazon SES, or from a domain that has been
verified with Amazon SES.


=head2 MfaEmail => CognitoIdp_NotifyEmailType

  The MFA email template used when MFA is challenged as part of a
detected risk.


=head2 NoActionEmail => CognitoIdp_NotifyEmailType

  The email template used when a detected risk event is allowed.


=head2 ReplyTo => Str

  The destination to which the receiver of an email should reply to.


=head2 B<REQUIRED> SourceArn => Str

  The Amazon Resource Name (ARN) of the identity that is associated with
the sending authorization policy. It permits Amazon Cognito to send for
the email address specified in the C<From> parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

