
package Paws::EC2::ModifySubnetAttribute;
  use Moose;
  has AssignIpv6AddressOnCreation => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has MapPublicIpOnLaunch => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subnetId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySubnetAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifySubnetAttribute - Arguments for method ModifySubnetAttribute on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifySubnetAttribute on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method ModifySubnetAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifySubnetAttribute.

As an example:

  $service_obj->ModifySubnetAttribute(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AssignIpv6AddressOnCreation => L<Paws::EC2::AttributeBooleanValue>

Specify C<true> to indicate that network interfaces created in the
specified subnet should be assigned an IPv6 address. This includes a
network interface that's created when launching an instance into the
subnet (the instance therefore receives an IPv6 address).



=head2 MapPublicIpOnLaunch => L<Paws::EC2::AttributeBooleanValue>

Specify C<true> to indicate that network interfaces created in the
specified subnet should be assigned a public IPv4 address. This
includes a network interface that's created when launching an instance
into the subnet (the instance therefore receives a public IPv4
address).



=head2 B<REQUIRED> SubnetId => Str

The ID of the subnet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifySubnetAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

