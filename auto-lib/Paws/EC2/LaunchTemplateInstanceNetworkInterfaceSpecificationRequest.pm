package Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest;
  use Moo;  use Types::Standard qw/Bool Str Int Undef ArrayRef/;
  use Paws::EC2::Types qw/EC2_InstanceIpv6AddressRequest EC2_PrivateIpAddressSpecification/;
  has AssociatePublicIpAddress => (is => 'ro', isa => Bool);
  has DeleteOnTermination => (is => 'ro', isa => Bool);
  has Description => (is => 'ro', isa => Str);
  has DeviceIndex => (is => 'ro', isa => Int);
  has Groups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has InterfaceType => (is => 'ro', isa => Str);
  has Ipv6AddressCount => (is => 'ro', isa => Int);
  has Ipv6Addresses => (is => 'ro', isa => ArrayRef[EC2_InstanceIpv6AddressRequest]);
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has PrivateIpAddress => (is => 'ro', isa => Str);
  has PrivateIpAddresses => (is => 'ro', isa => ArrayRef[EC2_PrivateIpAddressSpecification]);
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => Int);
  has SubnetId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Groups' => 'SecurityGroupId'
                     },
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'PrivateIpAddress' => {
                                       'type' => 'Str'
                                     },
               'Ipv6Addresses' => {
                                    'type' => 'ArrayRef[EC2_InstanceIpv6AddressRequest]',
                                    'class' => 'Paws::EC2::InstanceIpv6AddressRequest'
                                  },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'DeleteOnTermination' => {
                                          'type' => 'Bool'
                                        },
               'SecondaryPrivateIpAddressCount' => {
                                                     'type' => 'Int'
                                                   },
               'Ipv6AddressCount' => {
                                       'type' => 'Int'
                                     },
               'InterfaceType' => {
                                    'type' => 'Str'
                                  },
               'AssociatePublicIpAddress' => {
                                               'type' => 'Bool'
                                             },
               'PrivateIpAddresses' => {
                                         'class' => 'Paws::EC2::PrivateIpAddressSpecification',
                                         'type' => 'ArrayRef[EC2_PrivateIpAddressSpecification]'
                                       },
               'Groups' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'DeviceIndex' => {
                                  'type' => 'Int'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest object:

  $service_obj->Method(Att1 => { AssociatePublicIpAddress => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecificationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatePublicIpAddress

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

  Associates a public IPv4 address with eth0 for a new network interface.


=head2 DeleteOnTermination => Bool

  Indicates whether the network interface is deleted when the instance is
terminated.


=head2 Description => Str

  A description for the network interface.


=head2 DeviceIndex => Int

  The device index for the network interface attachment.


=head2 Groups => ArrayRef[Str|Undef]

  The IDs of one or more security groups.


=head2 InterfaceType => Str

  The type of network interface. To create an Elastic Fabric Adapter
(EFA), specify C<efa>. For more information, see Elastic Fabric Adapter
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/efa.html) in the
I<Amazon Elastic Compute Cloud User Guide>.

If you are not creating an EFA, specify C<interface> or omit this
parameter.

Valid values: C<interface> | C<efa>


=head2 Ipv6AddressCount => Int

  The number of IPv6 addresses to assign to a network interface. Amazon
EC2 automatically selects the IPv6 addresses from the subnet range. You
can't use this option if specifying specific IPv6 addresses.


=head2 Ipv6Addresses => ArrayRef[EC2_InstanceIpv6AddressRequest]

  One or more specific IPv6 addresses from the IPv6 CIDR block range of
your subnet. You can't use this option if you're specifying a number of
IPv6 addresses.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 PrivateIpAddress => Str

  The primary private IPv4 address of the network interface.


=head2 PrivateIpAddresses => ArrayRef[EC2_PrivateIpAddressSpecification]

  One or more private IPv4 addresses.


=head2 SecondaryPrivateIpAddressCount => Int

  The number of secondary private IPv4 addresses to assign to a network
interface.


=head2 SubnetId => Str

  The ID of the subnet for the network interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
