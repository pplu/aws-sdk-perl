# Generated from default/object.tt
package Paws::GuardDuty::NetworkInterface;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::GuardDuty::Types qw/GuardDuty_SecurityGroup GuardDuty_PrivateIpAddressDetails/;
  has Ipv6Addresses => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has PrivateDnsName => (is => 'ro', isa => Str);
  has PrivateIpAddress => (is => 'ro', isa => Str);
  has PrivateIpAddresses => (is => 'ro', isa => ArrayRef[GuardDuty_PrivateIpAddressDetails]);
  has PublicDnsName => (is => 'ro', isa => Str);
  has PublicIp => (is => 'ro', isa => Str);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[GuardDuty_SecurityGroup]);
  has SubnetId => (is => 'ro', isa => Str);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Ipv6Addresses' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'PrivateIpAddress' => {
                                       'type' => 'Str'
                                     },
               'VpcId' => {
                            'type' => 'Str'
                          },
               'PrivateIpAddresses' => {
                                         'class' => 'Paws::GuardDuty::PrivateIpAddressDetails',
                                         'type' => 'ArrayRef[GuardDuty_PrivateIpAddressDetails]'
                                       },
               'PublicIp' => {
                               'type' => 'Str'
                             },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'PrivateDnsName' => {
                                     'type' => 'Str'
                                   },
               'PublicDnsName' => {
                                    'type' => 'Str'
                                  },
               'SecurityGroups' => {
                                     'class' => 'Paws::GuardDuty::SecurityGroup',
                                     'type' => 'ArrayRef[GuardDuty_SecurityGroup]'
                                   }
             },
  'NameInRequest' => {
                       'Ipv6Addresses' => 'ipv6Addresses',
                       'PrivateIpAddress' => 'privateIpAddress',
                       'VpcId' => 'vpcId',
                       'PrivateIpAddresses' => 'privateIpAddresses',
                       'PublicIp' => 'publicIp',
                       'SubnetId' => 'subnetId',
                       'NetworkInterfaceId' => 'networkInterfaceId',
                       'PrivateDnsName' => 'privateDnsName',
                       'PublicDnsName' => 'publicDnsName',
                       'SecurityGroups' => 'securityGroups'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::NetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::NetworkInterface object:

  $service_obj->Method(Att1 => { Ipv6Addresses => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::NetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->Ipv6Addresses

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Ipv6Addresses => ArrayRef[Str|Undef]

  A list of EC2 instance IPv6 address information.


=head2 NetworkInterfaceId => Str

  The ID of the network interface


=head2 PrivateDnsName => Str

  Private DNS name of the EC2 instance.


=head2 PrivateIpAddress => Str

  Private IP address of the EC2 instance.


=head2 PrivateIpAddresses => ArrayRef[GuardDuty_PrivateIpAddressDetails]

  Other private IP address information of the EC2 instance.


=head2 PublicDnsName => Str

  Public DNS name of the EC2 instance.


=head2 PublicIp => Str

  Public IP address of the EC2 instance.


=head2 SecurityGroups => ArrayRef[GuardDuty_SecurityGroup]

  Security groups associated with the EC2 instance.


=head2 SubnetId => Str

  The subnet ID of the EC2 instance.


=head2 VpcId => Str

  The VPC ID of the EC2 instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

