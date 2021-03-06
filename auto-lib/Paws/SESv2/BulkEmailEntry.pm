# Generated by default/object.tt
package Paws::SESv2::BulkEmailEntry;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::SESv2::Destination', required => 1);
  has ReplacementEmailContent => (is => 'ro', isa => 'Paws::SESv2::ReplacementEmailContent');
  has ReplacementTags => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::MessageTag]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::BulkEmailEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::BulkEmailEntry object:

  $service_obj->Method(Att1 => { Destination => $value, ..., ReplacementTags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::BulkEmailEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => L<Paws::SESv2::Destination>

Represents the destination of the message, consisting of To:, CC:, and
BCC: fields.

Amazon SES does not support the SMTPUTF8 extension, as described in
RFC6531 (https://tools.ietf.org/html/rfc6531). For this reason, the
local part of a destination email address (the part of the email
address that precedes the @ sign) may only contain 7-bit ASCII
characters (https://en.wikipedia.org/wiki/Email_address#Local-part). If
the domain part of an address (the part after the @ sign) contains
non-ASCII characters, they must be encoded using Punycode, as described
in RFC3492 (https://tools.ietf.org/html/rfc3492.html).


=head2 ReplacementEmailContent => L<Paws::SESv2::ReplacementEmailContent>

The C<ReplacementEmailContent> associated with a C<BulkEmailEntry>.


=head2 ReplacementTags => ArrayRef[L<Paws::SESv2::MessageTag>]

A list of tags, in the form of name/value pairs, to apply to an email
that you send using the C<SendBulkTemplatedEmail> operation. Tags
correspond to characteristics of the email that you define, so that you
can publish email sending events.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

