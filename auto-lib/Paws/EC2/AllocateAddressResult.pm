
package Paws::EC2::AllocateAddressResult;
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str', request_name => 'allocationId', traits => ['NameInRequest',]);
  has Domain => (is => 'ro', isa => 'Str', request_name => 'domain', traits => ['NameInRequest',]);
  has PublicIp => (is => 'ro', isa => 'Str', request_name => 'publicIp', traits => ['NameInRequest',]);
  has PublicIpv4Pool => (is => 'ro', isa => 'Str', request_name => 'publicIpv4Pool', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AllocateAddressResult

=head1 ATTRIBUTES


=head2 AllocationId => Str

[EC2-VPC] The ID that AWS assigns to represent the allocation of the
Elastic IP address for use with instances in a VPC.


=head2 Domain => Str

Indicates whether this Elastic IP address is for use with instances in
EC2-Classic (C<standard>) or instances in a VPC (C<vpc>).

Valid values are: C<"vpc">, C<"standard">
=head2 PublicIp => Str

The Elastic IP address.


=head2 PublicIpv4Pool => Str

The ID of an address pool.


=head2 _request_id => Str


=cut

