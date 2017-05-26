
package Paws::Route53Domains::RegisterDomain;
  use Moose;
  has AdminContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);
  has AutoRenew => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has DurationInYears => (is => 'ro', isa => 'Int', required => 1);
  has IdnLangCode => (is => 'ro', isa => 'Str');
  has PrivacyProtectAdminContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectRegistrantContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectTechContact => (is => 'ro', isa => 'Bool');
  has RegistrantContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);
  has TechContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::RegisterDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::RegisterDomain - Arguments for method RegisterDomain on Paws::Route53Domains

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterDomain on the 
Amazon Route 53 Domains service. Use the attributes of this class
as arguments to method RegisterDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterDomain.

As an example:

  $service_obj->RegisterDomain(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.



=head2 AutoRenew => Bool

Indicates whether the domain will be automatically renewed (C<true>) or
not (C<false>). Autorenewal only takes effect after the account is
charged.

Default: C<true>



=head2 B<REQUIRED> DomainName => Str

The domain name that you want to register.

Constraints: The domain name can contain only the letters a through z,
the numbers 0 through 9, and hyphen (-). Internationalized Domain Names
are not supported.



=head2 B<REQUIRED> DurationInYears => Int

The number of years that you want to register the domain for. Domains
are registered for a minimum of one year. The maximum period depends on
the top-level domain. For the range of valid values for your domain,
see Domains that You Can Register with Amazon Route 53 in the I<Amazon
Route 53 Developer Guide>.

Default: 1



=head2 IdnLangCode => Str

Reserved for future use.



=head2 PrivacyProtectAdminContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries will return contact
information for our registrar partner, Gandi, instead of the contact
information that you enter.

Default: C<true>



=head2 PrivacyProtectRegistrantContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries will return contact
information for our registrar partner, Gandi, instead of the contact
information that you enter.

Default: C<true>



=head2 PrivacyProtectTechContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries will return contact
information for our registrar partner, Gandi, instead of the contact
information that you enter.

Default: C<true>



=head2 B<REQUIRED> RegistrantContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.



=head2 B<REQUIRED> TechContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterDomain in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

