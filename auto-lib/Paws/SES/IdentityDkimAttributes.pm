package Paws::SES::IdentityDkimAttributes;
  use Moose;
  has DkimEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has DkimTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DkimVerificationStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::IdentityDkimAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::IdentityDkimAttributes object:

  $service_obj->Method(Att1 => { DkimEnabled => $value, ..., DkimVerificationStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::IdentityDkimAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->DkimEnabled

=head1 DESCRIPTION

Represents the DKIM attributes of a verified email address or a domain.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DkimEnabled => Bool

  True if DKIM signing is enabled for email sent from the identity; false
otherwise. The default value is true.


=head2 DkimTokens => ArrayRef[Str|Undef]

  A set of character strings that represent the domain's identity. Using
these tokens, you will need to create DNS CNAME records that point to
DKIM public keys hosted by Amazon SES. Amazon Web Services will
eventually detect that you have updated your DNS records; this
detection process may take up to 72 hours. Upon successful detection,
Amazon SES will be able to DKIM-sign email originating from that
domain. (This only applies to domain identities, not email address
identities.)

For more information about creating DNS records using DKIM tokens, go
to the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html).


=head2 B<REQUIRED> DkimVerificationStatus => Str

  Describes whether Amazon SES has successfully verified the DKIM DNS
records (tokens) published in the domain name's DNS. (This only applies
to domain identities, not email address identities.)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

