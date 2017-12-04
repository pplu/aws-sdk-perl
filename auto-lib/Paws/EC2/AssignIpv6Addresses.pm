
package Paws::EC2::AssignIpv6Addresses;
  use Moose;
  has Ipv6AddressCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ipv6AddressCount' );
  has Ipv6Addresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ipv6Addresses' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkInterfaceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssignIpv6Addresses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AssignIpv6AddressesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssignIpv6Addresses - Arguments for method AssignIpv6Addresses on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssignIpv6Addresses on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method AssignIpv6Addresses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssignIpv6Addresses.

As an example:

  $service_obj->AssignIpv6Addresses(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Ipv6AddressCount => Int

The number of IPv6 addresses to assign to the network interface. Amazon
EC2 automatically selects the IPv6 addresses from the subnet range. You
can't use this option if specifying specific IPv6 addresses.



=head2 Ipv6Addresses => ArrayRef[Str|Undef]

One or more specific IPv6 addresses to be assigned to the network
interface. You can't use this option if you're specifying a number of
IPv6 addresses.



=head2 B<REQUIRED> NetworkInterfaceId => Str

The ID of the network interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssignIpv6Addresses in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

