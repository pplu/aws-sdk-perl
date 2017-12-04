
package Paws::Lightsail::CreateLoadBalancer;
  use Moose;
  has CertificateAlternativeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'certificateAlternativeNames' );
  has CertificateDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateDomainName' );
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName' );
  has HealthCheckPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'healthCheckPath' );
  has InstancePort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'instancePort' , required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loadBalancerName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateLoadBalancerResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateLoadBalancer - Arguments for method CreateLoadBalancer on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLoadBalancer on the 
Amazon Lightsail service. Use the attributes of this class
as arguments to method CreateLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLoadBalancer.

As an example:

  $service_obj->CreateLoadBalancer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CertificateAlternativeNames => ArrayRef[Str|Undef]

The alternative domain names to use with your TLS/SSL certificate
(e.g., C<www.example.com>, C<www.ejemplo.com>, C<ejemplo.com>).



=head2 CertificateDomainName => Str

The domain name with which your certificate is associated (e.g.,
C<example.com>).

If you specify C<certificateDomainName>, then C<certificateName> is
required (and vice-versa).



=head2 CertificateName => Str

The name of the TLS/SSL certificate.

If you specify C<certificateName>, then C<certificateDomainName> is
required (and vice-versa).



=head2 HealthCheckPath => Str

The path you provided to perform the load balancer health check. If you
didn't specify a health check path, Lightsail uses the root path of
your website (e.g., C<"/">).



=head2 B<REQUIRED> InstancePort => Int

The instance port where you're creating your load balancer.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of your load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLoadBalancer in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

