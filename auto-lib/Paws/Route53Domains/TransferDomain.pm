
package Paws::Route53Domains::TransferDomain;
  use Moose;
  has AdminContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);
  has AuthCode => (is => 'ro', isa => 'Str');
  has AutoRenew => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has DurationInYears => (is => 'ro', isa => 'Int', required => 1);
  has IdnLangCode => (is => 'ro', isa => 'Str');
  has Nameservers => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::Nameserver]');
  has PrivacyProtectAdminContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectRegistrantContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectTechContact => (is => 'ro', isa => 'Bool');
  has RegistrantContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);
  has TechContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TransferDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::TransferDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::TransferDomain - Arguments for method TransferDomain on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TransferDomain on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method TransferDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TransferDomain.

As an example:

  $service_obj->TransferDomain(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/TransferDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.



=head2 AuthCode => Str

The authorization code for the domain. You get this value from the
current registrar.



=head2 AutoRenew => Bool

Indicates whether the domain will be automatically renewed (true) or
not (false). Autorenewal only takes effect after the account is
charged.

Default: true



=head2 B<REQUIRED> DomainName => Str

The name of the domain that you want to transfer to Amazon Route 53.

Constraints: The domain name can contain only the letters a through z,
the numbers 0 through 9, and hyphen (-). Internationalized Domain Names
are not supported.



=head2 B<REQUIRED> DurationInYears => Int

The number of years that you want to register the domain for. Domains
are registered for a minimum of one year. The maximum period depends on
the top-level domain.

Default: 1



=head2 IdnLangCode => Str

Reserved for future use.



=head2 Nameservers => ArrayRef[L<Paws::Route53Domains::Nameserver>]

Contains details for the host and glue IP addresses.



=head2 PrivacyProtectAdminContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar (for .com, .net, and .org
domains) or for our registrar associate, Gandi (for all other TLDs). If
you specify C<false>, WHOIS queries return the information that you
entered for the admin contact.

Default: C<true>



=head2 PrivacyProtectRegistrantContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar (for .com, .net, and .org
domains) or for our registrar associate, Gandi (for all other TLDs). If
you specify C<false>, WHOIS queries return the information that you
entered for the registrant contact (domain owner).

Default: C<true>



=head2 PrivacyProtectTechContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar (for .com, .net, and .org
domains) or for our registrar associate, Gandi (for all other TLDs). If
you specify C<false>, WHOIS queries return the information that you
entered for the technical contact.

Default: C<true>



=head2 B<REQUIRED> RegistrantContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.



=head2 B<REQUIRED> TechContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TransferDomain in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

