package Paws::EC2::InstanceNetworkInterface;
  use Moo;  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::EC2::Types qw/EC2_GroupIdentifier EC2_InstanceNetworkInterfaceAttachment EC2_InstanceIpv6Address EC2_InstanceNetworkInterfaceAssociation EC2_InstancePrivateIpAddress/;
  has Association => (is => 'ro', isa => EC2_InstanceNetworkInterfaceAssociation);
  has Attachment => (is => 'ro', isa => EC2_InstanceNetworkInterfaceAttachment);
  has Description => (is => 'ro', isa => Str);
  has Groups => (is => 'ro', isa => ArrayRef[EC2_GroupIdentifier]);
  has InterfaceType => (is => 'ro', isa => Str);
  has Ipv6Addresses => (is => 'ro', isa => ArrayRef[EC2_InstanceIpv6Address]);
  has MacAddress => (is => 'ro', isa => Str);
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has OwnerId => (is => 'ro', isa => Str);
  has PrivateDnsName => (is => 'ro', isa => Str);
  has PrivateIpAddress => (is => 'ro', isa => Str);
  has PrivateIpAddresses => (is => 'ro', isa => ArrayRef[EC2_InstancePrivateIpAddress]);
  has SourceDestCheck => (is => 'ro', isa => Bool);
  has Status => (is => 'ro', isa => Str);
  has SubnetId => (is => 'ro', isa => Str);
  has VpcId => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Ipv6Addresses' => {
                                    'class' => 'Paws::EC2::InstanceIpv6Address',
                                    'type' => 'ArrayRef[EC2_InstanceIpv6Address]'
                                  },
               'Groups' => {
                             'class' => 'Paws::EC2::GroupIdentifier',
                             'type' => 'ArrayRef[EC2_GroupIdentifier]'
                           },
               'Status' => {
                             'type' => 'Str'
                           },
               'PrivateIpAddress' => {
                                       'type' => 'Str'
                                     },
               'VpcId' => {
                            'type' => 'Str'
                          },
               'SourceDestCheck' => {
                                      'type' => 'Bool'
                                    },
               'PrivateIpAddresses' => {
                                         'class' => 'Paws::EC2::InstancePrivateIpAddress',
                                         'type' => 'ArrayRef[EC2_InstancePrivateIpAddress]'
                                       },
               'InterfaceType' => {
                                    'type' => 'Str'
                                  },
               'MacAddress' => {
                                 'type' => 'Str'
                               },
               'PrivateDnsName' => {
                                     'type' => 'Str'
                                   },
               'Attachment' => {
                                 'class' => 'Paws::EC2::InstanceNetworkInterfaceAttachment',
                                 'type' => 'EC2_InstanceNetworkInterfaceAttachment'
                               },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'Association' => {
                                  'class' => 'Paws::EC2::InstanceNetworkInterfaceAssociation',
                                  'type' => 'EC2_InstanceNetworkInterfaceAssociation'
                                },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Ipv6Addresses' => 'ipv6AddressesSet',
                       'Groups' => 'groupSet',
                       'Status' => 'status',
                       'PrivateIpAddress' => 'privateIpAddress',
                       'VpcId' => 'vpcId',
                       'SourceDestCheck' => 'sourceDestCheck',
                       'PrivateIpAddresses' => 'privateIpAddressesSet',
                       'InterfaceType' => 'interfaceType',
                       'MacAddress' => 'macAddress',
                       'PrivateDnsName' => 'privateDnsName',
                       'Attachment' => 'attachment',
                       'OwnerId' => 'ownerId',
                       'Association' => 'association',
                       'SubnetId' => 'subnetId',
                       'NetworkInterfaceId' => 'networkInterfaceId',
                       'Description' => 'description'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceNetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceNetworkInterface object:

  $service_obj->Method(Att1 => { Association => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceNetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->Association

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Association => EC2_InstanceNetworkInterfaceAssociation

  The association information for an Elastic IPv4 associated with the
network interface.


=head2 Attachment => EC2_InstanceNetworkInterfaceAttachment

  The network interface attachment.


=head2 Description => Str

  The description.


=head2 Groups => ArrayRef[EC2_GroupIdentifier]

  One or more security groups.


=head2 InterfaceType => Str

  Describes the type of network interface.

Valid values: C<interface> | C<efa>


=head2 Ipv6Addresses => ArrayRef[EC2_InstanceIpv6Address]

  One or more IPv6 addresses associated with the network interface.


=head2 MacAddress => Str

  The MAC address.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 OwnerId => Str

  The ID of the AWS account that created the network interface.


=head2 PrivateDnsName => Str

  The private DNS name.


=head2 PrivateIpAddress => Str

  The IPv4 address of the network interface within the subnet.


=head2 PrivateIpAddresses => ArrayRef[EC2_InstancePrivateIpAddress]

  One or more private IPv4 addresses associated with the network
interface.


=head2 SourceDestCheck => Bool

  Indicates whether to validate network traffic to or from this network
interface.


=head2 Status => Str

  The status of the network interface.


=head2 SubnetId => Str

  The ID of the subnet.


=head2 VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
