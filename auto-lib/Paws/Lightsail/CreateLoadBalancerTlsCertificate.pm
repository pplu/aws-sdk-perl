
package Paws::Lightsail::CreateLoadBalancerTlsCertificate;
  use Moose;
  has CertificateAlternativeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'certificateAlternativeNames' );
  has CertificateDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateDomainName' , required => 1);
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName' , required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loadBalancerName' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerTlsCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateLoadBalancerTlsCertificateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateLoadBalancerTlsCertificate - Arguments for method CreateLoadBalancerTlsCertificate on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLoadBalancerTlsCertificate on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateLoadBalancerTlsCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLoadBalancerTlsCertificate.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateLoadBalancerTlsCertificateResult =
      $lightsail->CreateLoadBalancerTlsCertificate(
      CertificateDomainName       => 'MyDomainName',
      CertificateName             => 'MyResourceName',
      LoadBalancerName            => 'MyResourceName',
      CertificateAlternativeNames => [ 'MyDomainName', ... ],    # OPTIONAL
      Tags                        => [
        {
          Key   => 'MyTagKey',                                   # OPTIONAL
          Value => 'MyTagValue',                                 # OPTIONAL
        },
        ...
      ],                                                         # OPTIONAL
      );

    # Results:
    my $Operations = $CreateLoadBalancerTlsCertificateResult->Operations;

  # Returns a L<Paws::Lightsail::CreateLoadBalancerTlsCertificateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateLoadBalancerTlsCertificate>

=head1 ATTRIBUTES


=head2 CertificateAlternativeNames => ArrayRef[Str|Undef]

An array of strings listing alternative domains and subdomains for your
SSL/TLS certificate. Lightsail will de-dupe the names for you. You can
have a maximum of 9 alternative names (in addition to the 1 primary
domain). We do not support wildcards (e.g., C<*.example.com>).



=head2 B<REQUIRED> CertificateDomainName => Str

The domain name (e.g., C<example.com>) for your SSL/TLS certificate.



=head2 B<REQUIRED> CertificateName => Str

The SSL/TLS certificate name.

You can have up to 10 certificates in your account at one time. Each
Lightsail load balancer can have up to 2 certificates associated with
it at one time. There is also an overall limit to the number of
certificates that can be issue in a 365-day period. For more
information, see Limits
(http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html).



=head2 B<REQUIRED> LoadBalancerName => Str

The load balancer name where you want to create the SSL/TLS
certificate.



=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the C<tag resource>
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLoadBalancerTlsCertificate in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

