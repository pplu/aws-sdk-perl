
package Paws::Lightsail::AttachLoadBalancerTlsCertificateResult;
  use Moose;
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Operation]', traits => ['NameInRequest'], request_name => 'operations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AttachLoadBalancerTlsCertificateResult

=head1 ATTRIBUTES


=head2 Operations => ArrayRef[L<Paws::Lightsail::Operation>]

An array of objects that describe the result of the action, such as the
status of the request, the timestamp of the request, and the resources
affected by the request.

These SSL/TLS certificates are only usable by Lightsail load balancers.
You can't get the certificate and use it for another purpose.


=head2 _request_id => Str


=cut

1;