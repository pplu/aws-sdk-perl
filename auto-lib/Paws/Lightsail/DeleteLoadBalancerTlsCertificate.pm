
package Paws::Lightsail::DeleteLoadBalancerTlsCertificate;
  use Moose;
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName' , required => 1);
  has Force => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'force' );
  has LoadBalancerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loadBalancerName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerTlsCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::DeleteLoadBalancerTlsCertificateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DeleteLoadBalancerTlsCertificate - Arguments for method DeleteLoadBalancerTlsCertificate on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLoadBalancerTlsCertificate on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DeleteLoadBalancerTlsCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLoadBalancerTlsCertificate.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DeleteLoadBalancerTlsCertificateResult =
      $lightsail->DeleteLoadBalancerTlsCertificate(
      CertificateName  => 'MyResourceName',
      LoadBalancerName => 'MyResourceName',
      Force            => 1,                  # OPTIONAL
      );

    # Results:
    my $Operations = $DeleteLoadBalancerTlsCertificateResult->Operations;

  # Returns a L<Paws::Lightsail::DeleteLoadBalancerTlsCertificateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DeleteLoadBalancerTlsCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateName => Str

The SSL/TLS certificate name.



=head2 Force => Bool

When C<true>, forces the deletion of an SSL/TLS certificate.

There can be two certificates associated with a Lightsail load
balancer: the primary and the backup. The C<force> parameter is
required when the primary SSL/TLS certificate is in use by an instance
attached to the load balancer.



=head2 B<REQUIRED> LoadBalancerName => Str

The load balancer name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLoadBalancerTlsCertificate in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

