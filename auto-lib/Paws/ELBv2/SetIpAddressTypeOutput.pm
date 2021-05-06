
package Paws::ELBv2::SetIpAddressTypeOutput;
  use Moose;
  has IpAddressType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetIpAddressTypeOutput

=head1 ATTRIBUTES


=head2 IpAddressType => Str

The IP address type.

Valid values are: C<"ipv4">, C<"dualstack">
=head2 _request_id => Str


=cut

