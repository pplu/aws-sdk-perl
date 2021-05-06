
package Paws::Lightsail::GetLoadBalancerTlsCertificatesResult;
  use Moose;
  has TlsCertificates => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::LoadBalancerTlsCertificate]', traits => ['NameInRequest'], request_name => 'tlsCertificates' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetLoadBalancerTlsCertificatesResult

=head1 ATTRIBUTES


=head2 TlsCertificates => ArrayRef[L<Paws::Lightsail::LoadBalancerTlsCertificate>]

An array of LoadBalancerTlsCertificate objects describing your SSL/TLS
certificates.


=head2 _request_id => Str


=cut

1;