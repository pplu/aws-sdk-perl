package Paws::EC2::Subnet;
  use Moo;  use Types::Standard qw/Bool Str Int ArrayRef/;
  use Paws::EC2::Types qw/EC2_Tag EC2_SubnetIpv6CidrBlockAssociation/;
  has AssignIpv6AddressOnCreation => (is => 'ro', isa => Bool);
  has AvailabilityZone => (is => 'ro', isa => Str);
  has AvailabilityZoneId => (is => 'ro', isa => Str);
  has AvailableIpAddressCount => (is => 'ro', isa => Int);
  has CidrBlock => (is => 'ro', isa => Str);
  has DefaultForAz => (is => 'ro', isa => Bool);
  has Ipv6CidrBlockAssociationSet => (is => 'ro', isa => ArrayRef[EC2_SubnetIpv6CidrBlockAssociation]);
  has MapPublicIpOnLaunch => (is => 'ro', isa => Bool);
  has OwnerId => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has SubnetArn => (is => 'ro', isa => Str);
  has SubnetId => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Ipv6CidrBlockAssociationSet' => 'ipv6CidrBlockAssociationSet',
                       'AssignIpv6AddressOnCreation' => 'assignIpv6AddressOnCreation',
                       'State' => 'state',
                       'AvailabilityZone' => 'availabilityZone',
                       'DefaultForAz' => 'defaultForAz',
                       'SubnetArn' => 'subnetArn',
                       'MapPublicIpOnLaunch' => 'mapPublicIpOnLaunch',
                       'SubnetId' => 'subnetId',
                       'VpcId' => 'vpcId',
                       'AvailabilityZoneId' => 'availabilityZoneId',
                       'Tags' => 'tagSet',
                       'OwnerId' => 'ownerId',
                       'CidrBlock' => 'cidrBlock',
                       'AvailableIpAddressCount' => 'availableIpAddressCount'
                     },
  'types' => {
               'Ipv6CidrBlockAssociationSet' => {
                                                  'type' => 'ArrayRef[EC2_SubnetIpv6CidrBlockAssociation]',
                                                  'class' => 'Paws::EC2::SubnetIpv6CidrBlockAssociation'
                                                },
               'AssignIpv6AddressOnCreation' => {
                                                  'type' => 'Bool'
                                                },
               'State' => {
                            'type' => 'Str'
                          },
               'SubnetArn' => {
                                'type' => 'Str'
                              },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'DefaultForAz' => {
                                   'type' => 'Bool'
                                 },
               'MapPublicIpOnLaunch' => {
                                          'type' => 'Bool'
                                        },
               'VpcId' => {
                            'type' => 'Str'
                          },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'AvailabilityZoneId' => {
                                         'type' => 'Str'
                                       },
               'CidrBlock' => {
                                'type' => 'Str'
                              },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'AvailableIpAddressCount' => {
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

Paws::EC2::Subnet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Subnet object:

  $service_obj->Method(Att1 => { AssignIpv6AddressOnCreation => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Subnet object:

  $result = $service_obj->Method(...);
  $result->Att1->AssignIpv6AddressOnCreation

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssignIpv6AddressOnCreation => Bool

  Indicates whether a network interface created in this subnet (including
a network interface created by RunInstances) receives an IPv6 address.


=head2 AvailabilityZone => Str

  The Availability Zone of the subnet.


=head2 AvailabilityZoneId => Str

  The AZ ID of the subnet.


=head2 AvailableIpAddressCount => Int

  The number of unused private IPv4 addresses in the subnet. The IPv4
addresses for any stopped instances are considered unavailable.


=head2 CidrBlock => Str

  The IPv4 CIDR block assigned to the subnet.


=head2 DefaultForAz => Bool

  Indicates whether this is the default subnet for the Availability Zone.


=head2 Ipv6CidrBlockAssociationSet => ArrayRef[EC2_SubnetIpv6CidrBlockAssociation]

  Information about the IPv6 CIDR blocks associated with the subnet.


=head2 MapPublicIpOnLaunch => Bool

  Indicates whether instances launched in this subnet receive a public
IPv4 address.


=head2 OwnerId => Str

  The ID of the AWS account that owns the subnet.


=head2 State => Str

  The current state of the subnet.


=head2 SubnetArn => Str

  The Amazon Resource Name (ARN) of the subnet.


=head2 SubnetId => Str

  The ID of the subnet.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the subnet.


=head2 VpcId => Str

  The ID of the VPC the subnet is in.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
