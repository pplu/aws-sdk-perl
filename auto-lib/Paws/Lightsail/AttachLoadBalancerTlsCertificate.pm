
package Paws::Lightsail::AttachLoadBalancerTlsCertificate;
  use Moose;
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName' , required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loadBalancerName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancerTlsCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::AttachLoadBalancerTlsCertificateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AttachLoadBalancerTlsCertificate - Arguments for method AttachLoadBalancerTlsCertificate on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachLoadBalancerTlsCertificate on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method AttachLoadBalancerTlsCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachLoadBalancerTlsCertificate.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $AttachLoadBalancerTlsCertificateResult =
      $lightsail->AttachLoadBalancerTlsCertificate(
      CertificateName  => 'MyResourceName',
      LoadBalancerName => 'MyResourceName',

      );

    # Results:
    my $Operations = $AttachLoadBalancerTlsCertificateResult->Operations;

  # Returns a L<Paws::Lightsail::AttachLoadBalancerTlsCertificateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/AttachLoadBalancerTlsCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateName => Str

The name of your SSL/TLS certificate.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer to which you want to associate the
SSL/TLS certificate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachLoadBalancerTlsCertificate in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

