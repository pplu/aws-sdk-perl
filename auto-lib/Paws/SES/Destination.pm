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

By default, the string must be 7-bit ASCII. If the text must contain
any other characters, then you must use MIME encoded-word syntax (RFC
2047) instead of a literal string. MIME encoded-word syntax uses the
following form: C<=?charset?encoding?encoded-text?=>. For more
information, see RFC 2047 (https://tools.ietf.org/html/rfc2047).

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

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

