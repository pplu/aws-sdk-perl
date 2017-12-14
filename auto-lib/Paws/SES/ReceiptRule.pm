package Paws::SES::ReceiptRule;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::SES::ReceiptAction]');
  has Enabled => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Recipients => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ScanEnabled => (is => 'ro', isa => 'Bool');
  has TlsPolicy => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ReceiptRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::ReceiptRule object:

  $service_obj->Method(Att1 => { Actions => $value, ..., TlsPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::ReceiptRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Receipt rules enable you to specify which actions Amazon SES should
take when it receives mail on behalf of one or more email addresses or
domains that you own.

Each receipt rule defines a set of email addresses or domains that it
applies to. If the email addresses or domains match at least one
recipient address of the message, Amazon SES executes all of the
receipt rule's actions on the message.

For information about setting up receipt rules, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html).

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::SES::ReceiptAction>]

  An ordered list of actions to perform on messages that match at least
one of the recipient email addresses or domains specified in the
receipt rule.


=head2 Enabled => Bool

  If C<true>, the receipt rule is active. The default value is C<false>.


=head2 B<REQUIRED> Name => Str

  The name of the receipt rule. The name must:

=over

=item *

This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
underscores (_), or dashes (-).

=item *

Start and end with a letter or number.

=item *

Contain less than 64 characters.

=back



=head2 Recipients => ArrayRef[Str|Undef]

  The recipient domains and email addresses that the receipt rule applies
to. If this field is not specified, this rule will match all recipients
under all verified domains.


=head2 ScanEnabled => Bool

  If C<true>, then messages that this receipt rule applies to are scanned
for spam and viruses. The default value is C<false>.


=head2 TlsPolicy => Str

  Specifies whether Amazon SES should require that incoming email is
delivered over a connection encrypted with Transport Layer Security
(TLS). If this parameter is set to C<Require>, Amazon SES will bounce
emails that are not received over TLS. The default is C<Optional>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

