
package Paws::EC2::AssignPrivateIpAddresses;
  use Moose;
  has AllowReassignment => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'allowReassignment' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkInterfaceId' , required => 1);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'privateIpAddress' );
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'secondaryPrivateIpAddressCount' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssignPrivateIpAddresses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssignPrivateIpAddresses - Arguments for method AssignPrivateIpAddresses on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssignPrivateIpAddresses on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AssignPrivateIpAddresses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssignPrivateIpAddresses.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To assign a specific secondary private IP address to an interface
    # This example assigns the specified secondary private IP address to the
    # specified network interface.
    $ec2->AssignPrivateIpAddresses(
      {
        'NetworkInterfaceId' => 'eni-e5aa89a3',
        'PrivateIpAddresses' => ['10.0.0.82']
      }
    );

# To assign secondary private IP addresses that Amazon EC2 selects to an interface
# This example assigns two secondary private IP addresses to the specified
# network interface. Amazon EC2 automatically assigns these IP addresses from
# the available IP addresses in the CIDR block range of the subnet the
# network interface is associated with.
    $ec2->AssignPrivateIpAddresses(
      {
        'NetworkInterfaceId'             => 'eni-e5aa89a3',
        'SecondaryPrivateIpAddressCount' => 2
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AssignPrivateIpAddresses>

=head1 ATTRIBUTES


=head2 AllowReassignment => Bool

Indicates whether to allow an IP address that is already assigned to
another network interface or instance to be reassigned to the specified
network interface.



=head2 B<REQUIRED> NetworkInterfaceId => Str

The ID of the network interface.



=head2 PrivateIpAddresses => ArrayRef[Str|Undef]

One or more IP addresses to be assigned as a secondary private IP
address to the network interface. You can't specify this parameter when
also specifying a number of secondary IP addresses.

If you don't specify an IP address, Amazon EC2 automatically selects an
IP address within the subnet range.



=head2 SecondaryPrivateIpAddressCount => Int

The number of secondary IP addresses to assign to the network
interface. You can't specify this parameter when also specifying
private IP addresses.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssignPrivateIpAddresses in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

