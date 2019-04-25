
package Paws::Lightsail::CreateLoadBalancer;
  use Moose;
  has CertificateAlternativeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'certificateAlternativeNames' );
  has CertificateDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateDomainName' );
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName' );
  has HealthCheckPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'healthCheckPath' );
  has InstancePort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'instancePort' , required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loadBalancerName' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

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
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLoadBalancer.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateLoadBalancerResult = $lightsail->CreateLoadBalancer(
      InstancePort                => 1,
      LoadBalancerName            => 'MyResourceName',
      CertificateAlternativeNames => [ 'MyDomainName', ... ],    # OPTIONAL
      CertificateDomainName       => 'MyDomainName',             # OPTIONAL
      CertificateName             => 'MyResourceName',           # OPTIONAL
      HealthCheckPath             => 'Mystring',                 # OPTIONAL
      Tags                        => [
        {
          Key   => 'MyTagKey',                                   # OPTIONAL
          Value => 'MyTagValue',                                 # OPTIONAL
        },
        ...
      ],                                                         # OPTIONAL
    );

    # Results:
    my $Operations = $CreateLoadBalancerResult->Operations;

    # Returns a L<Paws::Lightsail::CreateLoadBalancerResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateLoadBalancer>

=head1 ATTRIBUTES


=head2 CertificateAlternativeNames => ArrayRef[Str|Undef]

The optional alternative domains and subdomains to use with your
SSL/TLS certificate (e.g., C<www.example.com>, C<example.com>,
C<m.example.com>, C<blog.example.com>).



=head2 CertificateDomainName => Str

The domain name with which your certificate is associated (e.g.,
C<example.com>).

If you specify C<certificateDomainName>, then C<certificateName> is
required (and vice-versa).



=head2 CertificateName => Str

The name of the SSL/TLS certificate.

If you specify C<certificateName>, then C<certificateDomainName> is
required (and vice-versa).



=head2 HealthCheckPath => Str

The path you provided to perform the load balancer health check. If you
didn't specify a health check path, Lightsail uses the root path of
your website (e.g., C<"/">).

You may want to specify a custom health check path other than the root
of your application if your home page loads slowly or has a lot of
media or scripting on it.



=head2 B<REQUIRED> InstancePort => Int

The instance port where you're creating your load balancer.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of your load balancer.



=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the C<tag resource>
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLoadBalancer in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

