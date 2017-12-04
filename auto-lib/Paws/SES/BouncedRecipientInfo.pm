package Paws::SES::BouncedRecipientInfo;
  use Moose;
  has BounceType => (is => 'ro', isa => 'Str');
  has Recipient => (is => 'ro', isa => 'Str', required => 1);
  has RecipientArn => (is => 'ro', isa => 'Str');
  has RecipientDsnFields => (is => 'ro', isa => 'Paws::SES::RecipientDsnFields');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::BouncedRecipientInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::BouncedRecipientInfo object:

  $service_obj->Method(Att1 => { BounceType => $value, ..., RecipientDsnFields => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::BouncedRecipientInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->BounceType

=head1 DESCRIPTION

Recipient-related information to include in the Delivery Status
Notification (DSN) when an email that Amazon SES receives on your
behalf bounces.

For information about receiving email through Amazon SES, see the
Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html).

=head1 ATTRIBUTES


=head2 BounceType => Str

  The reason for the bounce. You must provide either this parameter or
C<RecipientDsnFields>.


=head2 B<REQUIRED> Recipient => Str

  The email address of the recipient of the bounced email.


=head2 RecipientArn => Str

  This parameter is used only for sending authorization. It is the ARN of
the identity that is associated with the sending authorization policy
that permits you to receive email for the recipient of the bounced
email. For more information about sending authorization, see the Amazon
SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).


=head2 RecipientDsnFields => L<Paws::SES::RecipientDsnFields>

  Recipient-related DSN fields, most of which would normally be filled in
automatically when provided with a C<BounceType>. You must provide
either this parameter or C<BounceType>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

