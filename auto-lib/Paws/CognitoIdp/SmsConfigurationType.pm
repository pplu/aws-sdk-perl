# Generated from default/object.tt
package Paws::CognitoIdp::SmsConfigurationType;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw//;
  has ExternalId => (is => 'ro', isa => Str);
  has SnsCallerArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SnsCallerArn' => 1
                  },
  'types' => {
               'SnsCallerArn' => {
                                   'type' => 'Str'
                                 },
               'ExternalId' => {
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

Paws::CognitoIdp::SmsConfigurationType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::SmsConfigurationType object:

  $service_obj->Method(Att1 => { ExternalId => $value, ..., SnsCallerArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::SmsConfigurationType object:

  $result = $service_obj->Method(...);
  $result->Att1->ExternalId

=head1 DESCRIPTION

The SMS configuration type that includes the settings the Cognito User
Pool needs to call for the Amazon SNS service to send an SMS message
from your AWS account. The Cognito User Pool makes the request to the
Amazon SNS Service by using an AWS IAM role that you provide for your
AWS account.

=head1 ATTRIBUTES


=head2 ExternalId => Str

  The external ID is a value that we recommend you use to add security to
your IAM role which is used to call Amazon SNS to send SMS messages for
your user pool. If you provide an C<ExternalId>, the Cognito User Pool
will include it when attempting to assume your IAM role, so that you
can set your roles trust policy to require the C<ExternalID>. If you
use the Cognito Management Console to create a role for SMS MFA,
Cognito will create a role with the required permissions and a trust
policy that demonstrates use of the C<ExternalId>.


=head2 B<REQUIRED> SnsCallerArn => Str

  The Amazon Resource Name (ARN) of the Amazon Simple Notification
Service (SNS) caller. This is the ARN of the IAM role in your AWS
account which Cognito will use to send SMS messages.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

