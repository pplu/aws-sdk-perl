package Paws::EC2::ScheduledInstancesNetworkInterface;
  use Moo;  use Types::Standard qw/Bool Str Int ArrayRef Undef/;
  use Paws::EC2::Types qw/EC2_ScheduledInstancesIpv6Address EC2_ScheduledInstancesPrivateIpAddressConfig/;
  has AssociatePublicIpAddress => (is => 'ro', isa => Bool);
  has DeleteOnTermination => (is => 'ro', isa => Bool);
  has Description => (is => 'ro', isa => Str);
  has DeviceIndex => (is => 'ro', isa => Int);
  has Groups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Ipv6AddressCount => (is => 'ro', isa => Int);
  has Ipv6Addresses => (is => 'ro', isa => ArrayRef[EC2_ScheduledInstancesIpv6Address]);
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has PrivateIpAddress => (is => 'ro', isa => Str);
  has PrivateIpAddressConfigs => (is => 'ro', isa => ArrayRef[EC2_ScheduledInstancesPrivateIpAddressConfig]);
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => Int);
  has SubnetId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Ipv6AddressCount' => {
                                       'type' => 'Int'
                                     },
               'SecondaryPrivateIpAddressCount' => {
                                                     'type' => 'Int'
                                                   },
               'DeviceIndex' => {
                                  'type' => 'Int'
                                },
               'Groups' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'PrivateIpAddressConfigs' => {
                                              'class' => 'Paws::EC2::ScheduledInstancesPrivateIpAddressConfig',
                                              'type' => 'ArrayRef[EC2_ScheduledInstancesPrivateIpAddressConfig]'
                                            },
               'AssociatePublicIpAddress' => {
                                               'type' => 'Bool'
                                             },
               'Ipv6Addresses' => {
                                    'class' => 'Paws::EC2::ScheduledInstancesIpv6Address',
                                    'type' => 'ArrayRef[EC2_ScheduledInstancesIpv6Address]'
                                  },
               'Description' => {
                                  'type' => 'Str'
                                },
               'PrivateIpAddress' => {
                                       'type' => 'Str'
                                     },
               'DeleteOnTermination' => {
                                          'type' => 'Bool'
                                        },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'Ipv6Addresses' => 'Ipv6Address',
                       'PrivateIpAddressConfigs' => 'PrivateIpAddressConfig',
                       'Groups' => 'Group'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ScheduledInstancesNetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ScheduledInstancesNetworkInterface object:

  $service_obj->Method(Att1 => { AssociatePublicIpAddress => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ScheduledInstancesNetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatePublicIpAddress

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

  Indicates whether to assign a public IPv4 address to instances launched
in a VPC. The public IPv4 address can only be assigned to a network
interface for eth0, and can only be assigned to a new network
interface, not an existing one. You cannot specify more than one
network interface in the request. If launching into a default subnet,
the default value is C<true>.


=head2 DeleteOnTermination => Bool

  Indicates whether to delete the interface when the instance is
terminated.


=head2 Description => Str

  The description.


=head2 DeviceIndex => Int

  The index of the device for the network interface attachment.


=head2 Groups => ArrayRef[Str|Undef]

  The IDs of the security groups.


=head2 Ipv6AddressCount => Int

  The number of IPv6 addresses to assign to the network interface. The
IPv6 addresses are automatically selected from the subnet range.


=head2 Ipv6Addresses => ArrayRef[EC2_ScheduledInstancesIpv6Address]

  The specific IPv6 addresses from the subnet range.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 PrivateIpAddress => Str

  The IPv4 address of the network interface within the subnet.


=head2 PrivateIpAddressConfigs => ArrayRef[EC2_ScheduledInstancesPrivateIpAddressConfig]

  The private IPv4 addresses.


=head2 SecondaryPrivateIpAddressCount => Int

  The number of secondary private IPv4 addresses.


=head2 SubnetId => Str

  The ID of the subnet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
