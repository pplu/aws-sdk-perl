package Paws::PinpointEmail::DkimAttributes;
  use Moose;
  has SigningEnabled => (is => 'ro', isa => 'Bool');
  has Status => (is => 'ro', isa => 'Str');
  has Tokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::DkimAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::DkimAttributes object:

  $service_obj->Method(Att1 => { SigningEnabled => $value, ..., Tokens => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::DkimAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->SigningEnabled

=head1 DESCRIPTION

An object that contains information about the DKIM configuration for an
email identity.

=head1 ATTRIBUTES


=head2 SigningEnabled => Bool

  If the value is C<true>, then the messages that Amazon Pinpoint sends
from the identity are DKIM-signed. If the value is C<false>, then the
messages that Amazon Pinpoint sends from the identity aren't
DKIM-signed.


=head2 Status => Str

  Describes whether or not Amazon Pinpoint has successfully located the
DKIM records in the DNS records for the domain. The status can be one
of the following:

=over

=item *

C<PENDING> E<ndash> Amazon Pinpoint hasn't yet located the DKIM records
in the DNS configuration for the domain, but will continue to attempt
to locate them.

=item *

C<SUCCESS> E<ndash> Amazon Pinpoint located the DKIM records in the DNS
configuration for the domain and determined that they're correct.
Amazon Pinpoint can now send DKIM-signed email from the identity.

=item *

C<FAILED> E<ndash> Amazon Pinpoint was unable to locate the DKIM
records in the DNS settings for the domain, and won't continue to
search for them.

=item *

C<TEMPORARY_FAILURE> E<ndash> A temporary issue occurred, which
prevented Amazon Pinpoint from determining the DKIM status for the
domain.

=item *

C<NOT_STARTED> E<ndash> Amazon Pinpoint hasn't yet started searching
for the DKIM records in the DKIM records for the domain.

=back



=head2 Tokens => ArrayRef[Str|Undef]

  A set of unique strings that you use to create a set of CNAME records
that you add to the DNS configuration for your domain. When Amazon
Pinpoint detects these records in the DNS configuration for your
domain, the DKIM authentication process is complete. Amazon Pinpoint
usually detects these records within about 72 hours of adding them to
the DNS configuration for your domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

