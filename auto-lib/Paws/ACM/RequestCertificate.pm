
package Paws::ACM::RequestCertificate;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has DomainValidationOptions => (is => 'ro', isa => 'ArrayRef[Paws::ACM::DomainValidationOption]');
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has SubjectAlternativeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACM::RequestCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::RequestCertificate - Arguments for method RequestCertificate on L<Paws::ACM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RequestCertificate on the 
AWS Certificate Manager service. Use the attributes of this class
as arguments to method RequestCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RequestCertificate.

As an example:

  $service_obj->RequestCertificate(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

Fully qualified domain name (FQDN), such as www.example.com, of the
site that you want to secure with an ACM Certificate. Use an asterisk
(*) to create a wildcard certificate that protects several sites in the
same domain. For example, *.example.com protects www.example.com,
site.example.com, and images.example.com.

The maximum length of a DNS name is 253 octets. The name is made up of
multiple labels separated by periods. No label can be longer than 63
octets. Consider the following examples:

C<(63 octets).(63 octets).(63 octets).(61 octets)> is legal because the
total length is 253 octets (63+1+63+1+63+1+61) and no label exceeds 63
octets.

C<(64 octets).(63 octets).(63 octets).(61 octets)> is not legal because
the total length exceeds 253 octets (64+1+63+1+63+1+61) and the first
label exceeds 63 octets.

C<(63 octets).(63 octets).(63 octets).(62 octets)> is not legal because
the total length of the DNS name (63+1+63+1+63+1+62) exceeds 253
octets.



=head2 DomainValidationOptions => ArrayRef[L<Paws::ACM::DomainValidationOption>]

The domain name that you want ACM to use to send you emails to validate
your ownership of the domain.



=head2 IdempotencyToken => Str

Customer chosen string that can be used to distinguish between calls to
C<RequestCertificate>. Idempotency tokens time out after one hour.
Therefore, if you call C<RequestCertificate> multiple times with the
same idempotency token within one hour, ACM recognizes that you are
requesting only one certificate and will issue only one. If you change
the idempotency token for each call, ACM recognizes that you are
requesting multiple certificates.



=head2 SubjectAlternativeNames => ArrayRef[Str|Undef]

Additional FQDNs to be included in the Subject Alternative Name
extension of the ACM Certificate. For example, add the name
www.example.net to a certificate for which the C<DomainName> field is
www.example.com if users can reach your site by using either name. The
maximum number of domain names that you can add to an ACM Certificate
is 100. However, the initial limit is 10 domain names. If you need more
than 10 names, you must request a limit increase. For more information,
see Limits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RequestCertificate in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

