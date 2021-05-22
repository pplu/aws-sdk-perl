
package Paws::IoTWireless::GetServiceEndpointResponse;
  use Moose;
  has ServerTrust => (is => 'ro', isa => 'Str');
  has ServiceEndpoint => (is => 'ro', isa => 'Str');
  has ServiceType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetServiceEndpointResponse

=head1 ATTRIBUTES


=head2 ServerTrust => Str

The Root CA of the server trust certificate.


=head2 ServiceEndpoint => Str

The service endpoint value.


=head2 ServiceType => Str

The endpoint's service type.

Valid values are: C<"CUPS">, C<"LNS">
=head2 _request_id => Str


=cut

