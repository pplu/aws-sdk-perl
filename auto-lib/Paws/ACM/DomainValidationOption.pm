package Paws::ACM::DomainValidationOption;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ValidationDomain => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::DomainValidationOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACM::DomainValidationOption object:

  $service_obj->Method(Att1 => { DomainName => $value, ..., ValidationDomain => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACM::DomainValidationOption object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainName

=head1 DESCRIPTION

This structure is used in the request object of the RequestCertificate
action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

  Fully Qualified Domain Name (FQDN) of the certificate being requested.


=head2 B<REQUIRED> ValidationDomain => Str

  The domain to which validation email is sent. This is the base
validation domain that will act as the suffix of the email addresses.
This must be the same as the C<DomainName> value or a superdomain of
the C<DomainName> value. For example, if you requested a certificate
for C<site.subdomain.example.com> and specify a B<ValidationDomain> of
C<subdomain.example.com>, ACM sends email to the domain registrant,
technical contact, and administrative contact in WHOIS for the base
domain and the following five addresses:

=over

=item *

admin@subdomain.example.com

=item *

administrator@subdomain.example.com

=item *

hostmaster@subdomain.example.com

=item *

postmaster@subdomain.example.com

=item *

webmaster@subdomain.example.com

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

