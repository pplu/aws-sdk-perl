package Paws::EC2::VpcPeeringConnectionVpcInfo;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_CidrBlock EC2_VpcPeeringConnectionOptionsDescription EC2_Ipv6CidrBlock/;
  has CidrBlock => (is => 'ro', isa => Str);
  has CidrBlockSet => (is => 'ro', isa => ArrayRef[EC2_CidrBlock]);
  has Ipv6CidrBlockSet => (is => 'ro', isa => ArrayRef[EC2_Ipv6CidrBlock]);
  has OwnerId => (is => 'ro', isa => Str);
  has PeeringOptions => (is => 'ro', isa => EC2_VpcPeeringConnectionOptionsDescription);
  has Region => (is => 'ro', isa => Str);
  has VpcId => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcId' => {
                            'type' => 'Str'
                          },
               'Ipv6CidrBlockSet' => {
                                       'class' => 'Paws::EC2::Ipv6CidrBlock',
                                       'type' => 'ArrayRef[EC2_Ipv6CidrBlock]'
                                     },
               'CidrBlock' => {
                                'type' => 'Str'
                              },
               'CidrBlockSet' => {
                                   'class' => 'Paws::EC2::CidrBlock',
                                   'type' => 'ArrayRef[EC2_CidrBlock]'
                                 },
               'PeeringOptions' => {
                                     'class' => 'Paws::EC2::VpcPeeringConnectionOptionsDescription',
                                     'type' => 'EC2_VpcPeeringConnectionOptionsDescription'
                                   },
               'Region' => {
                             'type' => 'Str'
                           },
               'OwnerId' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'VpcId' => 'vpcId',
                       'Ipv6CidrBlockSet' => 'ipv6CidrBlockSet',
                       'CidrBlock' => 'cidrBlock',
                       'CidrBlockSet' => 'cidrBlockSet',
                       'PeeringOptions' => 'peeringOptions',
                       'Region' => 'region',
                       'OwnerId' => 'ownerId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcPeeringConnectionVpcInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcPeeringConnectionVpcInfo object:

  $service_obj->Method(Att1 => { CidrBlock => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcPeeringConnectionVpcInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrBlock

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CidrBlock => Str

  The IPv4 CIDR block for the VPC.


=head2 CidrBlockSet => ArrayRef[EC2_CidrBlock]

  Information about the IPv4 CIDR blocks for the VPC.


=head2 Ipv6CidrBlockSet => ArrayRef[EC2_Ipv6CidrBlock]

  The IPv6 CIDR block for the VPC.


=head2 OwnerId => Str

  The AWS account ID of the VPC owner.


=head2 PeeringOptions => EC2_VpcPeeringConnectionOptionsDescription

  Information about the VPC peering connection options for the accepter
or requester VPC.


=head2 Region => Str

  The Region in which the VPC is located.


=head2 VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
