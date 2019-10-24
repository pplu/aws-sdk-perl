package Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification;
  use Moo;  use Types::Standard qw/Bool Str Int ArrayRef Undef/;
  use Paws::EC2::Types qw/EC2_PrivateIpAddressSpecification EC2_InstanceIpv6Address/;
  has AssociatePublicIpAddress => (is => 'ro', isa => Bool);
  has DeleteOnTermination => (is => 'ro', isa => Bool);
  has Description => (is => 'ro', isa => Str);
  has DeviceIndex => (is => 'ro', isa => Int);
  has Groups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has InterfaceType => (is => 'ro', isa => Str);
  has Ipv6AddressCount => (is => 'ro', isa => Int);
  has Ipv6Addresses => (is => 'ro', isa => ArrayRef[EC2_InstanceIpv6Address]);
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has PrivateIpAddress => (is => 'ro', isa => Str);
  has PrivateIpAddresses => (is => 'ro', isa => ArrayRef[EC2_PrivateIpAddressSpecification]);
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => Int);
  has SubnetId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Ipv6Addresses' => {
                                    'class' => 'Paws::EC2::InstanceIpv6Address',
                                    'type' => 'ArrayRef[EC2_InstanceIpv6Address]'
                                  },
               'Groups' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'AssociatePublicIpAddress' => {
                                               'type' => 'Bool'
                                             },
               'SecondaryPrivateIpAddressCount' => {
                                                     'type' => 'Int'
                                                   },
               'DeviceIndex' => {
                                  'type' => 'Int'
                                },
               'PrivateIpAddress' => {
                                       'type' => 'Str'
                                     },
               'PrivateIpAddresses' => {
                                         'class' => 'Paws::EC2::PrivateIpAddressSpecification',
                                         'type' => 'ArrayRef[EC2_PrivateIpAddressSpecification]'
                                       },
               'InterfaceType' => {
                                    'type' => 'Str'
                                  },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'DeleteOnTermination' => {
                                          'type' => 'Bool'
                                        },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Ipv6AddressCount' => {
                                       'type' => 'Int'
                                     }
             },
  'NameInRequest' => {
                       'Ipv6Addresses' => 'ipv6AddressesSet',
                       'Groups' => 'groupSet',
                       'AssociatePublicIpAddress' => 'associatePublicIpAddress',
                       'SecondaryPrivateIpAddressCount' => 'secondaryPrivateIpAddressCount',
                       'DeviceIndex' => 'deviceIndex',
                       'PrivateIpAddress' => 'privateIpAddress',
                       'PrivateIpAddresses' => 'privateIpAddressesSet',
                       'InterfaceType' => 'interfaceType',
                       'SubnetId' => 'subnetId',
                       'NetworkInterfaceId' => 'networkInterfaceId',
                       'DeleteOnTermination' => 'deleteOnTermination',
                       'Description' => 'description',
                       'Ipv6AddressCount' => 'ipv6AddressCount'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification object:

  $service_obj->Method(Att1 => { AssociatePublicIpAddress => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateInstanceNetworkInterfaceSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatePublicIpAddress

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

  Indicates whether to associate a public IPv4 address with eth0 for a
new network interface.


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

  The type of network interface.


=head2 Ipv6AddressCount => Int

  The number of IPv6 addresses for the network interface.


=head2 Ipv6Addresses => ArrayRef[EC2_InstanceIpv6Address]

  The IPv6 addresses for the network interface.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 PrivateIpAddress => Str

  The primary private IPv4 address of the network interface.


=head2 PrivateIpAddresses => ArrayRef[EC2_PrivateIpAddressSpecification]

  One or more private IPv4 addresses.


=head2 SecondaryPrivateIpAddressCount => Int

  The number of secondary private IPv4 addresses for the network
interface.


=head2 SubnetId => Str

  The ID of the subnet for the network interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
