
package Paws::ELBv2::SetSubnetsOutput;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::AvailabilityZone]');
  has IpAddressType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetSubnetsOutput

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[L<Paws::ELBv2::AvailabilityZone>]

Information about the subnets.


=head2 IpAddressType => Str

[Network Load Balancers] The IP address type.

Valid values are: C<"ipv4">, C<"dualstack">
=head2 _request_id => Str


=cut

