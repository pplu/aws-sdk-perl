
package Paws::ELB::SetLoadBalancerListenerSSLCertificate;
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has SSLCertificateId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerListenerSSLCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::SetLoadBalancerListenerSSLCertificateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerListenerSSLCertificateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::SetLoadBalancerListenerSSLCertificate - Arguments for method SetLoadBalancerListenerSSLCertificate on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetLoadBalancerListenerSSLCertificate on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method SetLoadBalancerListenerSSLCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetLoadBalancerListenerSSLCertificate.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To update the SSL certificate for an HTTPS listener
    # This example replaces the existing SSL certificate for the specified HTTPS
    # listener.
    my $SetLoadBalancerListenerSSLCertificateOutput =
      $elasticloadbalancing->SetLoadBalancerListenerSSLCertificate(
      {
        'LoadBalancerName' => 'my-load-balancer',
        'LoadBalancerPort' => 443,
        'SSLCertificateId' =>
          'arn:aws:iam::123456789012:server-certificate/new-server-cert'
      }
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/SetLoadBalancerListenerSSLCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.



=head2 B<REQUIRED> LoadBalancerPort => Int

The port that uses the specified SSL certificate.



=head2 B<REQUIRED> SSLCertificateId => Str

The Amazon Resource Name (ARN) of the SSL certificate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetLoadBalancerListenerSSLCertificate in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

