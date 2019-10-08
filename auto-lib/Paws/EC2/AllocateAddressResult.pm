
package Paws::EC2::AllocateAddressResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has AllocationId => (is => 'ro', isa => Str);
  has Domain => (is => 'ro', isa => Str);
  has PublicIp => (is => 'ro', isa => Str);
  has PublicIpv4Pool => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'PublicIp' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PublicIpv4Pool' => {
                                     'type' => 'Str'
                                   },
               'Domain' => {
                             'type' => 'Str'
                           },
               'AllocationId' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'PublicIp' => 'publicIp',
                       'PublicIpv4Pool' => 'publicIpv4Pool',
                       'Domain' => 'domain',
                       'AllocationId' => 'allocationId'
                     }
}
;
      return $Params_map;
    }

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

