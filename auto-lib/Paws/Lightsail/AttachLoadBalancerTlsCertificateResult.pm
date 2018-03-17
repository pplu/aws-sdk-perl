
package Paws::Lightsail::AttachLoadBalancerTlsCertificateResult;
  use Moose;
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Operation]', traits => ['NameInRequest'], request_name => 'operations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AttachLoadBalancerTlsCertificateResult

=head1 ATTRIBUTES


=head2 Operations => ArrayRef[L<Paws::Lightsail::Operation>]

An object representing the API operations.

These SSL/TLS certificates are only usable by Lightsail load balancers.
You can't get the certificate and use it for another purpose.


=head2 _request_id => Str


=cut

1;