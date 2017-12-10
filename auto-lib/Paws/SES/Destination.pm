package Paws::SES::Destination;
  use Moose;
  has BccAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CcAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ToAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::Destination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::Destination object:

  $service_obj->Method(Att1 => { BccAddresses => $value, ..., ToAddresses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::Destination object:

  $result = $service_obj->Method(...);
  $result->Att1->BccAddresses

=head1 DESCRIPTION

Represents the destination of the message, consisting of To:, CC:, and
BCC: fields.

Amazon SES does not support the SMTPUTF8 extension, as described in
RFC6531 (https://tools.ietf.org/html/rfc6531). For this reason, the
I<local part> of a destination email address (the part of the email
address that precedes the @ sign) may only contain 7-bit ASCII
characters (https://en.wikipedia.org/wiki/Email_address#Local-part). If
the I<domain part> of an address (the part after the @ sign) contains
non-ASCII characters, they must be encoded using Punycode, as described
in RFC3492 (https://tools.ietf.org/html/rfc3492.html).

=head1 ATTRIBUTES


=head2 BccAddresses => ArrayRef[Str|Undef]

  The BCC: field(s) of the message.


=head2 CcAddresses => ArrayRef[Str|Undef]

  The CC: field(s) of the message.


=head2 ToAddresses => ArrayRef[Str|Undef]

  The To: field(s) of the message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

