package Paws::SES::MessageDsn;
  use Moose;
  has ArrivalDate => (is => 'ro', isa => 'Str');
  has ExtensionFields => (is => 'ro', isa => 'ArrayRef[Paws::SES::ExtensionField]');
  has ReportingMta => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::MessageDsn

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::MessageDsn object:

  $service_obj->Method(Att1 => { ArrivalDate => $value, ..., ReportingMta => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::MessageDsn object:

  $result = $service_obj->Method(...);
  $result->Att1->ArrivalDate

=head1 DESCRIPTION

Message-related information to include in the Delivery Status
Notification (DSN) when an email that Amazon SES receives on your
behalf bounces.

For information about receiving email through Amazon SES, see the
Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html).

=head1 ATTRIBUTES


=head2 ArrivalDate => Str

  When the message was received by the reporting mail transfer agent
(MTA), in RFC 822 (https://www.ietf.org/rfc/rfc0822.txt) date-time
format.


=head2 ExtensionFields => ArrayRef[L<Paws::SES::ExtensionField>]

  Additional X-headers to include in the DSN.


=head2 B<REQUIRED> ReportingMta => Str

  The reporting MTA that attempted to deliver the message, formatted as
specified in RFC 3464 (https://tools.ietf.org/html/rfc3464)
(C<mta-name-type; mta-name>). The default value is C<dns;
inbound-smtp.[region].amazonaws.com>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

