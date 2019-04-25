
package Paws::WorkLink::DescribeDevicePolicyConfigurationResponse;
  use Moose;
  has DeviceCaCertificate => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DescribeDevicePolicyConfigurationResponse

=head1 ATTRIBUTES


=head2 DeviceCaCertificate => Str

The certificate chain, including intermediate certificates and the root
certificate authority certificate used to issue device certificates.


=head2 _request_id => Str


=cut

