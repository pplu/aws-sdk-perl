package Paws::EC2::NetworkInterface;
  use Moo;  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::EC2::Types qw/EC2_GroupIdentifier EC2_NetworkInterfaceAssociation EC2_NetworkInterfaceIpv6Address EC2_Tag EC2_NetworkInterfaceAttachment EC2_NetworkInterfacePrivateIpAddress/;
  has Association => (is => 'ro', isa => EC2_NetworkInterfaceAssociation);
  has Attachment => (is => 'ro', isa => EC2_NetworkInterfaceAttachment);
  has AvailabilityZone => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Groups => (is => 'ro', isa => ArrayRef[EC2_GroupIdentifier]);
  has InterfaceType => (is => 'ro', isa => Str);
  has Ipv6Addresses => (is => 'ro', isa => ArrayRef[EC2_NetworkInterfaceIpv6Address]);
  has MacAddress => (is => 'ro', isa => Str);
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has OwnerId => (is => 'ro', isa => Str);
  has PrivateDnsName => (is => 'ro', isa => Str);
  has PrivateIpAddress => (is => 'ro', isa => Str);
  has PrivateIpAddresses => (is => 'ro', isa => ArrayRef[EC2_NetworkInterfacePrivateIpAddress]);
  has RequesterId => (is => 'ro', isa => Str);
  has RequesterManaged => (is => 'ro', isa => Bool);
  has SourceDestCheck => (is => 'ro', isa => Bool);
  has Status => (is => 'ro', isa => Str);
  has SubnetId => (is => 'ro', isa => Str);
  has TagSet => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Ipv6Addresses' => {
                                    'class' => 'Paws::EC2::NetworkInterfaceIpv6Address',
                                    'type' => 'ArrayRef[EC2_NetworkInterfaceIpv6Address]'
                                  },
               'Groups' => {
                             'class' => 'Paws::EC2::GroupIdentifier',
                             'type' => 'ArrayRef[EC2_GroupIdentifier]'
                           },
               'RequesterManaged' => {
                                       'type' => 'Bool'
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
               'TagSet' => {
                             'class' => 'Paws::EC2::Tag',
                             'type' => 'ArrayRef[EC2_Tag]'
                           },
               'SourceDestCheck' => {
                                      'type' => 'Bool'
                                    },
               'PrivateIpAddresses' => {
                                         'class' => 'Paws::EC2::NetworkInterfacePrivateIpAddress',
                                         'type' => 'ArrayRef[EC2_NetworkInterfacePrivateIpAddress]'
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
               'RequesterId' => {
                                  'type' => 'Str'
                                },
               'Attachment' => {
                                 'class' => 'Paws::EC2::NetworkInterfaceAttachment',
                                 'type' => 'EC2_NetworkInterfaceAttachment'
                               },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'Association' => {
                                  'class' => 'Paws::EC2::NetworkInterfaceAssociation',
                                  'type' => 'EC2_NetworkInterfaceAssociation'
                                },
               'AvailabilityZone' => {
                                       'type' => 'Str'
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
                       'RequesterManaged' => 'requesterManaged',
                       'Status' => 'status',
                       'PrivateIpAddress' => 'privateIpAddress',
                       'VpcId' => 'vpcId',
                       'TagSet' => 'tagSet',
                       'SourceDestCheck' => 'sourceDestCheck',
                       'PrivateIpAddresses' => 'privateIpAddressesSet',
                       'InterfaceType' => 'interfaceType',
                       'MacAddress' => 'macAddress',
                       'PrivateDnsName' => 'privateDnsName',
                       'RequesterId' => 'requesterId',
                       'Attachment' => 'attachment',
                       'OwnerId' => 'ownerId',
                       'Association' => 'association',
                       'AvailabilityZone' => 'availabilityZone',
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

Paws::EC2::NetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkInterface object:

  $service_obj->Method(Att1 => { Association => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->Association

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Association => EC2_NetworkInterfaceAssociation

  The association information for an Elastic IP address (IPv4) associated
with the network interface.


=head2 Attachment => EC2_NetworkInterfaceAttachment

  The network interface attachment.


=head2 AvailabilityZone => Str

  The Availability Zone.


=head2 Description => Str

  A description.


=head2 Groups => ArrayRef[EC2_GroupIdentifier]

  Any security groups for the network interface.


=head2 InterfaceType => Str

  The type of network interface.


=head2 Ipv6Addresses => ArrayRef[EC2_NetworkInterfaceIpv6Address]

  The IPv6 addresses associated with the network interface.


=head2 MacAddress => Str

  The MAC address.


=head2 NetworkInterfaceId => Str

  The ID of the network interface.


=head2 OwnerId => Str

  The AWS account ID of the owner of the network interface.


=head2 PrivateDnsName => Str

  The private DNS name.


=head2 PrivateIpAddress => Str

  The IPv4 address of the network interface within the subnet.


=head2 PrivateIpAddresses => ArrayRef[EC2_NetworkInterfacePrivateIpAddress]

  The private IPv4 addresses associated with the network interface.


=head2 RequesterId => Str

  The ID of the entity that launched the instance on your behalf (for
example, AWS Management Console or Auto Scaling).


=head2 RequesterManaged => Bool

  Indicates whether the network interface is being managed by AWS.


=head2 SourceDestCheck => Bool

  Indicates whether traffic to or from the instance is validated.


=head2 Status => Str

  The status of the network interface.


=head2 SubnetId => Str

  The ID of the subnet.


=head2 TagSet => ArrayRef[EC2_Tag]

  Any tags assigned to the network interface.


=head2 VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
