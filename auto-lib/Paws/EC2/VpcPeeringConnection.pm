package Paws::EC2::VpcPeeringConnection;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_VpcPeeringConnectionStateReason EC2_Tag EC2_VpcPeeringConnectionVpcInfo/;
  has AccepterVpcInfo => (is => 'ro', isa => EC2_VpcPeeringConnectionVpcInfo);
  has ExpirationTime => (is => 'ro', isa => Str);
  has RequesterVpcInfo => (is => 'ro', isa => EC2_VpcPeeringConnectionVpcInfo);
  has Status => (is => 'ro', isa => EC2_VpcPeeringConnectionStateReason);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VpcPeeringConnectionId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcPeeringConnectionId' => {
                                             'type' => 'Str'
                                           },
               'ExpirationTime' => {
                                     'type' => 'Str'
                                   },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'Status' => {
                             'type' => 'EC2_VpcPeeringConnectionStateReason',
                             'class' => 'Paws::EC2::VpcPeeringConnectionStateReason'
                           },
               'RequesterVpcInfo' => {
                                       'type' => 'EC2_VpcPeeringConnectionVpcInfo',
                                       'class' => 'Paws::EC2::VpcPeeringConnectionVpcInfo'
                                     },
               'AccepterVpcInfo' => {
                                      'class' => 'Paws::EC2::VpcPeeringConnectionVpcInfo',
                                      'type' => 'EC2_VpcPeeringConnectionVpcInfo'
                                    }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'Tags' => 'tagSet',
                       'ExpirationTime' => 'expirationTime',
                       'VpcPeeringConnectionId' => 'vpcPeeringConnectionId',
                       'AccepterVpcInfo' => 'accepterVpcInfo',
                       'RequesterVpcInfo' => 'requesterVpcInfo'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcPeeringConnection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcPeeringConnection object:

  $service_obj->Method(Att1 => { AccepterVpcInfo => $value, ..., VpcPeeringConnectionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcPeeringConnection object:

  $result = $service_obj->Method(...);
  $result->Att1->AccepterVpcInfo

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AccepterVpcInfo => EC2_VpcPeeringConnectionVpcInfo

  Information about the accepter VPC. CIDR block information is only
returned when describing an active VPC peering connection.


=head2 ExpirationTime => Str

  The time that an unaccepted VPC peering connection will expire.


=head2 RequesterVpcInfo => EC2_VpcPeeringConnectionVpcInfo

  Information about the requester VPC. CIDR block information is only
returned when describing an active VPC peering connection.


=head2 Status => EC2_VpcPeeringConnectionStateReason

  The status of the VPC peering connection.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the resource.


=head2 VpcPeeringConnectionId => Str

  The ID of the VPC peering connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
