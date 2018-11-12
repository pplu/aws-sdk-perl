
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

Paws::EC2::ModifySubnetAttribute - Arguments for method ModifySubnetAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifySubnetAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifySubnetAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifySubnetAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To change a subnet's public IP addressing behavior
    # This example modifies the specified subnet so that all instances launched
    # into this subnet are assigned a public IP address.
    $ec2->ModifySubnetAttribute(
      {
        'MapPublicIpOnLaunch' => {
          'Value' => 1
        },
        'SubnetId' => 'subnet-1a2b3c4d'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifySubnetAttribute>

=head1 ATTRIBUTES


=head2 AssignIpv6AddressOnCreation => L<Paws::EC2::AttributeBooleanValue>

Specify C<true> to indicate that network interfaces created in the
specified subnet should be assigned an IPv6 address. This includes a
network interface that's created when launching an instance into the
subnet (the instance therefore receives an IPv6 address).

If you enable the IPv6 addressing feature for your subnet, your network
interface or instance only receives an IPv6 address if it's created
using version C<2016-11-15> or later of the Amazon EC2 API.



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

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

