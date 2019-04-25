
package Paws::Route53Domains::UpdateDomainContactPrivacy;
  use Moose;
  has AdminPrivacy => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RegistrantPrivacy => (is => 'ro', isa => 'Bool');
  has TechPrivacy => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainContactPrivacy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::UpdateDomainContactPrivacyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::UpdateDomainContactPrivacy - Arguments for method UpdateDomainContactPrivacy on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainContactPrivacy on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method UpdateDomainContactPrivacy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainContactPrivacy.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $UpdateDomainContactPrivacyResponse =
      $route53domains->UpdateDomainContactPrivacy(
      DomainName        => 'MyDomainName',
      AdminPrivacy      => 1,                # OPTIONAL
      RegistrantPrivacy => 1,                # OPTIONAL
      TechPrivacy       => 1,                # OPTIONAL
      );

    # Results:
    my $OperationId = $UpdateDomainContactPrivacyResponse->OperationId;

 # Returns a L<Paws::Route53Domains::UpdateDomainContactPrivacyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/UpdateDomainContactPrivacy>

=head1 ATTRIBUTES


=head2 AdminPrivacy => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar (for .com, .net, and .org
domains) or for our registrar associate, Gandi (for all other TLDs). If
you specify C<false>, WHOIS queries return the information that you
entered for the admin contact.



=head2 B<REQUIRED> DomainName => Str

The name of the domain that you want to update the privacy setting for.



=head2 RegistrantPrivacy => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar (for .com, .net, and .org
domains) or for our registrar associate, Gandi (for all other TLDs). If
you specify C<false>, WHOIS queries return the information that you
entered for the registrant contact (domain owner).



=head2 TechPrivacy => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar (for .com, .net, and .org
domains) or for our registrar associate, Gandi (for all other TLDs). If
you specify C<false>, WHOIS queries return the information that you
entered for the technical contact.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainContactPrivacy in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

