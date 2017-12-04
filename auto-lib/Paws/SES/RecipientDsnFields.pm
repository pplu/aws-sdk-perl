package Paws::SES::RecipientDsnFields;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has DiagnosticCode => (is => 'ro', isa => 'Str');
  has ExtensionFields => (is => 'ro', isa => 'ArrayRef[Paws::SES::ExtensionField]');
  has FinalRecipient => (is => 'ro', isa => 'Str');
  has LastAttemptDate => (is => 'ro', isa => 'Str');
  has RemoteMta => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::RecipientDsnFields

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::RecipientDsnFields object:

  $service_obj->Method(Att1 => { Action => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::RecipientDsnFields object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Recipient-related information to include in the Delivery Status
Notification (DSN) when an email that Amazon SES receives on your
behalf bounces.

For information about receiving email through Amazon SES, see the
Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  The action performed by the reporting mail transfer agent (MTA) as a
result of its attempt to deliver the message to the recipient address.
This is required by RFC 3464 (https://tools.ietf.org/html/rfc3464).


=head2 DiagnosticCode => Str

  An extended explanation of what went wrong; this is usually an SMTP
response. See RFC 3463 (https://tools.ietf.org/html/rfc3463) for the
correct formatting of this parameter.


=head2 ExtensionFields => ArrayRef[L<Paws::SES::ExtensionField>]

  Additional X-headers to include in the DSN.


=head2 FinalRecipient => Str

  The email address that the message was ultimately delivered to. This
corresponds to the C<Final-Recipient> in the DSN. If not specified,
C<FinalRecipient> will be set to the C<Recipient> specified in the
C<BouncedRecipientInfo> structure. Either C<FinalRecipient> or the
recipient in C<BouncedRecipientInfo> must be a recipient of the
original bounced message.

Do not prepend the C<FinalRecipient> email address with C<rfc 822;>, as
described in RFC 3798 (https://tools.ietf.org/html/rfc3798).


=head2 LastAttemptDate => Str

  The time the final delivery attempt was made, in RFC 822
(https://www.ietf.org/rfc/rfc0822.txt) date-time format.


=head2 RemoteMta => Str

  The MTA to which the remote MTA attempted to deliver the message,
formatted as specified in RFC 3464
(https://tools.ietf.org/html/rfc3464) (C<mta-name-type; mta-name>).
This parameter typically applies only to propagating synchronous
bounces.


=head2 B<REQUIRED> Status => Str

  The status code that indicates what went wrong. This is required by RFC
3464 (https://tools.ietf.org/html/rfc3464).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

